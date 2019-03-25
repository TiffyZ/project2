<template>

<div>
    
 <Row>
        <Col span="24" >
           
           <div style="" class="doc-header">
                       <Form ref="formInline" :model="formInline" :rules="ruleInline" inline>
                    <Form-item prop="user">
                        <Input type="text" v-model="formInline.user" placeholder="Username">
                            <Icon type="ios-person-outline" slot="prepend"></Icon>
                        </Input>
                    </Form-item>
                    <Form-item prop="password">
                        <Input type="password" v-model="formInline.password" placeholder="Password">
                            <Icon type="ios-locked-outline" slot="prepend"></Icon>
                        </Input>
                    </Form-item>
                    <Form-item>
                        <Button type="primary" @click="handleSubmit('formInline')">sign in</Button>
                    </Form-item>
                </Form>

            </div>
            <div style="" class="doc-content">
                

            </div>
        </Col>




    </Row>




   


    <Row>
        <Col span="24" >
           
           <div style="" class="doc-header">
                <Form ref="formValidate" :model="formValidate" :rules="ruleValidate" :label-width="80">
        <Form-item label="name" prop="name">
            <Input v-model="formValidate.name" placeholder="input name"></Input>
        </Form-item>

        <Form-item label="address" prop="address">
            <Input v-model="formValidate.address" placeholder="input address"></Input>
        </Form-item>

        <Form-item label="email" prop="mail">
            <Input v-model="formValidate.mail" placeholder="input email"></Input>
        </Form-item>
        <Form-item label="country" prop="city">
            <Select v-model="formValidate.city" placeholder="input your country">
                <Option value="beijing">Ireland</Option>
                <Option value="shanghai">China</Option>
    
            </Select>
        </Form-item>
        <Form-item label="select date">
            <Row>
                <Col span="11">
                    <Form-item prop="date">
                        <Date-picker type="date" placeholder="select date" v-model="formValidate.date"></Date-picker>
                    </Form-item>
                </Col>
                <Col span="2" style="text-align: center">-</Col>
               
            </Row>
        </Form-item>
        <Form-item label="gender" prop="gender">
            <Radio-group v-model="formValidate.gender">
                <Radio label="male">male</Radio>
                <Radio label="female">female</Radio>
            </Radio-group>
        </Form-item>
        <Form-item label="prefer" prop="interest">
            <Checkbox-group v-model="formValidate.interest">
                <Checkbox label="1"></Checkbox>
                <Checkbox label="2"></Checkbox>
                <Checkbox label="3"></Checkbox>
                <Checkbox label="4"></Checkbox>
            </Checkbox-group>
        </Form-item>
        <Form-item label="extra needs" prop="desc">
            <Input v-model="formValidate.desc" type="textarea" :autosize="{minRows: 2,maxRows: 5}" placeholder="请输入..."></Input>
        </Form-item>
        <Form-item>
            <Button type="primary" @click="handleSubmit('formValidate')">submit</Button>
            <Button type="ghost" @click="handleReset('formValidate')" style="margin-left: 8px">重置</Button>
        </Form-item>
    </Form>
    

            </div>
        
        </Col>


    </Row>



   
  
</div>

</template>
<script>
    export default {
        data () {
            return {
                formItem: {
                    input: '',
                    select: '',
                    radio: 'male',
                    checkbox: [],
                    switch: true,
                    date: '',
                    time: '',
                    slider: [20, 50],
                    textarea: ''
                },
                 formInline: {
                    user: '',
                    password: ''
                },
                ruleInline: {
                    user: [
                        { required: true, message: 'type your id please', trigger: 'blur' }
                    ],
                    password: [
                        { required: true, message: 'type your password please', trigger: 'blur' },
                        { type: 'string', min: 6, message: 'no less than 6 letters', trigger: 'blur' }
                    ]
                },
                 formLeft: {
                    input1: '',
                    input2: '',
                    input3: ''
                },
                formRight: {
                    input1: '',
                    input2: '',
                    input3: ''
                },
                formTop: {
                    input1: '',
                    input2: '',
                    input3: ''
                },
                formValidate: {
                    name: '',
                    mail: '',
                    address: '',
                    city: '',
                    gender: '',
                    interest: [],
                    date: '',
                    time: '',
                    desc: ''
                },
                ruleValidate: {
                    name: [
                        { required: true, message: 'should not be null', trigger: 'blur' }
                    ],
                    mail: [
                        { required: true, message: 'should not be null', trigger: 'blur' },
                        { type: 'email', message: 'wrong email', trigger: 'blur' }
                    ],
                     address: [
                        { required: true, message: 'should not be null', trigger: 'blur' },
                       
                    ],
                    city: [
                        { required: true, message: 'should not be null', trigger: 'change' }
                    ],
                    gender: [
                        { required: true, message: 'should not be null', trigger: 'change' }
                    ],
                  
                    
                    desc: [
                        { required: true, message: 'type extra needs', trigger: 'blur' },
                        { type: 'string', min: 20, message: 'not less than 10 words', trigger: 'blur' }
                    ]
                },
                formDynamic: {
                    items: [
                        {
                            value: ''
                        }
                    ]
                },
            }   
        },//data
      methods: {
            handleSubmit(name) {
                this.$refs[name].validate((valid) => {
                    if (valid) {
                        this.$Message.success('提交成功!');
                    } else {
                        this.$Message.error('表单验证失败!');
                    }
                })
            },
             handleReset (name) {
                this.$refs[name].resetFields();
            },
            handleAdd () {
                this.formDynamic.items.push({
                    value: ''
                });
            },
            handleRemove (index) {
                this.formDynamic.items.splice(index, 1);
            },
        }
           
    }
</script>



