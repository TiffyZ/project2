<style scoped>
.index {
  width: 100%;
  align-items: center;
  display: flex;
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  text-align: center;
  background-image: url(../images/login.jpg);
}
.index .ivu-row-flex {
  height: 100%;
}
#index_pc_bj {
  width: 100%;
  height: auto;
  background-size: cover;
  overflow: hidden;
  background-position: center center; /*box-shadow: 0 0px 3px rgba(0,0,0,.5);*/
  text-align: center;
}
/*具体内容*/
.wrap_conter ul {
  position: relative;
  width: 300px; /*border:5px solid rgba(255,255,255,0.3);*/
  border-radius: 5px;
  background: rgba(55,60,150,0.2);
  text-align: center;
  margin: 0 auto;
}
.wrap_conter li {
  text-align: center;
  color: #fff;
  font-size: 12px;
  line-height: 30px;
  padding: 0 25px 0px 25px;
  width: 100%;
}
.content {
  color: #1c2438;
  line-height: 40px;
  display: block;
  text-align: left;
  padding: 5px 0 0 0;
  margin: 0 80px 0 20px;
}
.pc-hign {
  height: 75px;
  display: inline-table;
}
.wrap_conter li dl {
  width: 100%;
  margin-top: 20px;
}
.name-password-error {
  padding-bottom: 2px;
  text-align: left;
  line-height: 1;
  color: #ed3f14;
}
.ivu-form-item-content .account-list {
  width: auto;
  padding-top: 10px;
}
.account-list li {
  width: auto;
  display: inline-block;
}

.account-list .icon {
  width: 35px;
  height: 40px;
}
</style>
<template>
    <div class="index">
        <div id="index_pc_bj">
            <Form ref="formLogin" :model="formLogin" :rules="ruleLogin">
                <div class="wrap_conter">
                    <ul style="list-style: none; box-shadow:1px 1px 20px rgba(0,0,0,.5);">
                        <li style="border-bottom: 1px solid #e9eaec;">
                            <div class="contenst">
                                <img src="../images/logo.png" style="width: 40px;height: 40px;" align="absmiddle" />
                                <span style="float:right;font-size: 15px">{{ $t("message.Welcome") }}</span>
                            </div>
                        </li>
                        <li>
                            <div class="name-password-error" v-if="this.$store.state.ifSign">{{ $t("message.WorryUsernameORPassword") }}</div>
                            <dl>
                                <FormItem prop="userName" >
                                    <Input v-model="formLogin.userName" type="text" :placeholder="$t('message.loginuser')" >
                                        <Icon type="ios-person-outline" slot="prepend" ></Icon>
                                    </Input>
                                </FormItem>
                                <FormItem prop="password">
                                    <Input v-model="formLogin.password" type="password" :placeholder="$t('message.Password')" >
                                    <Icon type="ios-lock-outline" slot="prepend"></Icon></Input>
                                </FormItem>
                                <!-- <FormItem>
                                    <Button type="primary" @click="login('formLogin')" style="width: 250px">登录</Button>
                                    <div style="width: 250px">
                                        <a href="https://github.com/login/oauth/authorize?client_id=bbb5cc2034eb62484c1c" style="{right: 26px;}">
                                            <Icon  style="color: rebeccapurple;" size="40" type="social-github"></Icon>
                                        </a>
                                    </div>
                                </FormItem> -->
                                <FormItem>
                                    <Button type="primary" @click="login('formLogin')" style="width: 250px ">{{ $t("message.login") }}</Button>
                                    <!--<Button type="primary" @click="register()" style="width: 250px ">注册</Button>-->
                                    <Button type="primary" @click="modal1 = true" style="width: 250px">{{ $t("message.register") }}</Button>
                                    <Modal
                                            v-model="modal1"
                                            :title="$t('message.register')"
                                            @on-ok="okEnroll('enroll')"
                                            @on-cancel="cancel">

                                        <Form ref="enroll" :rules="riRule" :model="enroll" :label-width="110">
                                            <FormItem :label="$t('message.loginuser')" prop="loginName">
                                                <Input v-model="enroll.loginName" :placeholder="$t('message.EnterUser')" />
                                            </FormItem>
                                            <FormItem :label="$t('message.Password')" prop="password">
                                                <Input v-model="enroll.password" type="password" :placeholder="$t('message.PleaseEnterPassword')" />
                                            </FormItem>
                                            <FormItem :label="$t('message.CheckPassword')"  prop="password2">
                                                <Input v-model="enroll.password2" type="password" :placeholder="$t('message.PleaseEnterPasswordAgain')"  />
                                            </FormItem>
                                            <FormItem :label="$t('message.name')" prop="name">
                                                <Input v-model="enroll.name" :placeholder="$t('message.PleaseEnterName')" />
                                            </FormItem>
                                            <!--<FormItem label="ID：" prop="id">-->
                                            <!--<Input v-model="enroll.id"  placeholder="请输入证件号" />-->
                                            <!--</FormItem>-->
                                            <FormItem :label="$t('message.Email')" prop="email">
                                                <Input v-model="enroll.email" :placeholder="$t('message.EnterEmailAddress')" />
                                            </FormItem>
                                            <FormItem :label="$t('message.Telphone')" prop="phone">
                                                <Input v-model="enroll.phone" :placeholder="$t('message.EnterTelNumber')" />
                                            </FormItem>
                                        </Form>
                                    </Modal>
                                    <ul class="account-list">
                                        <li>
                                            <!--<a href="https://github.com/login/oauth/authorize?client_id=bbb5cc2034eb62484c1c&state=github" style="{right: 26px;}">-->
                                                <!--&lt;!&ndash; <Icon  style="color: rebeccapurple;" size="40" type="social-github"></Icon> &ndash;&gt;-->
                                                <!--<img class="icon" src="../images/GitHub.svg" />-->
                                            <!--</a>-->
                                        <!--</li>-->
                                        <!---->
                                        <!--<li>-->
                                            <!--<a href="https://graph.qq.com/oauth2.0/authorize?response_type=code&client_id=101512648&redirect_uri=http://www.lovemtt.com/qq&state=qq" style="{right: 26px;}">-->
                                                <!--<img class="icon" src="../images/social-qq.svg" />  -->
                                            <!--</a>-->
                                        </li>
                                    </ul>
                                </FormItem>
                            </dl>
                        </li>
                    </ul>
                </div>
            </Form>
        </div>
    </div>
