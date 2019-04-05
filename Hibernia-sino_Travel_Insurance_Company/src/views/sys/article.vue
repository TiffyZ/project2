<style scoped>
  .operation-button{
    margin-right: 3px;
  }
</style>
<template>
<div style="margin: 20px;">
        <div>
            <Row style="margin-bottom: 25px;">
                <Col span="8">Form name：
                    <Select v-model="menuId" filterable clearable style="width: 200px">
                        <Option v-for="item in menuList" :value="item.value" :key="item.value">{{ item.label }}</Option>
                    </Select>
                </Col>
                <Col span="8"><Button type="primary" shape="circle" icon="ios-search" @click="search()">Search</Button></Col>
            </Row>
        </div>            
        <div>
            <ul>
                <li>
                    <Button class="operation-button" type="primary" icon="md-add" @click="openNewModal()">create new</Button>
                    <Button class="operation-button" type="success" icon="md-build" @click="openModifyModal()">operate</Button>
                    <Button type="error" icon="md-trash" @click="del()">delete</Button>
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
        <!--添加modal-->  
        <Modal :mask-closable="false" :visible.sync="newModal" :loading = "loading" v-model="newModal" width="600" title="new" @on-ok="newOk('menuNew')" @on-cancel="cancel()">
            <Form ref="menuNew" :model="menuNew" :rules="ruleNew" :label-width="80" >
                <Row>
                    <Col span="12">
                        <Form-item label="Form name:" prop="name">
                            <Input v-model="menuNew.name" style="width: 204px"/>
                        </Form-item>
                    </Col>
                    <Col span="12">
                    </Col>
                </Row>
                <Row>
                    <Col span="12">
                        <Form-item label="User' ID:" prop="parentId">
                            <Input v-model="menuNew.parentId" style="width: 204px"/>
                        </Form-item>
                    </Col>
                    <Col span="12">
                    </Col>
                </Row>
                <Row>
                    <Col span="12">
                        <Form-item label="Remark:" prop="icon">
                            <Input v-model="menuNew.icon" style="width: 204px"/>
                        </Form-item>
                        <Form-item label="schedule(进度):" prop="sort">
                            <Input v-model="menuModify.sort" style="width: 204px"/>
                        </Form-item>
                    </Col>
                </Row>
                <Form-item label="Added remark:" prop="remark">
                     <Input v-model="menuNew.remark" type="textarea" :autosize="{minRows: 2,maxRows: 5}"></Input>
                </Form-item>
            </Form>
        </Modal>
        <!--修改modal-->  
        <Modal :mask-closable="false" :visible.sync="modifyModal" :loading = "loading" v-model="modifyModal" width="600" title="modify" @on-ok="modifyOk('menuModify')" @on-cancel="cancel()">
            <Form ref="menuModify" :model="menuModify" :rules="ruleModify" :label-width="80" >
                <Row>
                    <Col span="12">
                        <Form-item label="Form name:" prop="name">
                            <Input v-model="menuModify.name" style="width: 204px"/>
                        </Form-item>
                    </Col>
                    <Col span="12">
                        
                    </Col>
                </Row>
                <Row>
                    <Col span="12">
                        <Form-item label="User ID:" prop="parentId">
                            <Input v-model="menuModify.parentId" style="width: 204px"/>
                        </Form-item>
                    </Col>
                    <Col span="12">
                        <Form-item label="schedule(进度):" prop="sort">
                            <Input v-model="menuModify.sort" style="width: 204px"/>
                        </Form-item>
                    </Col>
                </Row>
                <Row>
                    <Col span="12">
                        <Form-item label="Remark:" prop="icon">
                            <Input v-model="menuModify.icon" style="width: 204px"/>
                        </Form-item>
                    </Col>
                </Row>
                <Form-item label="Added remarks:" prop="remark">
                     <Input v-model="menuModify.remark" type="textarea" :autosize="{minRows: 2,maxRows: 5}"></Input>
                </Form-item>
            </Form>
        </Modal>
    </div>
