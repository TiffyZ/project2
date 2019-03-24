<template>
  <div class="animated fadeIn">


<Row>
    <Col :md="24">
          <intro-chart-count> </intro-chart-count>

    </Col>

</Row>

 <Row>
        <Col span="24" >
          <h3 style="text-align:center">We Have</h3>
            
        </Col>
    </Row>


    <Row>

        <Col :md="8" >
          <div class="dashboard_feature">
            <Icon type="ios-color-wand" size="50"></Icon>
            <h5 style="font-family: 'Arial Rounded MT Bold'">Rich Experience</h5>
            <p style="font-family: 'Arial Rounded MT Bold'">the highest quality of service</p>
              <p style="font-family: 'Arial Rounded MT Bold'"> Years of experience </p>

                <p style="font-family: 'Arial Rounded MT Bold'"><a href="https://www.iviewui.com/components/input" target="_blank">Classic case</a></p>
            </div>
            
        </Col>

            <Col :md="8" >

          <div class="dashboard_feature">
            <Icon type="android-phone-portrait" size="50"></Icon>

            <h5 style="font-family: 'Arial Rounded MT Bold'">Rich policy</h5>
            <p style="font-family: 'Arial Rounded MT Bold'">Offers a wealth of insurance options </p>
            <p style="font-family: 'Arial Rounded MT Bold'">You can choose whatever you want</p>
                <p style="font-family: 'Arial Rounded MT Bold'">    <a style="    color: #2d8cf0;cursor: pointer;">policy list</a></p>
            </div>
            
        </Col>
          <Col :md="8" >
          <div class="dashboard_feature">
            <Icon type="eye" size="50"></Icon>
            <h5 style="font-family: 'Arial Rounded MT Bold'">High performance-price ratio</h5>
            <p style="font-family: 'Arial Rounded MT Bold'">We provide the highest quality service</p>
            <p style="font-family: 'Arial Rounded MT Bold'">But the cheapest price</p>

                <p style="font-family: 'Arial Rounded MT Bold'"> <a style="    color: #2d8cf0;cursor: pointer;" @click="test_logout">check the price</a></p>
            </div>
            
        </Col>

    </Row>

      <Row>
          <p> </p>
      </Row>

 <Row>
     <p style="font-family: 'Arial Rounded MT Bold'">    Our company have xxx years insurance experience, since 1990,
        Hibernia - Sino travel insurance company, is a large state-owned financial insurance Enterprises,
         headquartered in hibernia, the world's top 500 enterprises, the top 500 Chinese brands,
         is a central financial enterprise.
         [1] The company was founded in 1949 by the original company of Ireland,
         1996 was established as Ireland Insurance Life Insurance Co., Ltd.,
         in 1999 changed its name to the United States life Insurance company.
         In 2003, with the consent of the State Council and the approval of the CIRC,
         the former Ireland Life Insurance Company was restructured into a
         Ireland life insurance (group) company with a comprehensive scope covering life insurance,
         property insurance, pension insurance (Enterprise annuity), asset management, alternative investment,
         overseas business, e-commerce and other fields. And through the capital operation to participate in a number of banks,
         securities companies and other financial and non-financial institutions</p>

 </Row>

  <Row>
      <p> </p>
  </Row>

 <Row>
        <Col span="24" >
          <h3 style="text-align:center;font-family: 'Arial Rounded MT Bold'">Insurance</h3>
            
        </Col>
    </Row>




 <Row>
        <Col :md="12" >
          
          <p><a href="http://www.cnblogs.com/herozhou/p/7434931.html" target="_blank">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</a></p>
          <p><a href="http://www.cnblogs.com/herozhou/p/7441702.html" target="_blank">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</a></p>
          

          <p style="font-family: 'Arial Rounded MT Bold'">Different type of insurance for you to choose from</p>
          <p style="font-family: 'Arial Rounded MT Bold'">Hope you enjoy you travel time</p>

        </Col>

         <Col :md="12" >

          <intro-chart-pie> </intro-chart-pie>
        </Col>


</Row>


    <Row>
        <Col span="24" >
          <h3 style="text-align:center ;font-family: 'Arial Rounded MT Bold'">Contact With Us</h3>
            
        </Col>
    </Row>


     <Row class="row-margin-top">
        <Col :xs="12" :sm="12" :md="8" :lg="8">
          <h5 style="font-family: 'Arial Rounded MT Bold'">LOCATION</h5>
            <p style="font-family: 'Arial Rounded MT Bold'">
                28042，Paseo de LasDoce Estrellas 4
            </p>
            <p style="font-family: 'Arial Rounded MT Bold'"><a href="http://censorship.dressplus.cn/#/introduction" target="_blank">立即访问</a></p>



        </Col>

  
        <Col :xs="12" :sm="12" :md="8" :lg="8">
          <h5 style="font-family: 'Arial Rounded MT Bold'">EMAIL</h5>
            <p style="font-family: 'Arial Rounded MT Bold'">hibernia-sino@hotmail.com
            </p>
            <p style="font-family: 'Arial Rounded MT Bold'"><a href="http://faceattr.dressplus.cn/" target="_blank">立即访问</a></p>

        </Col>
       
      

        <Col :xs="12" :sm="12" :md="8" :lg="8">
          <h5 style="font-family: 'Arial Rounded MT Bold'">CALL</h5>
            <p style="font-family: 'Arial Rounded MT Bold'">
                0755-66803070
            </p>
            <p style="font-family: 'Arial Rounded MT Bold'"><a href="http://recommand-demo.dressplus.cn" target="_blank">立即访问</a></p>

        </Col>
     
    </Row>



  </div>
</template>

<script>
import IntroChartCount from './charts/IntroChartCount';
import IntroChartPie from './charts/IntroChartPie';

export default {
  components:{IntroChartCount,IntroChartPie},
  name: 'dashboard',
        data () {
            return {
                value1: 0,
                value2: 0,
                value3: 0,

                speed:10000,
            }
        },
        methods:{
              test_logout(){
                 this.$store.dispatch('LogOut').then(() => {
                    this.$router.push({ path: '/login' });
                  }).catch(err => {
                    this.$message.error(err);
                  });
              }
        },
        mounted(){
                const token=this.$store.getters.token;
                
            
        }
}
</script>


<style type="text/css" scoped>
 .time{
        font-size: 14px;
        font-weight: bold;
    }
    .content{
        padding-left: 5px;
    }
.dashboard_feature{
  text-align:center;
}
  .demo-carousel{
     height: 600px;
    line-height: 200px;
    text-align: center;
    color: #fff;
    font-size: 20px;
    background: #506b9e;
  }
  .demo-carousel img{
      height: 100%;
      width: 100%;
  }
  h3,h4,h5 {
      margin:12px;
  }
  h3{
    margin-bottom: 20px;
  }
  p{
    margin: 12px;
  }
  .row-margin-top {
    margin-top:30px;
  }
</style>