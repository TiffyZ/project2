<style scoped>
.mobild-layout {
  border: 1px solid #d7dde4;
  background: #f5f7f9;
  position: relative;
  border-radius: 4px;
  overflow: hidden;
}
.layout-title .home-text{
    color: rebeccapurple;
    font-weight: bold;
}
.layout-title .home-text:hover{
    color: #2d8cf0;
}
.mobild-layout .layout-logo {
  /*width: 100px;*/
  /*height: 30px;*/
  /*background: #5b6270;*/
  /*border-radius: 3px;*/
  float: left;
  /*position: relative;*/
  /*top: 15px;
        left: 20px;*/
  margin-top: 7px;
}
.mobild-layout .layout-search {
  height: 30px;
  border-radius: 3px;
  float: left;
  position: relative;
  left: 80px;
}
.mobild-layout .layout-nav {
  /*width: 315px;
        margin: 0 auto;
        margin-right: 20px;*/
  height: inherit;
  float: right;
  font-size: 15px;
  margin-right: 5%;
}
.dropdown-menu {
  text-align: center;
}
.mobild-layout .layout-nav span {
  font-size: 15px;
  color: #c92027;
}
.mobild-layout .layout-footer-center {
  text-align: center;
}
.mobild-layout .demo-spin-icon-load {
  animation: ani-demo-spin 1s linear infinite;
}

.avatar-badge-wrapper {
  position: relative;
  cursor: pointer;
}

.avatar-badge-wrapper .msg-num {
  position: absolute;
  top: 9px;
  right: -12px;
  color: #fff !important;
  background-color: #2db7f5;
  border-radius: 50%;
  padding: 2px 5px;
  line-height: 1;
}

