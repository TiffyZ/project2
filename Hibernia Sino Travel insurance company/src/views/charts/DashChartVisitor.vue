<template>

  <Col :span="24">
    <chart :options="option" class="echarts" id="chart" > </chart>

  </Col>

</template>

<style scoped>
.echarts {
  border-radius:4px;
    
  height: 250px;
  width: 100%;

}


</style>

<script>



var data = [{
    value: 3661,
    name: '<1k'
}, {
    value: 5713,
    name: '1k-5k'
}, {
    value: 9938,
    name: '5k-10k'
}, {
    value: 17623,
    name: '10k-50k'
}, {
    value: 3299,
    name: '>50k'
}];


export default {
    mounted(){
    },
  data: function () {
   
    return {





option : {
    backgroundColor: '#49586e',
    title: {
        text: 'Insurance',
        x: '20%',
        y: 'center',
        textStyle: {
            fontWeight: 'normal',
            fontSize: 20,
             color: '#fff',
        }
    },
    tooltip: {
        show: true,
        trigger: 'item',
        formatter: "{b}: {c} ({d}%)"
    },
    legend: {
        orient: 'vertical',
        right: '5%',
         top: '25%',
           textStyle: {
            fontWeight: 'normal',
            fontSize: 16,
             color: '#fff',
        },
        data: ['<1k', '1k-5k', '5k-10k', '10k-50k', '>50k']
    },
    series: [{
        type: 'pie',
        selectedMode: 'single',
         center: ['30%', '50%'],
        radius: ['50%', '80%'],
        // color: ['#86D560', '#AF89D6', '#59ADF3', '#FF999A', '#FFCC67'],
        color: ['#AF89D6', '#5ab6df', '#6a8bc0', '#4acacb', '#fe8676'],

        label: {
            normal: {
                position: 'inner',
                formatter: '{d}%',

                textStyle: {
                    color: '#fff',
                    fontWeight: 'bold',
                    fontSize: 12
                }
            }
        },
        labelLine: {
            normal: {
                show: false
            }
        },
        data: data
    }]
}
  
    



    }
  }
}
</script>