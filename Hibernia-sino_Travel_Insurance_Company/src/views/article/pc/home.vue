
<template>
    <div style="margin: 20px;">
        <div>
            <ul>
                <li>
                    <Button type="error" icon="md-trash" @click="del()">{{ $t("message.delete")}}</Button>
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

        <Modal :mask-closable="false" :visible.sync="modal" v-model="modal" width="600" :title="$t('message.Watch')">
            <Form :label-width="80" >
                <Form-item :label="$t('message.loginuser')">
                    <strong>{{email.username}}</strong>
                    <!-- <Input v-model="email.username" style="width: 204px" disabled="disabled" /> -->
                </Form-item>
                <Form-item :label="$t('message.Content')">
                    <span>{{email.content}}</span>
                    <!-- <Input v-model="email.username" style="width: 204px" disabled="disabled" /> -->
                </Form-item>
            </Form>
            <div slot="footer">
                <Button type="error" size="large"  @click="cancel">{{ $t("message.Close")}}</Button>
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
                id: null,
                username: null,
                title: null,
                email: null,
                name: null,
                content: null,
                createtime: null,
                label: null
            },
            /*表显示字段*/
            columns1: [
                {
                    type: "selection",
                    width: 60,
                    align: "center"
                },
                {
                    title: this.$t("message.name"),
                    key: "name"
                },
                {
                    title: this.$t("message.Title"),
                    width: 500,
                    key: "title"
                },
                {
                    title: this.$t("message.State"),
                    key: "label"
                },
                {
                    title: "email",
                    key: "email"
                },
                {
                    title: this.$t("message.Time"),
                    key: "createtime"
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
        emailSet(e) {
            this.email.id = e.id;
            this.email.username = e.username;
            this.email.title = e.title;
            this.email.email = e.email;
            this.email.name = e.name;
            this.email.content = e.content;
            this.email.createtime = e.createtime;
            this.email.label = e.label;
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
                url: "/emails/individual",
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
        setGroupId(e) {
            this.groupId = [];
            for (var i = 0; i <= e.length - 1; i++) {
                this.groupId.push(e[i].id);
            }
        }
    }
};



</script>
