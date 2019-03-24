<template>
    <div class="login-container" style="background-image: url(../../../static/img/back.JPG);margin: 0px;overflow: hidden;">
        <div id="canvascontainer" ref='can'></div>
        <div class="head" style="text-align: center;font-size: 96px">Hibernia Sino</div>
        <div class="head" style="text-align: center;margin-top: 120px">Travel insurance company</div>
    <Form ref="loginForm" autoComplete="on" :model="loginForm" :rules="loginRules"  class="card-box login-form">

        <Form-item prop="email">
            <Input type="text" v-model="loginForm.email" placeholder="Username" autoComplete="on">
                <Icon type="ios-person-outline" slot="prepend" ></Icon>
            </Input>
        </Form-item>
        <Form-item prop="password">
            <Input type="password" v-model="loginForm.password" placeholder="Password" @keyup.enter.native="handleLogin">
                <Icon type="ios-locked-outline" slot="prepend"></Icon>
            </Input>
        </Form-item>

        <Form-item>
            <Button type="primary" @click="handleLogin('loginForm')" long>Log-in</Button>
        </Form-item>
        <Form-item>
            <Button type="primary" @click="jump('loginForm')" long>Visitor-Entrance</Button>
        </Form-item>
        <!--<div class='tips'>admin account:admin@wz.com passport:123456</div>-->
            <!--<div class='tips'>editor account:editor@wz.com passport :123456</div>-->
           </Form>

    </div>
</template>

<script>
    import { isWscnEmail } from 'utils/validate';

    export default {
      name: 'login',

      data() {
        const validateEmail = (rule, value, callback) => {
          if (!isWscnEmail(value)) {
            callback(new Error('Please enter the correct legal mailboxPlease enter the correct legal mailbox'));
          } else {
            callback();
          }
        };
        const validatePass = (rule, value, callback) => {
          if (value.length < 6) {
            callback(new Error('Password must not be less than 6 bits'));
          } else {
            callback();
          }
        };
        return {
          loginForm: {
            email: 'admin@wz.com',
            password: ''
          },
          loginRules: {
            email: [
                { required: true, trigger: 'blur', validator: validateEmail }
            ],
            password: [
                { required: true, trigger: 'blur', validator: validatePass }
            ]
          },
          loading: false,
          showDialog: false
        }
      },
       mounted () {
        container = document.createElement( 'div' );
   this.$refs.can.appendChild( container );

animate();
       },
      methods: {
        handleLogin() {
          this.$refs.loginForm.validate(valid => {
            if (valid) {
              this.loading = true;
              this.$store.dispatch('LoginByEmail', this.loginForm).then(() => {
                this.$Message.success('登录成功');
                
                this.loading = false;
                this.$router.push({ path: '/' });
              }).catch(err => {
                this.$message.error(err);
                this.loading = false;
              });
            } else {
              console.log('error submit!!');
              return false;
            }
          });
        },
        jump() {
            this.$router.push({path: '/dashboard'})
        }
      },
    }



function animate() {

  requestAnimationFrame( animate );

  render();


}

</script>
<style>
.login-container a{color:#0078de;}
#canvascontainer{
  position: absolute;
  top: 0px;
}

</style>

<style rel="stylesheet/scss" lang="scss">
     .tips{
      font-size: 14px;
      color: #fff;
      margin-bottom: 5px;
    } 
    .login-container {
        height: 100vh;
        background-color: #2d3a4b;

        input:-webkit-autofill {
            -webkit-box-shadow: 0 0 0px 1000px #293444 inset !important;
            -webkit-text-fill-color: #fff !important;
        }
        input {
            background: transparent;
            border: 1px solid rgba(0, 9, 119, 0.99);
            -webkit-appearance: none;
            border-radius: 3px;
            padding: 12px 5px 12px 15px;
            color: #eeeeee;
            height: 47px;
        }
        .el-input {
            display: inline-block;
            height: 47px;
            width: 85%;
        }
        .svg-container {
            padding: 6px 5px 6px 15px;
            color: #889aa4;
        }

        .title {
            font-size: 26px;
            font-weight: 400;
            color: #eeeeee;
            margin: 0px auto 40px auto;
            text-align: center;
            font-weight: bold;
        }

        .head {
            position: absolute;
            font-family: Cursive;
            left: 0;
            right: 0;
            width: 1000px;
            font-size: 64px;
            font-weight: 900;
            color: white;
            margin-top:20px;
            margin-left:auto;
            margin-right:auto;
        }

        .login-form {
            position: absolute;
            left: 0;
            right: 0;
            width: 400px;
            padding: 35px 35px 15px 35px;
            margin: 250px auto;
        }


        .el-form-item {
            border: 1px solid rgba(255, 255, 255, 0.1);
            background: rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            color: #454545;
        }

        .forget-pwd {
            color: #fff;
        }
    }

</style>
