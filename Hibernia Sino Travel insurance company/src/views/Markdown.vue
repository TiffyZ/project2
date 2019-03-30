

<template>
  <div class="components-container">

<h3 class="intro-head">用户申请窗口👍</h3>

<center>
<div class="input_control">
<table>
<caption style="text-decoration:underline;font-weight:bold;">Application Table</caption>
<tr ><td>Name：</td><td><input width="100%" type="text"></td></tr>
<tr><td>Phone：</td><td><input type="text"></td></tr>
<tr><td>E-mail：</td><td><input type="text"></td></tr>
<tr><td>Gender：</td><td><select><option>male</option><option>female</option></select></td></tr>
<tr><td>Submit Options：</td><td><select><option>travel</option><option>car</option><option>c</option><option>d</option></select></td></tr>
<tr><td>Remark：</td><td><textarea></textarea></td></tr>

</table>
<Button type="input" shape="circle">Submit</Button>
<Button type="reset" shape="circle">Recite</Button>
<!-- <input type="submit" color = white value="submit" >　<input type="reset" color=black value="Recite"> -->
  <p>  ccc</p>
  <p></p>

  <div id="app">
    <table>
      <thead>
      <tr>
        <th>ID</th>
        <th>名称</th>
        <th>昵称</th>
      </tr>
      </thead>
      <tbody>
      <tr v-for="user in users">
        <td>{{ user.id  }}</td>
        <td>{{ user.username  }}</td>
        <td>{{ user.age  }}</td>
      </tr>
      </tbody>
    </table>
  </div>


  <div>
    <button @click="btn">点击获取数据</button>
  </div>


</div>

</center> 

<mavon-editor  style="  margin-top: 80px" v-model="content"/>
  </div>



</template>

<script>
  export default {
    methods:{
      btn(){
        this.axios.get('https://easy-mock.com/mock/5bff9732ec952807e818415e/admin/team')
                .then((response) => {
                  console.log(response);
                })
                .catch((error) => {
                  console.log(error);
                });
      }
    }
  }
</script>


<style>
table,table tr th, table tr td { border:1px solid #0094ff; }
table { width: 50%; min-height: 25px; line-height: 25px; text-align: center; border-collapse: collapse;}   
.input_control{
  width: 100%;
  margin:20px auto;
}
input[type="text"]#btn1,#btn2{
  box-sizing: border-box;
  text-align:center;
  font-size:1.4em;
  height:2.7em;
  border-radius:4px;
  border:1px solid #c8cccf;
  color:#6a6f77;
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