</template>
<script>
export default {
  data() {
    return {
      /*用于查找的菜单id*/
      menuId: null,
      /*选择的数量*/
      count: null,
      /*选中的组数据*/
      groupId: null,
      /*新建modal的显示参数*/
      newModal: false,
      /*修改modal的显示参数*/
      modifyModal: false,
      /*分页total属性绑定值*/
      total: 0,
      /*loading*/
      loading: true,
      /*pageInfo实体*/
      pageInfo: {
        page: 0,
        pageSize: 10
      },
      /*menu实体*/
      menu: {
        id: null,
        name: null,
        url: null,
        parentId: null,
        sort: null,
        remark: null,
        icon: null
      },
      /*用于添加的menu实体*/
      menuNew: {
        id: null,
        name: null,
        url: null,
        parentId: null,
        sort: null,
        remark: null,
        icon: null
      },
      /*用于修改的menu实体*/
      menuModify: {
        id: null,
        name: null,
        url: null,
        parentId: null,
        sort: null,
        remark: null,
        icon: null
      },
      /*新建验证*/
      ruleNew: {
        name: [
          {
            type: "string",
            required: true,
            message: "Input form name",
            trigger: "blur"
          }
        ],
    
        parentId: [
          { required: true, message: "type users' ID", trigger: "blur" },
          {
            validator(rule, value, callback) {
              if (!Number.isInteger(+value)) {
                callback(new Error("type a number please"));
            } else {
                callback();
              }
            },
            trigger: "blur"
          }
        ],
        
        icon: [
          {
            type: "string",
            required: true,
            message: "input remarks",
            trigger: "blur"
          }
        ]
      },
      /*修改验证*/
      ruleModify: {
        name: [
          {
            type: "string",
            required: true,
            message: "type form's name",
            trigger: "blur"
          }
        ],
        
        parentId: [
          { required: true, message: "type users' ID", trigger: "blur" },
          {
            validator(rule, value, callback) {
              if (!Number.isInteger(+value)) {
                callback(new Error("type a number"));
              } else {
                callback();
              }
            },
            trigger: "blur"
          }
        ],
        sort: [
          { required: true, message: "type schedule（进度）", trigger: "blur" },
          {
            validator(rule, value, callback) {
              if (!Number.isInteger(+value)) {
                callback(new Error("type a number"));
              } else {
                callback();
              }
            },
            trigger: "blur"
          }
        ],
        icon: [
          {
            type: "string",
            required: true,
            message: "input icon",
            trigger: "blur"
          }
        ]
      },
      /*菜单列表*/
      menuList: [],
      /*生产类型表显示字段*/
      columns1: [
        {
          type: "selection",
          width: 60,
          align: "center"
        },
        {
          title: "Form ID",
          key: "id"
        },
        {
          title: "Form Name",
          key: "name"
        },
        
        {
          title: "User's id",
          key: "parentId"
        },
        {
          title: "schedule（进度）",
          key: "sort"
        },
        {
          title: "Remark",
          key: "icon"
        }
      ],
      /*生产类型表数据*/
      data1: []
    };
  },
  mounted() {
    /*页面初始化调用方法*/
    this.getTable({
      pageInfo: this.pageInfo,
      menuId: this.menuId
    });
    this.axios({
      method: "get",
      url: "/menus/parentId",
      params: {
        parentId: 0
      }
    })
      .then(
        function(response) {
          var listTemp = response.data.data;
          for (var i = 0; i < listTemp.length; i++) {
            this.menuList.push({
              value: listTemp[i].id,
              label: listTemp[i].name
            });
          }
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
    /*menu实体初始化*/
    initMenu() {
      this.menu.id = null;
      this.menu.name = null;
      this.menu.url = null;
      this.menu.parentId = null;
      this.menu.sort = null;
      this.menu.remark = null;
      this.menu.icon = null;
    },
    /*menuNew实体初始化*/
    initMenuNew() {
      this.menuNew.id = null;
      this.menuNew.name = null;
      this.menuNew.url = null;
      this.menuNew.parentId = null;
      this.menuNew.sort = null;
      this.menuNew.remark = null;
      this.menuNew.icon = null;
    },
    /*menuModify实体初始化*/
    initMenuModify() {
      this.menuModify.id = null;
      this.menuModify.name = null;
      this.menuModify.url = null;
      this.menuModify.parentId = null;
      this.menuModify.sort = null;
      this.menuModify.remark = null;
      this.menuModify.icon = null;
    },
    /*menuNew设置*/
    menuSet(e) {
      this.menu.id = e.id;
      this.menu.name = e.name;
      this.menu.url = e.url;
      this.menu.parentId = e.parentId;
      this.menu.sort = e.sort;
      this.menu.remark = e.remark;
      this.menu.icon = e.icon;
    },
    /*menuNew设置*/
    menuNewSet(e) {
      this.menuNew.id = e.id;
      this.menuNew.name = e.name;
      this.menuNew.url = e.url;
      this.menuNew.parentId = e.parentId;
      this.menuNew.sort = e.sort;
      this.menuNew.remark = e.remark;
      this.menuNew.icon = e.icon;
    },
    /*menuModify设置*/
    menuModifySet(e) {
      this.menuModify.id = e.id;
      this.menuModify.name = e.name;
      this.menuModify.url = e.url;
      this.menuModify.parentId = e.parentId + "";
      this.menuModify.sort = e.sort + "";
      this.menuModify.remark = e.remark;
      this.menuModify.icon = e.icon;
    },
    /*得到表数据*/
    getTable(e) {
      this.axios({
        method: "get",
        url: "/menus",
        params: {
          page: e.pageInfo.page,
          pageSize: e.pageInfo.pageSize,
          menuId: e.menuId
        }
      })
        .then(
          function(response) {
            this.data1 = response.data.data.data;
            this.total = response.data.data.totalCount;
          }.bind(this)
        )
        .catch(function(error) {
          alert(error);
        });
    },
    /*搜索按钮点击事件*/
    search() {
      this.initPageInfo();
      this.getTable({
        pageInfo: this.pageInfo,
        menuId: this.menuId
      });
    },
    /*分页点击事件*/
    pageSearch(e) {
      this.pageInfo.page = e - 1;
      this.getTable({
        pageInfo: this.pageInfo,
        menuId: this.menuId
      });
    },
    /*新建点击触发事件*/
    openNewModal() {
      this.newModal = true;
      this.initMenuNew();
      this.data1.sort();
      this.count = 0;
      this.groupId = null;
    },
    /*新建modal的newOk点击事件*/
    newOk(menuNew) {
      this.$refs[menuNew].validate(valid => {
        if (valid) {
          this.initMenu();
          this.menuSet(this.menuNew);
          this.axios({
            method: "post",
            url: "/menus/menu",
            data: this.menu
          })
            .then(
              function(response) {
                this.initMenuNew();
                this.getTable({
                  pageInfo: this.pageInfo,
                  menuId: this.menuId
                });
                this.$Message.info("create successfully");
              }.bind(this)
            )
            .catch(function(error) {
              alert(error);
            });
          this.newModal = false;
        } else {
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
        this.$Message.warning("at least choose one(only choose one)");
      } else {
        this.modifyModal = true;
      }
    },
    /*修改modal的modifyOk点击事件*/
    modifyOk(menuModify) {
      this.$refs[menuModify].validate(valid => {
        if (valid) {
          this.initMenu();
          this.menuSet(this.menuModify);
          this.axios({
            method: "put",
            url: "/menus/" + this.menu.id,
            data: this.menu
          })
            .then(
              function(response) {
                this.initMenuNew();
                this.getTable({
                  pageInfo: this.pageInfo,
                  menuId: this.menuId
                });
                this.$Message.info("modify successfully");
              }.bind(this)
            )
            .catch(function(error) {
              alert(error);
            });
          this.modifyModal = false;
        } else {
          this.$Message.error("fail to submit!");
          setTimeout(() => {
            this.loading = false;
            this.$nextTick(() => {
              this.loading = true;
            });
          }, 1000);
        }
      });
    },
    /*modal的cancel点击事件*/
    cancel() {
      this.$Message.info("click cancel");
    },
    /*table选择后触发事件*/
    change(e) {
      if (e.length == 1) {
        this.menuModifySet(e["0"]);
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
          url: "/menus",
          data: this.groupId
        })
          .then(
            function(response) {
              this.getTable({
                pageInfo: this.pageInfo,
                menuId: this.menuId
              });
              this.groupId = null;
              this.count = 0;
              this.$Message.info("delete successfully");
            }.bind(this)
          )
          .catch(function(error) {
            alert(error);
          });
      }
    },
    /*表格中双击事件*/
    dblclick(e) {
      this.menuModifySet(e);
      this.modifyModal = true;
      this.data1.sort();
    }
  }
};
</script>
 
 