</template>
<script>
export default {
  data() {
      var validatePass = (rule, value, callback) => {

          if (value === '') {

              callback(new Error(this.$t("message.PleaseEnterPassword")));

          } else {

              if (this.enroll.password !== '') {

                  this.$refs.enroll;

              }

              callback();

          }

      };

      var validatePass2 = (rule, value, callback) => {

          if (value === '') {

              callback(new Error(this.$t("message.PleaseEnterPasswordAgain")));

          } else if (value !== this.enroll.password) {

              callback(new Error(this.$t("message.PasswordDifferent")));

          } else {

              callback();

          }

      };

      return {
      code: null,
          modal1: false,


      formLogin: {
        userName: null,
        password: null
      },
          enroll: {
              name: "",
              loginName: "",
              password: null,
              password2: null,
              email: "",
              // id: "",
              phone: "",
              usertype:0,
          },
      ruleLogin: {
        userName: [
          { required: true, message: this.$t("message.loginuser"), trigger: "blur" }
        ],
        password: [{ required: true, message: this.$t("message.Password"), trigger: "blur" }]
      },
          riRule: {
              name: [
                  {
                      type: "string",
                      required: true,
                      message: this.$t("message.PleaseEnterName"),
                      trigger: "blur"
                  }
              ],
              phone: [
                  {
                      type: "string",
                      required: true,
                      message: this.$t("message.EnterTelNumber"),
                      trigger: "blur"
                  }
              ],

              email: [
                  { required: true, message: this.$t("message.EnterEmailAddress"), trigger: "blur" },
                  { type: "email", message: this.$t("message.PleaseEnterRightEmailFormat"), trigger: "blur" }
              ],
              userName: [
                  { required: true, message: this.$t("message.EnterUser"), trigger: "blur" }
              ],
              // password: [{ required: true, message: "请填写密码", trigger: "blur" }],
              password: [{ required: true, message: this.$t("message.PleaseEnterPassword"), validator: validatePass,trigger: "blur" }],
              password2: [{ required: true,  validator: validatePass2,trigger: "blur" }]
          },

    };
  },
  mounted() {
    if (!this.$store.getters._isMobile) {
      this.$router.replace("/login");
    }
  },
  methods: {
      okEnroll (enroll) {
          this.$refs[enroll].validate(valid => {
              if (valid) {
                  this.axios({
                      method: "post",
                      url: "/register",
                      data: this.enroll
                  })
                      .then(
                          function (response) {
                              this.$Message.info(this.$t("message.SendSuccess")+"["+this.enroll.loginName + "]");
                          }.bind(this)
                      )
                      .catch(function (error) {
                          alert(error);
                      });
                  this.modal1 = false;
              } else {
                  this.$Message.error(this.$t("message.ValidationFailed"));
              };
          });
          // this.user1.userID = this.enroll.id;
          //
          // this.$refs[user1].validate(valid => {
          //     if (valid) {
          //
          //         this.axios({
          //             method: "post",
          //             url: "/relations",
          //             data: this.user1
          //         })
          //             .then(
          //                 function (response) {
          //                     this.$Message.info("发送成功[" + this.user1.userID + "]");
          //                 }.bind(this)
          //             )
          //             .catch(function (error) {
          //                 alert(error);
          //             });
          //
          //     } else {
          //         this.$Message.error("表单验证失败!");
          //     };
          // });


      },
      cancel () {
          this.$Message.info('Clicked cancel');
      },
    login(formLogin) {
      this.$refs[formLogin].validate(valid => {
        if (valid) {
          this.$store.dispatch("users/userLogin", {
            user_name: this.formLogin.userName,
            user_password: this.formLogin.password,
            router: this.$router
          });
        }
      });
    },
    register() {
      this.$router.push({ path: "/register" });
    }
  }
};
</script>s
