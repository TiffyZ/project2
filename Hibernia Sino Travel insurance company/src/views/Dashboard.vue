<template>
  <div class="animated fadeIn">

      <Row>
          <Col span="24" >
              <h3 style="text-align:center;font-family: Algerian">Hibernia-Sino Travel insurance company</h3>
          </Col>
      </Row>

      <Row>
          <Col :md="12" >

              <div class="dashboard_feature">

                  <img src="static/img/timg.jpg" width="500" height="300px" size = "50">

              </div>

          </Col>
          <Col :md="12" >
              <div class="dashboard_feature">

                  <img src="static/img/Ireland.jpg" width="500" height="300px" size = "50">

              </div>

          </Col>

      </Row>
      <div style="" class="doc-content">
      <Row :gutter="1" >
          <Col :md="24" >

              <Row >
                  <Col span="12" >

                          <div class="wrap">
                              <cool-hover-button type="swipe">Safe</cool-hover-button>
                              <cool-hover-button type="swipe" shap="out">Cheap </cool-hover-button>
                          </div>

                          <div class="wrap">
                              <cool-hover-button type="reassuring">professional</cool-hover-button>
                              <cool-hover-button type="alternate">passionate</cool-hover-button>
                          </div>
                  </Col>
                      <Col span="12" >
                          <div class="wrap">
                              <cool-hover-button type="swipe">patient</cool-hover-button>
                              <cool-hover-button type="swipe" shap="out"> careful</cool-hover-button>
                          </div>

                          <div class="wrap">
                              <cool-hover-button type="slice"> serious</cool-hover-button>
                              <cool-hover-button type="alternate">nice</cool-hover-button>
                          </div>

                  </Col>
              </Row>
          </Col>
      </Row>
      </div>

      <div style="" class="doc-content">
          <Row>
              <Col span="24" >
                  <h3 style="text-align:center;font-family:'Arial Rounded MT Bold'">Travel Insurance Regulatory Information</h3>

              </Col>

          </Row>
          <p style="font-family: 'Arial Rounded MT Bold'"> Travel Insurance is introduced by Hughes Insurance and purchased through, underwritten and administered by
              Chubb European Group SE. Hughes Insurance Services Limited,
              trading as Hughes Insurance, is authorised by the Financial Conduct Authority in the UK and is regulated by the Central Bank
              of Ireland for Conduct of Business rules. Chubb European Group SE trading as Chubb,
              Chubb Bermuda International and Combined Insurance,
              is authorised by the Autorité de contrôle prudentiel et de résolution (ACPR) in France
              and is regulated by the Central Bank of Ireland for conduct of business rules.
              Registered in Ireland No. 904967 at 5 George’s Dock,
              Dublin 1. Chubb European Group SE is an undertaking governed by the provisions of the French
              insurance code with registration number 450 327 374 RCS Nanterre and the following
              registered office: La Tour Carpe Diem, 31 Place des Corolles, Esplanade Nord, 92400 Courbevoie, France.
              Chubb European Group SE has fully paid share capital of €896,176,662.</p>


      </div>
      <Row  :gutter="16" style="margin-top:45px">


          <Col :xs="24" :sm="12"   :md="12" :lg="12">

              <div class="state-overview">
                  <Col span="12">

                      <div class="panel purple">
                          <div class="symbol">
                              <Icon type="clipboard" size="50" color="white"></Icon>

                          </div>
                          <div  class="state-value">
                              <div class="value">
                                  230
                              </div>
                              <div class="title">
                                  New Order
                              </div>
                          </div>
                      </div>


                  </Col>
                  <Col span="12">
                      <div  class="panel red">
                          <div class="symbol">
                              <Icon type="pricetags" size="50" color="white"></Icon>
                          </div>
                          <div  class="state-value">
                              <div class="value">
                                  3490
                              </div>
                              <div class="title">
                                  Copy Sold
                              </div>
                          </div>

                      </div>
                  </Col>
              </div>


              <div  class="state-overview">
                  <Col span="12" >

                      <div class="panel blue" >
                          <div class="symbol">
                              <Icon type="cash" size="50" color="white"></Icon>

                          </div>
                          <div  class="state-value">
                              <div class="value">
                                  22014
                              </div>
                              <div class="title">
                                  Total Revenue
                              </div>
                          </div>
                      </div>

                  </Col>
                  <Col span="12" >
                      <div class="panel green" >
                          <div class="symbol">
                              <Icon type="eye" size="50" color="white"></Icon>

                          </div>
                          <div  class="state-value">
                              <div class="value">
                                  390
                              </div>
                              <div class="title">
                                  Unique Visitors
                              </div>
                          </div>
                      </div>
                  </Col>



              </div>



          </Col>




          <Col  :xs="24" :sm="12"   :md="12" :lg="12" >


              <dash-chart-visitor></dash-chart-visitor>


          </Col>

      </Row>


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



   


  </div>
</template>

<script>
import DashChartCount from './charts/DashChartCount';
import DashChartVisitor from './charts/DashChartVisitor';
import DashChartLarge from './charts/DashChartLarge';
import VueCalendar from './components/VueCalendar';
import TodoList from '@/components/TodoList'
import HoverButton from '@/components/Button/HoverButton';
import CoolHoverButton from '@/components/Button/CoolHoverButton';
import IntroChartCount from './charts/IntroChartCount';
import IntroChartPie from './charts/IntroChartPie';

