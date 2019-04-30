<template>
	<div style="margin: 20px;">
		<div>
            <Row style="margin-bottom: 25px;">
                <Col span="8">{{ $t("message.interest") }}
                    <Select v-model="interestid" clearable style="width: 200px">
                        <Option v-for="item in interestList" :value="item.id" :key="item.id">{{ item.title }}</Option>
                    </Select>
                </Col>
                <Col span="8"><Button type="primary" shape="circle" icon="ios-search" @click="search()">{{ $t("message.search") }}</Button></Col>
            </Row>
        </div>
        <div>
            <ul>
            	<li>
                    <Button type="error" icon="md-trash" @click="del()">{{ $t("message.delete") }}</Button>
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
	        	<Form-item :label="$t('message.loginuser')">
	        		<strong>{{postcard.username}}</strong>
                    <!-- <Input v-model="email.username" style="width: 204px" disabled="disabled" /> -->
                </Form-item>
                <Form-item :label="$t('message.Content')">
                	<span>{{postcard.content}}</span>
                    <!-- <Input v-model="email.username" style="width: 204px" disabled="disabled" /> -->
                </Form-item>
            </Form>
	        <div slot="footer">
	            <Button type="error" size="large"  @click="cancel">关闭</Button>
	        </div>
	    </Modal>	
    </div>
</template>
<script>
export default {
  data() {
    return {
      groupId: [],
      interestid: null,
      interestList: [],
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
      postcard: {
        id: null,
        username: null,
        title: null,
        interestid: null,
        content: null,
        createtime: null,
        replytime: null
      },
      /*表显示字段*/
      columns1: [
        {
          type: "selection",
          width: 60,
          align: "center"
        },
        {
          title: this.$t("message.loginuser"),
          key: "username"
        },
        {
          title: this.$t("message.interest"),
          key: "interestid",
          render: (h, params) => {
            for (var i = this.interestList.length - 1; i >= 0; i--) {
              if (params.row.interestid == this.interestList[i].id) {
                return h("div", [
                  h("strong", null, this.interestList[i].title)
                ]);
              }
            }
          }
        },
        {
          title: this.$t("message.Title"),
          width: 500,
          key: "title"
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
            return h(
              "a",
              {
                attrs: {
                  href:
                    this.$store.state.domainName +
                    "/page/card/" +
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
      pageInfo: this.pageInfo,
      interestid: this.interestid
    });
    this.axios({
      method: "get",
      url: "/public/interests"
    })
      .then(
        function(response) {
          this.interestList = response.data.data;
        }.bind(this)
      )
      .catch(
        function(error) {
          alter(error);
        }.bind(this)
      );
  },
  methods: {
    /*pageInfo实体初始化*/
    initPageInfo() {
      this.pageInfo.page = 0;
      this.pageInfo.pageSize = 10;
    },
    postcardSet(e) {
      this.postcard.id = e.id;
      this.postcard.username = e.username;
      this.postcard.title = e.title;
      this.postcard.interestid = e.interestid;
      this.postcard.content = e.content;
      this.postcard.createtime = e.createtime;
      this.postcard.replytime = e.replytime;
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
        url: "/public/postcards",
        params: {
          page: e.pageInfo.page,
          pageSize: e.pageInfo.pageSize,
          interestid: e.interestid
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
    search() {
      this.initPageInfo();
      this.getTable({
        pageInfo: this.pageInfo,
        interestid: this.interestid
      });
    },
    /*分页点击事件*/
    pageSearch(e) {
      this.pageInfo.page = e - 1;
      this.getTable({
        pageInfo: this.pageInfo,
        interestid: this.interestid
      });
    },
    /*modal的cancel点击事件*/
    cancel() {
      this.modal = false;
    },
    /*表格中双击事件*/
    dblclick(e) {
      this.postcardSet(e);
      this.modal = true;
    },
    postcardInfo(e) {
      console.log(e);
      this.postcardSet(e);
      this.modal = true;
    },
    del() {
      if (this.groupId != null && this.groupId != "") {
        this.axios({
          method: "delete",
          url: "/postcards",
          data: this.groupId
        })
          .then(
            function(response) {
              this.getTable({
                pageInfo: this.pageInfo,
                interestid: this.interestid
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
