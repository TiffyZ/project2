<style>
    .del-select {
        margin-bottom: 25px;
    }
    .del-select span{
        margin-right: 5px;
    }
    .botton-layout {
        margin-right: 5px;
    }
</style>
<template>
    <div style="margin: 40px;">
        <div>
            <ul>
                <li>
                    <Button v-if="!del" type="error" icon="md-trash" class="botton-layout" @click="clickDel()">{{ $t("message.delete")}}</Button>
                    <Button v-if="del" type="success" icon="md-build" class="botton-layout" @click="republish()">恢复</Button>
                    <Button type="info" icon="md-build" class="botton-layout" @click="top(1)">{{$t("message.Above")}}</Button>
                    <Button type="info" icon="md-build" class="botton-layout" @click="top(0)">{{$t("message.CAbove")}}</Button>
                </li>
                <li>
                    <div style="padding: 10px 0;">
                        <Table border :columns="columns1" :data="data1" :height="400" @on-selection-change="s=>{change(s)}"></Table>
                    </div>
                </li>
                <li>
                    <div style="text-align: right;">
                        <Page :total="total" :page-size="pageInfo.pageSize"  @on-change="e=>{pageSearch(e)}"></Page>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</template>
<script>
    export default {
        data() {
            return {
                date:null,
                searchContent:null,
                del:false,
                groupId: [],
                /*分页total属性绑定值*/
                total: 0,
                /*pageInfo实体*/
                pageInfo: {
                    page: 0,
                    pageSize: 10
                },
                /*表显示字段*/
                columns1: [
                    {
                        type: "selection",
                        width: 60,
                        align: "center"
                    },
                    {
                        title: this.$t('message.EssayId'),
                        key: "id",
                        width: 90
                    },
                    {
                        title: this.$t("message.CreaterId"),
                        key: "userid",
                        width: 100
                    },
                    {
                        title: this.$t("message.createTime1"),
                        key: "createTime",
                        width: 140
                    },
                    {
                        title: this.$t("message.Title"),
                        key: "title",
                        width: 150
                    }, {
                        title: this.$t("message.Above"),
                        align: "center",
                        key: "action",
                        width: 140,
                        render: (h, params) => {
                            if (params.row.top == 1) {
                                return h("div", [
                                    h(
                                        "strong",
                                        {
                                            style: {
                                                color: "#2b85e4"
                                            }
                                        },
                                        this.$t("message.yes")
                                    )
                                ]);
                            } else if (params.row.top == 0) {
                                return h("div", [
                                    h(
                                        "strong",
                                        {
                                            style: {
                                                color: "#f90"
                                            }
                                        },
                                        this.$t("message.no")
                                    )
                                ]);
                            }
                        }
                    },
                    {
                        title: this.$t("message.Introduce"),
                        key: "info"
                    },
                    {
                        title: this.$t("message.Operation"),
                        align: "center",
                        key: "action",
                        width: 100,
                        render: (h, params) => {
                            return h(
                                "a",
                                {
                                    attrs: {
                                        href:
                                        this.$store.state.domainName +
                                        "/article/detail/" +
                                        params.row.id,
                                        target: "_blank"
                                    }
                                },
                                [
                                    h(
                                        "Button",
                                        {
                                            props: {
                                                type: "info"
                                            }
                                        },
                                        this.$t("message.Watch")
                                    )
                                ]
                            );
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
            /*得到表数据*/
            getTable(e) {
                var dateTimestamp = null;
                if(this.date != null && this.date != ''){
                    dateTimestamp = this.date.getTime();
                }
                var delSign = 0;
                if(this.del){
                    delSign = 1;
                }
                this.axios({
                    method: "get",
                    url: "/admin/articles",
                    params: {
                        dateTimestamp: dateTimestamp,
                        searchContent: this.searchContent,
                        del: delSign,
                        page: e.pageInfo.page,
                        pageSize: e.pageInfo.pageSize
                    }
                })
                    .then(
                        function(response) {
                            this.data1 = response.data.data.data;
                            this.total = response.data.data.totalCount;
                            for (var i = this.data1.length - 1; i >= 0; i--) {
                                this.data1[i].createTime = this.dateGet(this.data1[i].createTime);
                            }
                        }.bind(this)
                    )
                    .catch(function(error) {
                        alert(error);
                    });
            },
            search() {
                this.initPageInfo();
                this.getTable({
                    pageInfo: this.pageInfo
                });
            },
            /*分页点击事件*/
            pageSearch(e) {
                this.pageInfo.page = e - 1;
                this.getTable({
                    pageInfo: this.pageInfo
                });
            },
            clickDel() {
                if (this.groupId != null && this.groupId != "") {
                    this.axios({
                        method: "delete",
                        url: "/admin/articles",
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
            republish() {
                if (this.groupId != null && this.groupId != "") {
                    this.axios({
                        method: "patch",
                        url: "/admin/articles",
                        data: this.groupId
                    })
                        .then(
                            function(response) {
                                this.getTable({
                                    pageInfo: this.pageInfo
                                });
                                this.groupId = [];
                                this.$Message.info("重新发布成功");
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
            },
            switchChange(){
                this.groupId = [];
                this.getTable({
                    pageInfo: this.pageInfo
                });
            },
            top(e){
                this.axios({
                    method: "patch",
                    url: "/admin/articles/top",
                    data: this.groupId,
                    params: {
                        top: e
                    }
                })
                    .then(
                        function(response) {
                            this.getTable({
                                pageInfo: this.pageInfo
                            });
                            this.groupId = [];
                            this.$Message.info("修改成功");
                        }.bind(this)
                    )
                    .catch(function(error) {
                        alert(error);
                    });
            }
        }
    };
</script>