@keyframes ani-demo-spin {
  from {
    transform: rotate(0deg);
  }
  50% {
    transform: rotate(180deg);
  }
  to {
    transform: rotate(360deg);
  }
}
.layout-title {
  font-size: 20px;
  font-weight: 400;
  position: relative;
  top: 50%;
  transform: translateY(-50%);
  color: rebeccapurple;
  left: 41%;
}
</style>
<template>
    <div class="mobild-layout">
    	<Layout>
            <Header style="position: fixed;width: 100%;background:#fff;padding:0 0;z-index: 1000; line-height:0;">
            	<div style="width: 95%;margin: 0 auto">
                    <div class="layout-logo">
                        <a @click="backHome()">
                            <img src="../../images/logo.png" style="width: 50px;height: 50px;" align="absmiddle" />
                        </a>
                    </div>
                    <!-- <div style="height: 64px;float: left;">
                        <span class="layout-title">interest</span>
                    </div> -->
                    <Dropdown v-if="loginFlag" trigger="click" class="layout-nav" @on-click="m=>{dropdownClick(m)}">
                        <div  type="success" class="avatar-badge-wrapper">

                            <img style="width: 40px;height: 40px; margin-top: 12px;border-radius: 100%;" :src="user.headimg" />

                            <span v-if="unreadMsgCount > 0"  class="msg-num">{{unreadMsgCount}}</span>

                        </div>

                        <DropdownMenu class="dropdown-menu" slot="list">
                        	<DropdownItem name="name">
                            	<Icon type="ios-person"></Icon>
                               	{{user.name}}
                            </DropdownItem>
                            <DropdownItem name="email" divided>
                            	<Icon type="ios-mail"></Icon>
                                {{ $t("message.SubmitApplication") }}
                            </DropdownItem>

                            <DropdownItem name="article" divided>
                                <Icon type="ios-mail"></Icon>
                                {{ $t("message.MyInsurance") }}
                            </DropdownItem>

                    <!--<MenuItem name="article">-->
                            <!--<span class="home-text">-->
                              <!--表单列表-->
                            <!--</span>-->
                    <!--</MenuItem>-->

                            <DropdownItem name="messages" divided>
                                <Icon type="md-chatboxes"></Icon>
                                {{ $t("message.Message") }}
                            </DropdownItem>

                            <DropdownItem name="language" divided>
                                {{ $t('message.ChangeLanguage') }}
                            </DropdownItem>

                            <DropdownItem name="loginOut" divided>
                            	<Icon type="md-log-out"></Icon>
                                {{ $t("message.exit") }}
                            </DropdownItem>


                        </DropdownMenu>
                    </Dropdown>
                    <div v-if="!loginFlag" class="layout-nav" style="margin-top: 14px;">
                        <Button shape="circle" @click="toLogin()">
                        	<span>{{ $t("message.login") }}</span>
                        </Button>
                    </div>
                </div>
            </Header>
            <Content :style="{margin: '80px 0 0 0', background: '#fff'}">
                <router-view></router-view>
            </Content>
            <Footer class="layout-footer-center">
                <!--<div>-->
                    <!--<a href="https://github.com/smallsnail-wh" target="_blank">-->
                        <!--<Icon  style="color: rebeccapurple;" size="40" type="logo-github"></Icon>-->
                    <!--</a>-->
                <!--</div>-->
                <p>2016-2020 &copy; Hibernia-Sino Travel Insurance Company</p>
            </Footer>
        </Layout>

        <Modal :mask-closable="false" :visible.sync="emailModal" :loading = "loading" v-model="emailModal" :title="$t('message.ContactWithAdmin')" @on-ok="emailOk('email')" @on-cancel="cancel()">
             <Form ref="email" :rules="emailRule" :model="email"  :label-width="80" >
                <!--<FormItem label="标题" prop="title">-->
                    <!--<Input v-model="email.title" placeholder="请输入标题" />-->
                <!--</FormItem>-->
                <!--<FormItem label="email" prop="email">-->
                    <!--<Input v-model="email.email" placeholder="请输入email" />-->
                <!--</FormItem>-->
                <!--<FormItem label="姓名" prop="name">-->
                    <!--<Input v-model="email.name" placeholder="请输入姓名" />-->
                <!--</FormItem>-->
                <!--<FormItem label="内容" prop="content">-->
                    <!--<Input v-model="email.content" type="textarea" :autosize="{minRows: 2,maxRows: 5}" placeholder="Enter something..." />-->
                <!--</FormItem>-->
                 <FormItem :label="$t('message.InsuranceType')">
                     <!--<Select v-model="formType" filterable style="width: 200px" @on-change="e=>{selectChange(e)}">-->
                     <!--<Option v-for="item in insuranceList" :value="item.value" :key="item.value">{{ item.label }}</Option>-->
                     <!--</Select>-->
                     <Select v-model="email.formType" style="width:200px">
                         <Option  :value="1">{{ $t("message.BaggageInsurance") }}</Option>
                         <Option  :value="2">{{ $t("message.BaggageInsurancePlus") }}</Option>
                         <Option  :value="3">{{ $t("message.OnTimeInsurance") }}</Option>
                         <Option  :value="4">{{ $t("message.SafetyInsurance") }}</Option>
                         <Option  :value="5">{{ $t("message.ChildInsurance") }}</Option>
                     </Select>
                 </FormItem>
                 <FormItem :label="$t('message.InsuredName')" prop="name">
                     <Input v-model="email.name" :placeholder="$t('message.EnterInsuredName')" />
                 </FormItem>
                 <!--<FormItem label="被保险人ID" prop="id">-->
                 <!--<Input v-model="email.id" placeholder="请输入被保险人id" />-->
                 <!--</FormItem>-->
                 <FormItem :label="$t('message.MailboxOfInsured')" prop="email">
                     <Input v-model="email.email" :placeholder="$t('message.EnterMailboxOfInsured')"/>
                 </FormItem>
                 <FormItem :label="$t('message.DeclaringInformation')" prop="title">
                     <Input v-model="email.title" :placeholder="$t('message.EnterDeclaringInformation')" />
                 </FormItem>
                 <Form-item :label="$t('message.PictureProof')" prop="image"  >
                     <Upload
                             ref="upload"
                             :headers="headers"
                             action="/interest/interest/upload/picture"
                             name="picture"
                             :show-upload-list="true"
                             :before-upload="handleBeforeUpload"
                             :on-success="handleSuccess"
                             :on-format-error="handleFormatError"
                             :format="['jpg','jpeg','png']"
                     >
                         <Button icon="ios-cloud-upload-outline"   >{{ $t("message.UploadPic") }}</Button>
                     </Upload>
                 </Form-item>
                 <Form-item>
                     <img v-if="email.image != null" :src="email.image" style="width: 300px;height: 200px">
                 </Form-item>
                 <FormItem :label="$t('message.ProblemDetails')" prop="content">
                     <Input v-model="email.content" type="textarea" :autosize="{minRows: 2,maxRows: 5}"placeholder="Enter something..." />
                 </FormItem>
            </Form>
        </Modal>
        <Modal :mask-closable="false" :visible.sync="emailModal" :loading="loading" v-model="emailModal" width="600"
               :title="$t('message.createNewPolicy')" @on-ok="emailOk('email')" @on-cancel="cancel()">
            <Form ref="email" :rules="emailRule" :model="email" :label-width="110">
                <FormItem :label="$t('message.InsuranceType')">
                    <!--<Select v-model="formType" filterable style="width: 200px" @on-change="e=>{selectChange(e)}">-->
                    <!--<Option v-for="item in insuranceList" :value="item.value" :key="item.value">{{ item.label }}</Option>-->
                    <!--</Select>-->
                    <Select v-model="email.formType" style="width:200px">
                        <Option  :value="1">{{ $t("message.BaggageInsurance") }}</Option>
                        <Option  :value="2">{{ $t("message.BaggageInsurancePlus") }}</Option>
                        <Option  :value="3">{{ $t("message.OnTimeInsurance") }}</Option>
                        <Option  :value="4">{{ $t("message.SafetyInsurance") }}</Option>
                        <Option  :value="5">{{ $t("message.ChildInsurance") }}</Option>
                    </Select>
                </FormItem>
                <FormItem :label="$t('message.InsuredName')" prop="name">
                    <Input v-model="email.name" :placeholder="$t('message.EnterInsuredName')" />
                </FormItem>
                <!--<FormItem label="被保险人ID" prop="id">-->
                <!--<Input v-model="email.id" placeholder="请输入被保险人id" />-->
                <!--</FormItem>-->
                <FormItem :label="$t('message.MailboxOfInsured')" prop="email">
                    <Input v-model="email.email" :placeholder="$t('message.EnterMailboxOfInsured')" />
                </FormItem>
                <FormItem :label="$t('message.DeclaringInformation')" prop="title">
                    <Input v-model="email.title" :placeholder="$t('message.EnterDeclaringInformation')" />
                </FormItem>
                <Form-item :label="$t('message.PictureProof')" prop="image"  >
                    <Upload
                            ref="upload"
                            :headers="headers"
                            action="/interest/interest/upload/picture"
                            name="picture"
                            :show-upload-list="true"
                            :before-upload="handleBeforeUpload"
                            :on-success="handleSuccess"
                            :on-format-error="handleFormatError"
                            :format="['jpg','jpeg','png']"
                    >
                        <Button icon="ios-cloud-upload-outline"   >{{ $t("message.UploadPic") }}</Button>
                    </Upload>
                </Form-item>
                <Form-item>
                    <img v-if="email.image != null" :src="email.image" style="width: 300px;height: 200px">
                </Form-item>
                <FormItem :label="$t('message.ProblemDetails')" prop="content">
                    <Input v-model="email.content" type="textarea" :autosize="{minRows: 2,maxRows: 5}"placeholder="Enter something..." />
                </FormItem>
            </Form>
        </Modal>
    </div>
