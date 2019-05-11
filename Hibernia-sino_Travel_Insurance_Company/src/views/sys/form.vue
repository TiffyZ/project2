<template>
    <div style="margin: 20px;">
        <div>
            <ul>

                <li>
                    <Button type="error" icon="md-trash" @click="del()">{{ $t("message.delete")}}</Button>
                    <!--<Button class="operation-button" type="primary" icon="md-add" @click="openNewModal()">新建</Button>-->
                    <!--<Button class="operation-button" type="success" icon="md-build" @click="openModifyModal()">修改</Button>-->
                    <!--<Button class="operation-button" type="success" icon="md-build" @click="remarkModal()">备注</Button>-->
                </li>
                <li>
                    <p>{{ $t("message.InsuranceType") }}</p>
                    <p>（1）{{ $t("message.BaggageInsurance") }}  （2）{{ $t("message.BaggageInsurancePlus") }}   （3）{{ $t("message.OnTimeInsurance") }}   （4）{{ $t("message.SafetyInsurance") }}   （5）{{ $t("message.ChildInsurance") }}</p>
                </li>
                <li>
                    <div style="padding: 10px 0;">
                        <Table border :columns="columns1" :data="data1" :height="400" @on-selection-change="s=>{change(s)}" @on-row-dblclick="s=>{dblclick(s)}"></Table>
                    </div>
                </li>

                <li>
                    <div style="text-align: right;">
                        <Page :total="total" :page-size="pageInfo.pageSize"  @on-change="e=>{pageSearch(e)}" ></Page>
                    </div>
                </li>

            </ul>
        </div>
        <Modal :mask-closable="false" :visible.sync="modal" v-model="modal" width="600" title="查看">
            <Form ref="email" :rules="emailRule" :model="email" :label-width="80">
                <Form-item label="ID:" prop="id">

                    <strong>{{email.id}}</strong>
                    <!-- <Input v-model="email.username" style="width: 204px" disabled="disabled" /> -->
                </Form-item>


                <Form-item :label="$t('message.loginuser')" prop="name">
                    <strong>{{email.name}}</strong>
                    <!-- <Input v-model="email.username" style="width: 204px" disabled="disabled" /> -->
                </Form-item>
                <Form-item :label="$t('message.Userid')" prop="userid">
                    <strong>{{email.userid}}</strong>
                    <!-- <Input v-model="email.username" style="width: 204px" disabled="disabled" /> -->
                </Form-item>
                <Form-item :label="$t('message.Email')" prop="email">
                    <strong>{{email.email}}</strong>
                    <!-- <Input v-model="email.username" style="width: 204px" disabled="disabled" /> -->
                </Form-item>

                <Form-item :label="$t('message.InsuranceType')"  prop="formType">
                    <strong>{{email.formType}}</strong>
                    <!-- <Input v-model="email.username" style="width: 204px" disabled="disabled" /> -->
                </Form-item>
                <Form-item :label="$t('message.Title')" prop="title">
                    <strong>{{email.title}}</strong>
                    <!-- <Input v-model="email.username" style="width: 204px" disabled="disabled" /> -->
                </Form-item>
                <Form-item :label="$t('message.ContentDetails')"  prop="content">
                    <span>{{email.content}}</span>
                    <!-- <Input v-model="email.username" style="width: 204px" disabled="disabled" /> -->
                </Form-item>
                <Form-item :label="$t('message.PictureProof')" prop="image">

                    <span><img v-if="email.image != null" :src="email.image" style="width: 300px;height: 200px"></span>

                    <!-- <Input v-model="email.username" style="width: 204px" disabled="disabled" /> -->
                </Form-item>
                <Form-item :label="$t('message.comment')" prop="remark">
                    <!--<span>{{email.remark}}</span>-->
                    <Input v-model="email.remark" type="textarea" :autosize="{minRows: 2,maxRows: 5}"placeholder="Enter remark..." />

                </Form-item>

            </Form>
            <div slot="footer">
                <!--<Button type="error" size="large"  @click="cancel">关闭</Button>-->
                <!--<Button v-model="email" type="success" size="large"  @click="agree('email')">{{ $t("message.AgreeToPay") }}</Button>-->
                <!--<Button v-model="email" type="error" size="large"  @click="disagree('email')">{{ $t("message.DisAgreeToPay") }}</Button>-->
                <Button v-model="email" type="success" size="large"  @click="agree('email')">Agree </Button>
                <Button v-model="email" type="error" size="large"  @click="disagree('email')">Disagree</Button>
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
                    label: "Processing",
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
                        title: this.$t("message.FormID"),
                        key: "id"
                    },
                    {
                        title: this.$t("message.loginuser"),
                        key:"name"
                    },
                    {
                        title: this.$t("message.Title"),
                        width: 200,
                        key: "title"
                    },
                    // {
                    //   title: "email",
                    //   key: "email"
                    // },
                    {
                        title: this.$t("message.Time"),
                        key: "createtime"
                    },
                    {
                        title: this.$t("message.InsuranceType"),
                        key: "formType",
                        render: (h, params) => {
                            if (params.row.formType == 1) {
                                return h("div", [h("strong", null, this.$t("message.BaggageInsurance"))]);
                            } else if (params.row.formType == 2) {
                                return h("div", [h("strong", null, this.$t("message.BaggageInsurancePlus"))]);
                            }else if (params.row.formType == 3) {
                                return h("div", [h("strong", null, this.$t("message.OnTimeInsurance"))]);
                            }else if (params.row.formType == 4) {
                                return h("div", [h("strong", null, this.$t("message.SafetyInsurance"))]);
                            }else if (params.row.formType == 5) {
                                return h("div", [h("strong", null, this.$t("message.ChildInsurance"))]);
                            }
                        }
                    },
                    {
                        title: this.$t("message.State"),
                        key: "label",
                        render: (h, params) => {
                            if (params.row.label == "Agree") {
                                return h("div", [h("strong", null, this.$t("message.AgreeToPay"))]);
                            } else if (params.row.label == "Disagree") {
                                return h("div", [h("strong", null, this.$t("message.DisAgreeToPay"))]);
                            }
                            else if (params.row.label == "Processing") {
                                return h("div", [h("strong", null, this.$t("message.Processing"))]);
                            }
                        }
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
                        title: this.$t("message.Details"),
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
                                    this.$t("message.Watch")
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
                this.$Message.info(this.$t("message.SendSuccess"));

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
                this.email.label="Agree";
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
                this.email.label="Disagree";
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
