<template>
	<div style="margin: 20px;">
        <div>
            <ul>

                <li>
                    <Button type="error" icon="md-trash" @click="del()">删除</Button>
                    <!--<Button class="operation-button" type="primary" icon="md-add" @click="openNewModal()">新建</Button>-->
                    <!--<Button class="operation-button" type="success" icon="md-build" @click="openModifyModal()">修改</Button>-->
                    <!--<Button class="operation-button" type="success" icon="md-build" @click="remarkModal()">备注</Button>-->
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
	        <Form :label-width="80" >
            <Form-item label="表单ID号:">

              <strong>{{email.id}}</strong>
                    <!-- <Input v-model="email.username" style="width: 204px" disabled="disabled" /> -->
                </Form-item>


	        	<Form-item label="用户姓名:">
	        		<strong>{{email.name}}</strong>
                    <!-- <Input v-model="email.username" style="width: 204px" disabled="disabled" /> -->
                </Form-item>
                <Form-item label="用户ID号:">
                    <strong>{{email.userid}}</strong>
                    <!-- <Input v-model="email.username" style="width: 204px" disabled="disabled" /> -->
                </Form-item>
                <Form-item label="用户邮箱:">
              <strong>{{email.email}}</strong>
                    <!-- <Input v-model="email.username" style="width: 204px" disabled="disabled" /> -->
                </Form-item>

                <Form-item label="表单类型:">
              <strong>{{email.formType}}</strong>
                    <!-- <Input v-model="email.username" style="width: 204px" disabled="disabled" /> -->
                </Form-item>
                <Form-item label="用户标题:">
                    <strong>{{email.title}}</strong>
                    <!-- <Input v-model="email.username" style="width: 204px" disabled="disabled" /> -->
                </Form-item>
                <Form-item label="内容说明:">
                	<span>{{email.content}}</span>
                    <!-- <Input v-model="email.username" style="width: 204px" disabled="disabled" /> -->
                </Form-item>
                <Form-item label="证明图片:">

                    <span><img v-if="email.image != null" :src="email.image" style="width: 300px;height: 200px"></span>

                    <!-- <Input v-model="email.username" style="width: 204px" disabled="disabled" /> -->
                </Form-item>
                 <Form-item label="员工备注:">
                  <span>{{email.remark}}</span>
                    <!-- <Input v-model="email.username" style="width: 204px" disabled="disabled" /> -->
                </Form-item>
            
            </Form>
	        <div slot="footer">
	            <!--<Button type="error" size="large"  @click="cancel">关闭</Button>-->
                <Button type="success" size="large"  @click="agree('email')">同意赔付</Button>
                <Button type="error" size="large"  @click="disagree('email')">拒绝赔付</Button>
	        </div>
	    </Modal>	
    </div>
</template>
<script>
export default {
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
          key:"userid"
        },   
        {
          title: "标题",
          width: 200,
          key: "title"
        },
        // {
        //   title: "email",
        //   key: "email"
        // },
        {
          title: "时间",
          key: "createtime"
        },
        {
          title: "表单类型",
          key: "formType"
        },
        {
          title: "表单赔付状态",
          key: "label"
        },
        //   {
        //       title: "员工同意操作",
        //       align: "center",
        //       key: "action",
        //       render: (h, params) => {
        //           return h("div", [
        //               h(
        //                   "Button",
        //                   {
        //                       props: {
        //                           type: "info"
        //                       },
        //                       on: {
        //                           click: () => {
        //                               this.email.label = "同意赔付";
        //                               this.getTable({
        //                                   pageInfo: this.pageInfo
        //                               });
        //
        //                           }
        //                       }
        //                   },
        //                   "同意"
        //               )
        //           ]);
        //       }
        //
        //   },
        //   {
        //       title: "员工拒绝操作",
        //       align: "center",
        //       key: "action",
        //       render: (h, params) => {
        //           return h("div", [
        //               h(
        //                   "Button",
        //                   {
        //                       props: {
        //                           type: "info"
        //                       },
        //                       on: {
        //                           click: () => {
        //                               this.email.label="拒绝赔付";
        //                               this.getTable({
        //                                   pageInfo: this.pageInfo
        //                               });
        //                           }
        //                       }
        //                   },
        //                   "拒绝"
        //               )
        //           ]);
        //       }
        //
        // },

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
          this.$Message.info("发送成功1");

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
              this.$Message.info("删除成功");
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
              this.$Message.warning("请至少选择一项(且只能选择一项)");
          } else {
              this.modifyModal = true;
          }
      },
      remarkModal() {
          if (this.count > 1 || this.count < 1) {
              this.modifyModal = false;
              this.$Message.warning("请至少选择一项(且只能选择一项)");
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
          this.email.label="同意赔付";
          this.$Message.info(this.$refs[email]);
          this.$refs[email].validate(valid => {
              this.$Message.info("发送成功111["+this.email.label+"]");
              if (valid) {
                  this.$Message.info("发送成功222["+this.email.label+"]");
                  this.axios({
                      method: "post",
                      url: "/email/label",
                      data: this.email
                  })
                      .then(
                          function(response) {
                              this.$Message.info("发送成功["+this.email.label+"]");
                          }.bind(this)
                      )
                      .catch(function(error) {
                          alert(error);
                      });
                  // this.emailModal = false;
              } else {
                  this.$Message.error("表单验证失败!");

              }
          });
      },
      disagree(email){
          this.email.label="拒绝赔付";
          this.$Message.info("发送成功000["+this.email.label+"]");
          this.$refs[email].validate(valid => {
              this.$Message.info("发送成功111["+this.email.label+"]");
              if (valid) {
                  this.$Message.info("发送成功222["+this.email.label+"]");
                  this.axios({
                      method: "post",
                      url: "/email/label",
                      data: this.email
                  })
                      .then(
                          function(response) {
                              this.$Message.info("发送成功["+this.email.label+"]");
                          }.bind(this)
                      )
                      .catch(function(error) {
                          alert(error);
                      });
                  // this.emailModal = false;
              } else {
                  this.$Message.error("表单验证失败!");

              }
          });
      },

  }
};
</script>
