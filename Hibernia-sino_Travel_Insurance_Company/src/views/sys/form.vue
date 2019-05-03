<template>
	<div style="margin: 20px;">
        <div>
            <ul>

                <li>
                    <Button type="error" icon="md-trash" @click="del()">删除</Button>
                </li>
                <li>
                    <p>保单类型对应：</p>
                    <p>（1）行李险   （2）高理赔行李险   （3）准时险   （4）人身安全险   （5）亲子险</p>

                </li>
                <li>
                    <div style="padding: 10px 0;">
                    	<Table border :columns="columns1" :data="data1" :height="400" @on-selection-change="s=>{change(s)}" @on-row-dblclick="s=>{dblclick(s)}"></Table>
                    </div> 
                </li>

                <li>
                    <div style="text-align: right;">
                        <Page :total="total" :page-size="pageInfo.pageSize" show-elevator show-total @on-change="e=>{pageSearch(e)}"></Page>
                    </div>  
                </li>

            </ul>
        </div>
        <Modal :mask-closable="false" :visible.sync="modal" v-model="modal" width="600" title="查看">
            <Form ref="email" :rules="emailRule" :model="email" :label-width="80">
            <Form-item label="表单ID号:" prop="id">

              <strong>{{email.id}}</strong>
                </Form-item>


	        	<Form-item label="用户姓名:" prop="name">
	        		<strong>{{email.name}}</strong>
                </Form-item>
                <Form-item label="用户ID号:" prop="userid">
                    <strong>{{email.userid}}</strong>
                </Form-item>
                <Form-item label="用户邮箱:" prop="email">
              <strong>{{email.email}}</strong>
                </Form-item>

                <Form-item label="表单类型:" prop="formType">
              <strong>{{email.formType}}</strong>
                </Form-item>
                <Form-item label="用户标题:" prop="title">
                    <strong>{{email.title}}</strong>
                </Form-item>
                <Form-item label="内容说明:" prop="content">
                	<span>{{email.content}}</span>
                </Form-item>
                <Form-item label="证明图片:" prop="image">
                    <span><img v-if="email.image != null" :src="email.image" style="width: 300px;height: 200px"></span>
                </Form-item>
                 <Form-item label="员工备注:" prop="remark">
                     <Input v-model="email.remark" type="textarea" :autosize="{minRows: 2,maxRows: 5}"placeholder="Enter remark..." />

                </Form-item>
            
            </Form>
	        <div slot="footer">
                <Button v-model="email" type="success" size="large"  @click="agree('email')">同意赔付</Button>
                <Button v-model="email" type="error" size="large"  @click="disagree('email')">拒绝赔付</Button>
	        </div>
	    </Modal>	
    </div>
