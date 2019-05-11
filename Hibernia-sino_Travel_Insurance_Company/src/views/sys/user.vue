<style scoped>
  .operation-button{
    margin-right: 3px;
  }
</style>
<template>
	<div style="margin: 20px;">
        <div>
            <Row style="margin-bottom: 25px;">
                <Col span="8">{{ $t("message.loginuser") }}
                	<Input v-model="name" :placeholder="$t('message.PleaseEnter')" style="width:200px" />
                </Col>
                <Col span="8"><Button type="primary" shape="circle" icon="ios-search" @click="search()">{{ $t("message.search") }}</Button></Col>
            </Row>
        </div>            
        <div>
            <ul>
                <li>
                    <Button class="operation-button" type="success" icon="md-build" @click="openModifyModal()">{{ $t("message.Edit") }}</Button>
                    <Button type="error" icon="md-trash" @click="del()">{{ $t("message.delete") }}</Button>
                </li>
                <li>
                    <div style="padding: 10px 0;">
                    	<Table border :columns="columns1" :data="data1" :height="400" @on-selection-change="s=>{change(s)}" @on-row-dblclick="s=>{dblclick(s)}"></Table>
                    </div> 
                </li>
                <li>
                    <div style="text-align: right;">
                        <Page :total="total" :page-size="pageInfo.pageSize"  @on-change="e=>{pageSearch(e)}"></Page>
                    </div>  
                </li>
            </ul>
        </div>
        <!--修改modal-->  
        <Modal :mask-closable="false" :visible.sync="modifyModal" v-model="modifyModal" width="600" :title="$t('message.Edit')" @on-ok="modifyOk()" @on-cancel="cancel()">
             <Form :label-width="80" >
                <Row>
                    <Col span="12">
                        <Form-item :label="$t('message.loginuser')">
                            <Input v-model="userModify.name" style="width: 204px" disabled="disabled" />
                        </Form-item>
                    </Col>
                </Row>
                <Row>
                    <Col span="12">
                        <Form-item label="User Type:">
                            <Select v-model="userModify.usertype" style="width:200px">
                                <Option  :value="0">{{ $t("message.user") }}</Option>
                                <Option  :value="1">{{ $t("message.admin") }}</Option>
                            </Select>
                            <!-- <Input v-model="userModify.email" style="width: 204px"/> -->
                        </Form-item>
                    </Col>
                </Row>
            </Form>
        </Modal>
        <!--配置角色modal-->  
        <Modal v-model="roleModal" width="500" :title="$t('message.Configure')" @on-ok="roleOk()" @on-cancel="cancel()">
            <div>
                <Table border :columns="columns2" :data="data2" :height="260"  @on-selection-change="s=>{change2(s)}"></Table>
            </div>
        </Modal>
    </div>
