<style scoped>
  .card-body {
    padding: 10px;
  }
  .content{
    word-wrap: break-word;
    word-break: break-all;
    overflow: hidden;
  }
  .chat{
    display: inline;
    margin-right: 50px;
    color:#f90;
  }
  .chat span{
    margin-left: 2px;
  }
  .title {
    margin-bottom: 8px;
  }
  .title span{
    color: #2d64b3;
  }
  .info {
    margin-bottom: 5px;
  }
  .info p{
    width:100%;
    overflow:hidden;
    text-overflow:ellipsis; 
    white-space:nowrap;
  }
  .list-user-other {
    height: 24px;
    line-height: 24px;
  }
  .list-user-other dt{
    float: left;
    margin: 0 6px 0 0;
  }
  .list-user-other dd{
    float: left;
    font-size: 14px;
    color: #8a8a8a;
    line-height: 24px;
  }
  .list-user-other .right-info {
    line-height: 24px;
    float: right;
  }
  .list-user-other .right-info .text {
    margin-right: 4px;
    color: #8a8a8a;
  }
  .list-user-other .right-info .num {
    color: #3399ea;
  }
  .interval {
    float: left;
    width: 1px;
    height: 12px;
    border-radius: 50%;
    background-color: #e0e0e0;
    margin-top: 6px;
    margin-left: 8px;
    margin-right: 8px;
  }
</style>
<template>
   
</template>
<script>
export default {
  data() {
    return {
      searchContent:null,
      articleList: [],
      total: 0,
      pageInfo: {
        page: 0,
        pageSize: 20
      }
    };
  },
  mounted() {
    this.getArticle({
      pageInfo: this.pageInfo
    });
  },
  watch: {
    $route: ["search"]
  },
  methods: {
    search(){
      this.searchContent = this.$route.query.searchValue;
      this.getArticle({
        pageInfo: this.pageInfo
      });
    },
    getArticle(e) {
      this.axios({
        method: "get",
        url: "/public/articles",
        params: {
          page: e.pageInfo.page,
          pageSize: e.pageInfo.pageSize,
          searchContent: this.searchContent
        }
      })
        .then(
          function(response) {
            this.articleList = response.data.data.data;
            this.total = response.data.data.totalCount;
          }.bind(this)
        )
        .catch(function(error) {
          alert(error);
        });
    },
    pageSearch(e) {
      this.pageInfo.page = e - 1;
      this.getArticle({
        pageInfo: this.pageInfo,
      });
    }
  }
};
</script>