</template>
<script>
export default {
    emailRule: {
        title: [
            {
                type: "string",
                required: true,
                message: "请输入申报信息",
                trigger: "blur"
            }
        ],
        type: [
            {
                type: "string",
                required: true,
                message: "填选择保单类型",
                trigger: "blur"
            }
        ],
        id: [
            {
                type: "string",
                required: true,
                message: "请输入被保险人正确的id",
                trigger: "blur"
            }
        ],
        email: [
            { required: true, message: "输入邮箱", trigger: "blur" },
            { type: "email", message: "输入正确的邮箱格式", trigger: "blur" }
        ],
        passwordAgain: [
            {
                type: "string",
                required: true,
                message: "请输入再次输入密码",
                trigger: "blur"
            }
        ],
        name: [
            {
                type: "string",
                required: true,
                message: "请输入姓名",
                trigger: "blur"
            }
        ],
        content: [{ required: true, message: "请输入内容", trigger: "blur" }]
    },
  data() {
    return {
      /*修改modal的显示参数*/
      modal: false,
      /*分页total属性绑定值*/
      total: 0,
      /*pageInfo实体*/
      pageInfo: {
        page: 0,
        pageSize: 10
      },
      /*user实体*/
      email: {
        id: "",
          name: "",/*用户名字*/
        title: "",
        email: "",
          userid:"",
        content: "",
          createtime: "",
        formType: "",
        image: "",
        label:"未处理",
        remark:""
      },
      /*表显示字段*/
      columns1: [
        {
          type: "selection",
          width: 60,
          align: "center"
        },
        {
          title: "表单ID",
          key: "id"
        },
        {
          title: "用户姓名",
          key:"name"
        },   
        {
          title: "标题",
          width: 200,
          key: "title"
        },
        {
          title: "时间",
          key: "createtime"
        },
        {
          title: "保单类型",
          key: "formType",
            render: (h, params) => {
                if (params.row.formType == 1) {
                    return h("div", [h("strong", null, "行李险")]);
                } else if (params.row.formType == 2) {
                    return h("div", [h("strong", null, "高理赔行李险")]);
                }else if (params.row.formType == 3) {
                    return h("div", [h("strong", null, "准时险")]);
                }else if (params.row.formType == 4) {
                    return h("div", [h("strong", null, "人身安全险")]);
                }else if (params.row.formType == 5) {
                    return h("div", [h("strong", null, "亲子险")]);
                }
            }
        },
        {
          title: "保单赔付状态",
          key: "label"
        },



        {
          title: "查看详情",
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
                      this.emailInfo(params.row);
                    }
                  }
                },
                "详情"
              )
            ]);
          }
        }

      ],
      /*表数据*/
      data1: []
    };
  },
  mounted() {
    /*页面初始化调用方法*/
    this.getTable({
      pageInfo: this.pageInfo
    });
  },
  methods: {
    /*pageInfo实体初始化*/
    initPageInfo() {
      this.pageInfo.page = 0;
      this.pageInfo.pageSize = 10;
    },
      labelpost(){
          this.$Message.info("发送成功");

      },



    emailSet(e) {
      this.email.id = e.id;
      this.email.name = e.name;
      this.email.title = e.title;
      this.email.email = e.email;
      this.email.userid = e.userid;
      this.email.content = e.content;
      this.email.createtime = e.createtime;
      this.email.formType = e.formType;
      this.email.image = e.image;
      this.email.label = e.label;
      this.email.remark = e.remark;

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
        e[i].createtime = this.dateGet(e[i].createtime);
      }
    },
    /*得到表数据*/
    getTable(e) {
      this.axios({
        method: "get",
        url: "/emails",
        params: {
          page: e.pageInfo.page,
          pageSize: e.pageInfo.pageSize
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
          alert(error);
        });
    },
    /*分页点击事件*/
    pageSearch(e) {
      this.pageInfo.page = e - 1;
      this.getTable({
        pageInfo: this.pageInfo
      });
    },
    /*modal的cancel点击事件*/
    cancel() {
      this.modal = false;
    },
    /*表格中双击事件*/
    dblclick(e) {
      this.emailSet(e);
      this.modal = true;
    },
    emailInfo(e) {
      this.emailSet(e);
      this.modal = true;
    },
    del() {
      if (this.groupId != null && this.groupId != "") {
        this.axios({
          method: "delete",
          url: "/admin/emails",
          data: this.groupId
        })
          .then(
            function(response) {
              this.getTable({
                pageInfo: this.pageInfo
              });
              this.groupId = [];
              this.$Message.info(this.$t("message.DeleteSuccess"));
            }.bind(this)
          )
          .catch(function(error) {
            alert(error);
          });
      }
    },
    change(e) {
      this.setGroupId(e);
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
      remarkModal() {
          if (this.count > 1 || this.count < 1) {
              this.modifyModal = false;
              this.$Message.warning(this.$t("message.PleaseChooseOne"));
          } else {
              this.modifyModal = true;
          }
      },

    setGroupId(e) {
      this.groupId = [];
      for (var i = 0; i <= e.length - 1; i++) {
        this.groupId.push(e[i].id);
      }
    },
      agree(email){
          this.modal=false;
          this.email.label=this.$t("message.AgreeToPay");
          this.$refs[email].validate(valid => {
              if (valid) {
                  this.axios({
                      method: "post",
                      url: "/email/label",
                      data: this.email
                  })
                      .then(
                          function(response) {
                              this.$Message.info(this.$t("message.SendSuccess")+"["+this.email.label+"]");
                              this.getTable({
                                  pageInfo: this.pageInfo
                              });
                          }.bind(this)
                      )
                      .catch(function(error) {
                          alert(error);
                      });
                  callback();
                  // this.emailModal = false;
              } else {
                  this.$Message.error(this.$t("message.ValidationFailed"));
                  callback();

              }
          });
      },
      disagree(email){
          this.modal=false;
          this.email.label=this.$t("message.DisAgreeToPay");
          this.$refs[email].validate(valid => {
              if (valid) {
                  this.axios({
                      method: "post",
                      url: "/email/label",
                      data: this.email
                  })
                      .then(
                          function(response) {
                              this.$Message.info(this.$t("message.SendSuccess")+"["+this.email.label+"]");
                              this.getTable({
                                  pageInfo: this.pageInfo
                              });
                          }.bind(this)
                      )
                      .catch(function(error) {
                          alert(error);
                      });
                  // this.emailModal = false;
              } else {
                  this.$Message.error(this.$t("message.ValidationFailed"));

              }
          });
      },

  }
};
</script>
