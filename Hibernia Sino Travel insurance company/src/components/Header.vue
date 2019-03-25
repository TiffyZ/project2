<template>
  <navbar>
     <a class="navbar-brand" ></a>

    <ul class="nav navbar-nav d-md-down-none">
      
       <li class="nav-item header-item">
  

          <router-link tag="div" to='/'  style="height:55px;" class="nav-link">
            <p><Icon type="compose" size='30' color=orange></Icon></p>
            <p  style="color:white"> HOME </p>
        </router-link> 
      </li>
        <li class="nav-item header-item">
        
        <router-link tag="div" to='/home1'  style="height:55px;" class="nav-link">
            <p><Icon type="stats-bars" size='30' color=orange></Icon></p>
            <p  style="color:white"> New Policy </p>
        </router-link> 


      </li>

   <li class="nav-item header-item">
        <!--   -->

        <Dropdown>
      <router-link tag="div" to='/'  style="height:55px;" class="nav-link">
            <p><Icon type="android-cloud" size='30' color=orange></Icon></p>
            <p  style="color:white"> My Profile </p>
        </router-link>
        <DropdownMenu slot="list">
            <DropdownItem>OverView</DropdownItem>
            <DropdownItem>To Be Processed Policies</DropdownItem>
            <DropdownItem>To Be Processed Claims</DropdownItem>
            <DropdownItem>Finished Tasks</DropdownItem>
        </DropdownMenu>
    </Dropdown>



      </li>


        <li class="nav-item header-item">
      

         <router-link tag="div" to='/home1'  style="height:55px;" class="nav-link">
            <p><Icon type="trophy" size='30' color=orange></Icon></p>
            <p  style="color:white"> About As </p>
        </router-link> 


      </li>



     
    </ul>


    <ul class="nav navbar-nav ml-auto">



      <Dropdown class="nav-item">
        <a href="javascript:void(0)">
           <span slot="button">
          <img src="static/img/avatars/Logo.jpg" class="img-avatar"  alt="o"style="margin-right:10px ">
          <span class="d-md-down-none" style="color: white;margin-right: 40px;">admin</span>
          </span>
        </a>
        <Dropdown-menu slot="list">
              <Dropdown-item divided>
              <p class="dropdown-itemp"><Icon type="android-contact"></Icon> Profile</p>

              </Dropdown-item>
            <Dropdown-item >
              <p class="dropdown-itemp"><Icon type="android-settings"></Icon> Settings</p>
              </Dropdown-item>
                <Dropdown-item > <a href="" @click="Logout"  ><p  class="dropdown-itemp"><Icon type="power"></Icon>Login</p></a></Dropdown-item>
                <Dropdown-item > <a href="" @click="Logout"  ><p  class="dropdown-itemp"><Icon type="power"></Icon>Logout</p></a></Dropdown-item>

        </Dropdown-menu>
    </Dropdown>


    </ul>
  </navbar>
</template>
<script>

import navbar from './Navbar'

export default {
  name: 'header',
  components: {
    navbar,
    
  },
  methods: {
    Logout(e){
         e.preventDefault();
         this.$store.dispatch('LogOut').then(() => {
                this.$router.push({ path: '/login' });
              }).catch(err => {
                this.$message.error(err);
              });
    },
    click () {
      // do nothing
    },
  }
}
</script>

<style type="text/css" scoped>
  .dropdown-itemp{
    text-align: left;
    font-size: 15px;
    padding: 10px;
  }
 .header-item .ivu-dropdown-item{
  padding: 15px;
}
  .header-item{
    width: 130px;
    /*background-color: #20a8d8;*/
    /*background-color: white;*/

    height: 55px;
    
    
  }
  .header-item a{
        color:white !important;

  }

</style>