</template>
<script>
export default {
  data() {
    return {
      loginFlag: false,
      consoleFlag: false,
      loading: true,
      searchValue: "",
      //用户未读消息个数
      unreadMsgCount: 0,
      emailModal: false,

        email: {
            title: "",
            email: "",
            name: "",
            content: "",
            formType: 1,
            image: null,
            label: this.$t("message.Processing")
        },
        image: [
            {
                type: "string",
                required: true,
                message: this.$t("message.UploadPic"),
                trigger: "blur"
            }
        ],
      user: {
        loginName: "",
        email: "",
        headimg: "",
        name: ""
      },
        emailRule: {
            title: [
                {
                    type: "string",
                    required: true,
                    message: this.$t("message.DeclaringInformation"),
                    trigger: "blur"
                }
            ],
            type: [
                {
                    type: "string",
                    required: true,
                    message: this.$t("message.PleaseSelectType"),
                    trigger: "blur"
                }
            ],
            id: [
                {
                    type: "string",
                    required: true,
                    message: this.$t("message.PleaseEnterRightId"),
                    trigger: "blur"
                }
            ],
            email: [
                { required: true, message: this.$t("message.EnterEmailAddress"), trigger: "blur" },
                { type: "email", message: this.$t("message.PleaseEnterRightEmailFormat"), trigger: "blur" }
            ],
            passwordAgain: [
                {
                    type: "string",
                    required: true,
                    message: this.$t("message.PleaseEnterPasswordAgain"),
                    trigger: "blur"
                }
            ],
            name: [
                {
                    type: "string",
                    required: true,
                    message: this.$t("message.PleaseEnterName"),
                    trigger: "blur"
                }
            ],
            content: [{ required: true, message: this.$t("message.PleaseEnterTitleAndContent"), trigger: "blur" }]
        }
    };
  },
  mounted() {
    if (!this.$store.getters._isMobile) {
      this.$router.replace("/");
    }
    var code = this.$route.query.code;
    var state = this.$route.query.state;
    this.login(code, state);
  },
  methods: {
      // search() {
      //     if(this.$route.name == "home" || this.$route.name == "page-home-title"|| this.$route.name == "page-home"){
      //         this.$router.push("/page/home/" + this.searchValue);
      //     }else if(this.$route.name == "article-home"){
      //         this.$router.push("/article" + "?searchValue=" + this.searchValue);
      //     }
      // },
      handleSuccess(res, file) {
          this.email.image = res.data.url;
          file.url = res.data.url;
          file.name = res.data.url;
      },
      handleBeforeUpload() {
          this.$refs.upload.fileList.splice(0, this.$refs.upload.fileList.length);
          return true;
      },
      handleFormatError(file) {
          this.$Notice.warning({
              title: this.$t("message.WrongPictureFormat"),
              desc: this.$t("message.OnlyjpgjpegpngBeAllowed")
          });
      },
      emailOk(email) {
          this.$refs[email].validate(valid => {
              if (valid) {
                  this.axios({
                      method: "post",
                      url: "/email",
                      data: this.email
                  })
                      .then(
                          function(response) {
                              this.$Message.info(this.$t("message.SendSuccess")+"["+this.email.image+"]");
                          }.bind(this)
                      )
                      .catch(function(error) {
                          alert(error);
                      });
                  this.emailModal = false;
              } else {
                  this.$Message.error(this.$t("message.ValidationFailed"));
                  setTimeout(() => {
                      this.loading = false;
                      this.$nextTick(() => {
                          this.loading = true;
                      });
                  }, 1000);
              }
          });
      },


    dropdownClick(m) {
      if (m == "email") {
        this.emailModal = true;
      } else if (m == "loginOut") {
        this.$store.dispatch("users/loginOUt", { router: this.$router });
      } else if (m == "messages") {
        this.$router.push({ path: "/mobile/messages" });
      }
      else if (m == "article") {


          this.$router.push({ path: "/mobile/article" });

      }else if(m == "language") {
          if(this.$i18n.locale === 'en'){
              this.$i18n.locale = 'zh';
          }else if(this.$i18n.locale === 'zh'){
              this.$i18n.locale = 'en';
          }
      }
    },
    toLogin() {
      this.$router.push("/mlogin");
    },
    userGet() {
      let _this = this;
      this.axios({
        method: "get",
        url: "/public/user"
      })
        .then(
          function(response) {
            if (response.data.data != null && response.data.data != "") {
              this.loginFlag = true;
              this.userSet(response.data.data);
              if (response.data.data.usertype == 1) {
                this.consoleFlag = true;
              }

              return this.axios({
                method: "get",
                url: "/msgrecords/unreadnum"
              });
            } else {
              return Promise.resolve(0);
            }
          }.bind(this)
        )
        .then(function(response) {
          if (response === 0) {
            _this.unreadMsgCount = response;
          } else {
            _this.unreadMsgCount = response.data.data;
          }
        })
        .catch(
          function(error) {
            this.$Message.error(this.$t("message.PermissionDenied"));
          }.bind(this)
        );
    },
    userSet(e) {
      this.user.loginName = e.loginName;
      this.user.email = e.email;
      this.user.headimg = e.headimg;
      this.user.name = e.name;
    },
      handleBeforeUpload() {
          this.$refs.upload.fileList.splice(0, this.$refs.upload.fileList.length);
          return true;
      },
      handleFormatError(file) {
          this.$Notice.warning({
              title: this.$t("message.WrongPictureFormat"),
              desc: this.$t("message.OnlyjpgjpegpngBeAllowed")
          });
      },

      search() {
      if (this.searchValue != null && this.searchValue != "") {
        this.$router.push("/page/home/" + this.searchValue);
      }
    },
    menuSelect(e) {
      if (e == 1) {
      } else if (e == 2) {
        this.emailModal = true;
      } else if (e == 3) {
        this.$store.dispatch("users/loginOUt", { router: this.$router });
      } else if (e == 4) {
        this.$router.push("/base");
      } else if (e == 5) {
        this.$router.push("/login");
      }
      // else if (e == "4") {
      //     this.$router.push("/article");
      // }
    },
    backHome() {
      this.$router.push("/page/home");
    },
    cancel() {
      this.$Message.info(this.$t("message.ClickCancel"));
    },
    emailOk(email) {
      this.$refs[email].validate(valid => {
        if (valid) {
          this.axios({
            method: "post",
            url: "/email",
            data: this.email
          })
            .then(
              function(response) {
                this.$Message.info(this.$t("message.SendSuccess"));
              }.bind(this)
            )
            .catch(function(error) {
              alert(error);
            });
          this.emailModal = false;
        } else {
          this.$Message.error(this.$t("message.ValidationFailed"));
          setTimeout(() => {
            this.loading = false;
            this.$nextTick(() => {
              this.loading = true;
            });
          }, 1000);
        }
      });
    },
    /*登录*/
    login(code, state) {
      if (code != null && code != "" && state != null && state != "") {
        this.$Spin.show({
          render: h => {
            return h("div", [
              h("Icon", {
                style: {
                  animation: "ani-demo-spin 1s linear infinite"
                },
                props: {
                  type: "load-c",
                  size: 18
                }
              }),
              h("div", this.$t("message.PleaseWait"))
            ]);
          }
        });
        setTimeout(() => {
          this.$Spin.hide();
        }, 10000);
        if (state == "github") {
          this.githubLogin(code);
        } else if (state == "qq") {
          this.qqLogin(code);
        } else {
          this.$router.push({ path: "/" });
          location.reload();
        }
      } else {
        this.userGet();
      }
    },
    /*github登录*/
    githubLogin(code) {
      this.axios({
        method: "post",
        url: "/authentication/github",
        params: {
          code: code
        },
        auth: {
          username: "client",
          password: "secret"
        }
      })
        .then(
          function(response) {
            localStorage.setItem(
              "currentUser_token",
              response.data.access_token
            );
            localStorage.setItem(
              "currentUser_refresh_token",
              response.data.refresh_token
            );
            this.axios.defaults.headers.common["Authorization"] =
              "bearer " + localStorage.getItem("currentUser_token");
            this.$router.push({ path: "/" });
            location.reload();
          }.bind(this)
        )
        .catch(
          function(error) {
            this.$Message.error(this.$t("message.Loginfailed"));
          }.bind(this)
        );
    },
    /*qq登录*/
    qqLogin(code) {
      this.axios({
        method: "post",
        url: "/authentication/qq",
        params: {
          code: code
        },
        auth: {
          username: "client",
          password: "secret"
        }
      })
        .then(
          function(response) {
            localStorage.setItem(
              "currentUser_token",
              response.data.access_token
            );
            localStorage.setItem(
              "currentUser_refresh_token",
              response.data.refresh_token
            );
            this.axios.defaults.headers.common["Authorization"] =
              "bearer " + localStorage.getItem("currentUser_token");
            this.$router.push({ path: "/" });
            location.reload();
          }.bind(this)
        )
        .catch(
          function(error) {
            this.$Message.error(this.$t("message.Loginfailed"));
          }.bind(this)
        );
    },

    toMessages() {
      //console.log('to messages page');
      this.$router.push({ path: "/page/messages" });
    }
  }
};
</script>