</template>
<script>
export default {
  data() {
    return {
      /*用于查找的登录名*/
      name: null,
      /*选择的数量*/
      count: null,
      /*选中的组数据*/
      groupId: null,
      /*新建modal的显示参数*/
      newModal: false,
      /*修改modal的显示参数*/
      modifyModal: false,
      /*角色配置modal的显示参数*/
      roleModal: false,
      /*分页total属性绑定值*/
      total: 0,
      /*loading*/
      loading: true,
      /*pageInfo实体*/
      pageInfo: {
        page: 0,
        pageSize: 10
      },
      /*user实体*/
      user: {
        id: null,
        name: null,
        loginName: null,
        password: null,
        passwordAgain: null,
        email: null
      },
      /*用于添加的user实体*/
      userNew: {
        id: null,
        name: null,
        loginName: null,
        password: null,
        passwordAgain: null,
        email: null
      },
      /*用于修改的user实体*/
      userModify: {
        id: null,
        name: null,
        usertype: null
      },
      /*新建验证*/
      ruleNew: {
        name: [
          {
            type: "string",
            required: true,
            message: this.$t("message.EnterUser"),
            trigger: "blur"
          }
        ],
        loginName: [
          {
            type: "string",
            required: true,
            message: this.$t("message.EnterUser"),
            trigger: "blur"
          }
        ],
        password: [
          {
            type: "string",
            required: true,
            message: this.$t("message.PleaseEnterPassword"),
            trigger: "blur"
          }
        ],
        passwordAgain: [
          {
            type: "string",
            required: true,
            message: this.$t("message.PleaseEnterPasswordAgain"),
            trigger: "blur"
          }
        ],
        email: [
          { required: true, message: this.$t("message.EnterEmailAddress"), trigger: "blur" },
          { type: "email", message: this.$t("message.PleaseEnterRightEmailFormat"), trigger: "blur" }
        ]
      },
      /*修改验证*/
      ruleModify: {
        name: [
          {
            type: "string",
            required: true,
            message: this.$t("message.EnterUser"),
            trigger: "blur"
          }
        ],
        password: [
          {
            type: "string",
            required: true,
            message: this.$t("message.PleaseEnterPassword"),
            trigger: "blur"
          }
        ],
        email: [
          { required: true, message: this.$t("message.EnterEmailAddress"), trigger: "blur" },
          { type: "email", message: this.$t("message.PleaseEnterRightEmailFormat"), trigger: "blur" }
        ]
      },
      /*表显示字段*/
      columns1: [
        {
          type: "selection",
          width: 60,
          align: "center"
        },
        {
          title: this.$t("message.user"),
          key: "name"
        },
        {
          title: this.$t("message.Email"),
          key: "email"
        },
        {
          title: "Github",
          key: "url",
          width: 300,
          render: (h, params) => {
            return h(
              "a",
              {
                attrs: {
                  href: params.row.url,
                  target: "_blank"
                }
              },
              params.row.url
            );
          }
        },
        {
          title: this.$t("message.Usertype"),
          align: "center",
          key: "usertype",
          render: (h, params) => {
            if (params.row.usertype == 0) {
              return h("div", [h("strong", null, this.$t("message.user"))]);
            } else if (params.row.usertype == 1) {
              return h("div", [h("strong", null, this.$t("message.admin"))]);
            }
          }
        },
        {
          title: this.$t("message.createTime"),
          key: "createTime"
        },
        {
          title: this.$t("message.Operation"),
          align: "center",
          key: "action",
          render: (h, params) => {
            return h("div", [
              h(
                "Button",
                {
                  props: {
                    type: "info"
                  },
                  on: {
                    click: () => {
                      this.relationSet(params.row);
                    }
                  }
                },
                  this.$t("message.Configure1")
              )
            ]);
          }
        }
      ],
      /*表数据*/
      data1: [],
      /*表显示字段*/
      columns2: [
        {
          type: "selection",
          width: 60,
          align: "center"
        },
        {
          title: this.$t("message.CharacterName"),
          width: 120,
          key: "name"
        },
        {
          title: this.$t("message.Describe"),
          key: "describe"
        }
      ],
      /*表数据*/
      data2: [],
      /*data2的临时存储*/
      data2Temp: [],
      /*用户与角色关系列表*/
      relationList: null
    };
  },
  mounted() {
    /*页面初始化调用方法*/
    this.getTable({
      pageInfo: this.pageInfo,
      name: this.name
    });
    this.axios({
      method: "get",
      url: "/roles/all"
    })
      .then(
        function(response) {
          this.data2Temp = response.data.data;
        }.bind(this)
      )
      .catch(function(error) {
        alert(error);
      });
  },
  methods: {
    /*pageInfo实体初始化*/
    initPageInfo() {
      this.pageInfo.page = 0;
      this.pageInfo.pageSize = 10;
    },
    /*user实体初始化*/
    initUser() {
      this.user.id = null;
      this.user.name = null;
      this.user.loginName = null;
      this.user.password = null;
      this.user.email = null;
    },
    /*userNew实体初始化*/
    initUserNew() {
      this.userNew.id = null;
      this.userNew.name = null;
      this.userNew.loginName = null;
      this.userNew.password = null;
      this.userNew.passwordAgain = null;
      this.userNew.email = null;
    },
    /*userModify实体初始化*/
    initUserModify() {
      this.userModify.id = null;
      this.userModify.name = null;
      this.userModify.loginName = null;
      this.userModify.password = null;
      this.userModify.email = null;
    },
    /*userNew设置*/
    userSet(e) {
      this.user.id = e.id;
      this.user.name = e.name;
      this.user.loginName = e.loginName;
      this.user.password = e.password;
      this.user.email = e.email;
    },
    /*userNew设置*/
    userNewSet(e) {
      this.userNew.id = e.id;
      this.userNew.name = e.name;
      this.userNew.loginName = e.loginName;
      this.userNew.password = e.password;
      this.userNew.passwordAgain = e.password;
      this.userNew.email = e.email;
    },
    /*userModify设置*/
    userModifySet(e) {
      this.userModify.id = e.id;
      this.userModify.name = e.name;
      this.userModify.usertype = e.usertype;
    },
    dateGet(e) {
      var time = new Date(parseInt(e));
      return (
        time.getFullYear() +
        "-" +
        (time.getMonth() + 1) +
        "-" +
        time.getDate() +
        " " +
        time.getHours() +
        ":" +
        time.getMinutes()
      );
    },
    listDateSet(e) {
      for (var i = e.length - 1; i >= 0; i--) {
        e[i].createTime = this.dateGet(e[i].createTime);
      }
    },
    /*得到表数据*/
    getTable(e) {
      this.axios({
        method: "get",
        url: "/users",
        params: {
          page: e.pageInfo.page,
          pageSize: e.pageInfo.pageSize,
          name: e.name
        }
      })
        .then(
          function(response) {
            this.data1 = response.data.data.data;
            this.listDateSet(this.data1);
            this.total = response.data.data.totalCount;
          }.bind(this)
        )
        .catch(function(error) {
          console.log(error);
        });
    },
    /*搜索按钮点击事件*/
    search() {
      this.initPageInfo();
      this.getTable({
        pageInfo: this.pageInfo,
        name: this.name
      });
    },
    /*分页点击事件*/
    pageSearch(e) {
      this.pageInfo.page = e - 1;
      this.getTable({
        pageInfo: this.pageInfo,
        name: this.name
      });
    },
    /*新建点击触发事件*/
    openNewModal() {
      this.newModal = true;
      this.initUserNew();
      this.data1.sort();
      this.count = 0;
      this.groupId = null;
    },
    /*新建modal的newOk点击事件*/
    newOk(userNew) {
      this.$refs[userNew].validate(valid => {
        if (valid) {
          if (this.userNew.password == this.userNew.passwordAgain) {
            this.initUser();
            this.userSet(this.userNew);
            this.axios({
              method: "post",
              url: "/users/user",
              data: this.user
            })
              .then(
                function(response) {
                  this.initUserNew();
                  this.getTable({
                    pageInfo: this.pageInfo,
                    name: this.name
                  });
                  this.$Message.info(this.$t("message.CreateSuccess"));
                }.bind(this)
              )
              .catch(function(error) {
                alert(error);
              });
            this.newModal = false;
          } else {
            this.$Message.error(this.$t("message.CharacterName"));
            this.loading = false;
            this.$nextTick(() => {
              this.loading = true;
            });
          }
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
    /*点击修改时判断是否只选择一个*/
    openModifyModal() {
      if (this.count > 1 || this.count < 1) {
        this.modifyModal = false;
        this.$Message.warning(this.$t("message.PleaseChooseOne"));
      } else {
        this.modifyModal = true;
      }
    },
    /*修改modal的modifyOk点击事件*/
    modifyOk() {
      // this.initUser();
      // this.userSet(this.userModify);
      this.axios({
        method: "put",
        url: "/users/user",
        data: {
          name: this.userModify.name,
          usertype: this.userModify.usertype,
          id: this.userModify.id
        }
      })
        .then(
          function(response) {
            this.initUserNew();
            this.getTable({
              pageInfo: this.pageInfo,
              name: this.name
            });
            this.$Message.info(this.$t("message.EditSuccess"));
          }.bind(this)
        )
        .catch(function(error) {
          alert(error);
        });
      this.modifyModal = false;
    },
    /*modal的cancel点击事件*/
    cancel() {
      this.$Message.info(this.$t("message.ClickCancel"));
    },
    /*table选择后触发事件*/
    change(e) {
      if (e.length == 1) {
        this.userModifySet(e["0"]);
      }
      this.setGroupId(e);
    },
    /*通过选中的行设置groupId的值*/
    setGroupId(e) {
      this.groupId = [];
      this.count = e.length;
      for (var i = 0; i <= e.length - 1; i++) {
        this.groupId.push(e[i].id);
      }
    },
    /*删除table中选中的数据*/
    del() {
      if (this.groupId != null && this.groupId != "") {
        this.axios({
          method: "delete",
          url: "/users",
          data: this.groupId
        })
          .then(
            function(response) {
              this.getTable({
                pageInfo: this.pageInfo,
                name: this.name
              });
              this.groupId = null;
              this.count = 0;
              this.$Message.info(this.$t("message.DeleteSuccess"));
            }.bind(this)
          )
          .catch(function(error) {
            alert(error);
          });
      }
    },
    /*表格中双击事件*/
    dblclick(e) {
      this.userModifySet(e);
      this.modifyModal = true;
      this.data1.sort();
    },
    /*流程配置*/
    relationSet(e) {
      this.roleModal = true;
      this.data2 = [];
      this.axios({
        method: "get",
        url: "/relations/" + e.id
      })
        .then(
          function(response) {
            var roleList = [];
            for (var i in response.data.data) {
              roleList.push(response.data.data[i].roleId);
            }
            for (var i in this.data2Temp) {
              if (roleList.indexOf(this.data2Temp[i].id) == -1) {
                this.data2.push({
                  id: this.data2Temp[i].id,
                  name: this.data2Temp[i].name,
                  describe: this.data2Temp[i].describe,
                  userId: e.id,
                  _checked: false
                });
              } else {
                this.data2.push({
                  id: this.data2Temp[i].id,
                  name: this.data2Temp[i].name,
                  describe: this.data2Temp[i].describe,
                  userId: e.id,
                  _checked: true
                });
              }
            }
          }.bind(this)
        )
        .catch(function(error) {
          alert(error);
        });
    },
    /*配置角色modal确认按钮点击事件*/
    roleOk() {
      if (this.relationList != null) {
        this.axios({
          method: "post",
          url: "/relations",
          data: this.relationList
        })
          .then(
            function(response) {
              this.$Message.info(this.$t("message.EditSuccess"));
            }.bind(this)
          )
          .catch(function(error) {
            alert(error);
          });
        this.relationList = null;
      }
    },
    /*配置角色modal中表选择改变事件*/
    change2(e) {
      this.relationList = [];
      if (e.length == 0) {
        this.relationList.push({
          userId: this.data2[0].userId
        });
      }
      for (var i in e) {
        this.relationList.push({
          userId: e[i].userId,
          roleId: e[i].id
        });
      }
    }
  }
};
</script>