export default {
  components:{DashChartCount,DashChartVisitor,DashChartLarge,VueCalendar,TodoList,HoverButton,CoolHoverButton,IntroChartCount,IntroChartPie},
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
                
             this.$Notice.success({
                    title: 'Welcome ',
                    desc:  `Hope you have a nice day
                            <br>
                            `,
                    duration: 3
                });

        }

}
</script>




<style type="text/css" scoped>
.state-overview{color:#fff}.state-overview .ivu-col{margin-bottom:20px}.state-overview .state-value .value{font-size:24px;font-weight:700;margin-bottom:5px}.state-overview .state-value .title{font-size:14px}.state-value{width:60%;display:inline-block}.symbol{width:35%;display:inline-block}.state-overview .panel{border-radius:4px;padding:25px 20px}.panel.purple{background:#6a8abe;box-shadow:0 5px 0 #5f7cab}.panel.red{background-color:#fc8675;box-shadow:0 5px 0 #e27869}.panel.blue{background:#5ab6df;box-shadow:0 5px 0 #51a3c8}.panel.green{background:#4acacb;box-shadow:0 5px 0 #42b5b6}.dash_income_chart{float:left}.ivu-row{margin-bottom:20px!important}.dash_income{border-radius:4px;background-color:#fff;height:80px;padding:15px}.staff_name{font-weight:900;font-size:16px}.staff_progress{margin-left:10px;width:90%}.staff_progress p{margin:0}.staff_list{border-radius:4px;margin-top:0;height:90px;display:flex;align-items:center}.animated{background-color:#eff0f4}li{margin-bottom:11px;margin-left:10px;margin-right:10px}.num{font-weight:700}.time{font-size:14px;font-weight:700}.content{padding-left:5px}.dashboard_feature{text-align:center}.demo-carousel{height:600px;line-height:200px;text-align:center;color:#fff;font-size:20px;background:#506b9e}.demo-carousel img{height:100%;width:100%}h3,h4,h5{margin:12px}h3{margin-bottom:20px}p{margin:12px}.row-margin-top{margin-top:30px}.state-info{position:absolute;right:15px;top:20px;margin-bottom:30px}.state-info .panel{margin-bottom:20px;float:right;margin-left:15px}.panel{background-color:#fff;border:1px solid transparent;border-radius:4px;-webkit-box-shadow:0 1px 1px rgba(0,0,0,.05);box-shadow:0 1px 1px rgba(0,0,0,.05)}.panel-body{padding:15px}.state-info .panel .summary{float:left;margin-right:20px}.state-info .panel .summary span{color:#49586e;font-size:13px;font-weight:400;text-transform:uppercase;margin-bottom:10px}.state-info .panel .summary h3.red-txt{color:#fc8675}.state-info .panel .summary h3.green-txt{color:#65cea7}.state-info .panel .summary h3{font-size:200%;font-weight:700;line-height:20px;margin:0}.page-heading h3{color:#49586e;font-size:25px;font-size:11%;font-weight:400;margin:10px 0}.chart-bar{float:right;margin-top:5px}.chart-bar img{display:inline-block;width:68px;height:45px;vertical-align:top}@media screen and (max-width:767px){.state-info{position:static;width:100%;margin-top:15px}.state-info .panel{width:100%}}.panel.blue-box{background:none repeat scroll 0 0 #5ab5de;box-shadow:0 5px 0 #51a3c7;color:#fff}.twt-info h3{font-family:'Open Sans',sans-serif;font-size:16px;font-weight:900;margin:10px 0 30px 0;text-align:center}.twt-info p{font-size:18px;line-height:25px;font-style:italic;margin:0 0 20px 0;text-align:center}.twt-info p a{color:#98fdf4}.media:first-child{margin-top:0}.media.usr-info>.pull-left{margin-right:20px;margin-top:10px}.media>.pull-left{margin-right:10px}.pull-left{float:left}.pull-left{float:left!important}.custom-trq-footer{background:none repeat scroll 0 0 #4eb6b7!important;box-shadow:0 5px 0 #46a3a4;color:#fff;border-top:none}.panel-footer{padding:10px 15px;background-color:#f5f5f5;border-top:1px solid #ddd;border-bottom-right-radius:3px;border-bottom-left-radius:3px}.usr-info .thumb{width:80px;height:80px;border-radius:50%;-webkit-border-radius:50%}.usr-info img{vertical-align:middle}.usr-info h4{color:#658585;margin-bottom:0}.media-heading{margin:0 0 5px}.usr-info .media-body span{color:#ea755c;font-size:12px;margin-bottom:20px;display:inline-block}.usr-info .media-body p{color:#b6bcbc}ul.user-states{list-style-type:none;padding:20px 0}ul.user-states li{text-align:center;float:left;width:33%;font-size:18px;margin:0}
</style>
<style scoped lang="css">
    .btn {
        margin-bottom: 4px;
    }

    .doc-content{
        margin-top:10px;

        margin-bottom:50px;
        padding: 5px;
        line-height: 20px;
    }
    .doc-content p{
        margin-bottom: 5px;
        margin-top: 5px;

    }
    .doc-content h5{
        margin-bottom: 10px;
        margin-top: 10px;

    }
    .showallcode{
        height: 100px;
    }
    .hidecode{
        height: 100%;
    }
    .highlight{
        transition:1000ms ease all;
    }

</style>
