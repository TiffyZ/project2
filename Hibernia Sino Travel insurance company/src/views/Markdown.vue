<template>
<div  :style="backgroundDiv">
  <div class="components-container">

<h3 class="intro-head">用户申请窗口👍</h3>

<center>


<div class="input_control">
<table>

<caption style="text-decoration:underline;font-weight:bold;"><font face="verdana" color="orange" size="5">APPLICATION TABLE</font></caption>
<tr ><td>Name：</td><td><Input width="100%" type="text"></Input></td></tr>
<tr><td>Phone：</td><td><Input type="tel"></Input></td></tr>
<tr><td>E-mail：</td><td><Input type="email"></Input></td></tr>
<tr><td>Gender：</td><td><Radio-group>
                <Radio label="male">male</Radio>
                <Radio label="female">female</Radio>
              </Radio-group></td></tr>
<tr><td>Submit Options：</td><td><Select><Option>a</Option><Option>b</Option><Option>c</Option><Option>d</Option></Select></td></tr>
<tr><td>Remark：</td><td><Input type="tel"></Input></td></tr>
</table>
    <Button type="info">SUBMIT</Button>
    <Button type="warning">RESET</Button>


<!-- <input type="submit" value="submit"/>
<input type="reset" value="reset" />
 -->
<!-- <input type="submit" color = white value="submit" >　<input type="reset" color=black value="Recite"> -->


</div>

</center> 
<mavon-editor  style="  margin-top: 80px" v-model="content"/>
</div>
</div>
</template>



<style>



table,table tr th, table tr td { border:1px solid #C0C0C0; }
table { width: 50%; min-height: 25px; line-height: 25px; text-align: center; border-collapse: collapse;}   
.input_control{
  width: 100%;
  margin:120px auto;

}


input[type="text"].#btn1,#btn2{
  box-sizing: border-box;
  text-align:center;
  font-size:1.4em;
  height:3.7em;
  border-radius:4px;
  border:3px solid #c8cccf;
  color:"white";
  -web-kit-appearance:none;
  -moz-appearance: none;
  display:block;
  outline:0;
  padding:0 1em;
  text-decoration:none;
  width:100%;
}
input[type="text"]:focus{
  border:1px ;
}
</style>

<script type="text/javascript">
  export default {
  data() {
    return {
    backgroundDiv: {
        backgroundImage:'url(' + require('static/img/blue2.png') + ')',
        height:"100%",

        backgroundRepeat:'no-repeat',backgroundSize:'100% 250%'    
        }
      }
  }
}
</script>
