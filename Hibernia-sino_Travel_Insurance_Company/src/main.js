import Vue from "vue";
import App from "./app.vue";
import router from "./router";
import iView from "iview";
// import VueRouter from "vue-router";
// import "iview/dist/styles/iview.css";
// import "quill/dist/quill.core.css";
// import "quill/dist/quill.snow.css";
// import "quill/dist/quill.bubble.css";
import axios from "./axios";
import VueAxios from "vue-axios";
import store from "./store/store";
import VueQuillEditor from "vue-quill-editor";
import "./styles/common.css";
import base from "./base";
import VueI18n from "vue-i18n";

Vue.use(VueI18n);
Vue.use(base);

Vue.use(VueAxios, axios);
Vue.use(iView);
Vue.use(VueQuillEditor);

Vue.config.productionTip = false;

const messages = {

    zh: {
        message: {
            hello: '好好学习，天天向上！',
            homepage: '主页',
            list: '表单列表',
            createNewPolicy: '创建保单',
            QuestionConsultation: '问题咨询',
            fillForm: '填写咨询表',
            myConsultation: '我的咨询',
            exit: '退出',
            employeeConsole: '员工控制台',
            login: '登陆',
            BaggageInsurance: '行李险',
            BaggageInsurancePlus: '高理赔行李险',
            OnTimeInsurance: '准时险',
            SafetyInsurance: '人身安全险',
            ChildInsurance: '亲子险',
            UploadPic: '上传图片',
            sethead: '设置头像',
            ChangeLanguage: 'English',
            ClickCancel: '点击了取消',

            InsuredName: '被保险人姓名',
            EnterInsuredName: '请输入被保险人姓名' ,
            MailboxOfInsured: '被保险人邮箱',
            EnterMailboxOfInsured: '请输入被保险人邮箱',
            DeclaringInformation: '申报信息',
            EnterDeclaringInformation: '请输入所需申报信息：如丢失物品',
            PictureProof: '图片证明',
            ProblemDetails: '问题详情',
            Processing: '未处理',
            FillInformation: '填入信息',
            SelectType: '填选择保单类型',
            PleaseSelectType: '请填选表单类型',
            PleaseEnterRightId: '请输入被保险人正确的id',
            EnterEmailAddress: '输入邮箱',
            PleaseEnterRightEmailFormat: '输入正确的邮箱格式',
            PleaseEnterPasswordAgain: '请输入再次输入密码',
            PleaseEnterName: '请输入姓名',
            PleaseEnterInformation: '请输入内容',
            WrongPictureFormat: '图片格式不对',
            OnlyjpgjpegpngBeAllowed: '图片格式只能为jpg,jpeg,png',
            SendSuccess: '发送成功',
            ValidationFailed: '表单验证失败',
            PleaseWait: '正在登录，请等待...',
            DeliverReply: '发表回复',
            Publish: '发表',
            ReplySuccess: '回复成功',
            PleaseRelog: '请重新登录',
            PleaseEnterYourMessage: '请填写回复内容',
            YouNeedLogIn: '登录后，才能回复！',
            UsersProblem: '用户提问',
            Quiz: '提问',
            Submission: '提交',
            PostSuccess: '发帖成功',
            PleaseEnterTitleAndContent: '请填写标题和内容',
            SizeExceeded: '图片太大',
            PleaseOptimization:'上传图片最大为1M,请优化后在上传。可使用https://zhitu.isux.us/网站优化',
            PermissionDenied: '无权限',
            EditorialSuccess: '头像修改成功',
            EditorialFailed: '头像修改失败',
            QueryFailed: '查询失败，请稍后重试',
            Loginfailed: '登陆失败',
            InsuranceType: '保单类型',
            SubmitApplication: '提交申请',
            Application: '申请表',
            ReadFailed: '已读失败，请稍后重试',
            Title: '标题',
            Content: '内容',
            interest: '兴趣',
            delete: '删除',
            loginuser: '登录名',
            Time: '时间',
            Operation: '操作',
            Watch: '查看',
            DeleteSuccess: '删除成功',
            search: '搜索',
            Find: '查询',
            Cancel: '取消',
            Add: '添加',
            Close: '关闭',
            Introduce: '简介',
            Carousel: '轮播',
            Carousel: '非轮播',
            Edit: '修改',
            PleaseEnter: '请输入',
            admin: '管理员',
            user: '用户',
            Configure: '角色配置',
            EnterUser: '输入用户名',
            PleaseEnterPassword: '请输入密码',
            Email: '邮箱',
            createTime: '注册时间',
            Describe: '描述',
            CharacterName: '角色名称',
            Configure1: '配置角色',
            Usertype: '用户类型',
            PasswordDifferent: '两次密码不一致',
            CreateSuccess: '新建成功',
            PleaseChooseOne: '请选择一项',
            EditSuccess: '修改成功',
            Create: '新建',
            Character: '角色',
            PermissionConfiguration: '权限配置',
            Permission: '权限',
            ConfigurationSuccess: '配置成功',
            MenuName: '菜单名称',
            bala: '侧边栏显示重点文件，测试人员禁止修改！！！！',
            Path: '路径',
            FaID: '父类id',
            SortNumber: '排序号',
            icon: '图标',
            PleaseEnterMenuName: '输入菜单名',
            PleaseEnterPath: '输入路径',
            PleaseEnterFaId: '输入父类id',
            PleaseEnterNum: '请输入数字',
            PleaseEnterSort: '输入排序',
            PleaseEnterIcon: '输入图标',
            MenuId: '菜单ID',
            MenuName: '菜单名称',
            Address: '地址',
            parentId: '上级菜单id',
            sort: '排序',
            Noreturnvalue: '未找到符合条件的结果',
            AgreeToPay: '同意赔付',
            DisAgreeToPay: '拒绝赔付',
            EssayId: '文章Id',
            CreaterId: '创建者Id',
            createTime1: '创建时间',
            Above: '顶置',
            yes: '是',
            no: '否',
            Picture: '图片',
            Details: '详情',
            EnterIntroduction: '填写介绍',
            EditFailed: '修改失败',
            CreateFail: '创建失败',
            Reset: '重置',
            PersonalInformation: '个人信息',
            userPage: '用户主页',
            PersonalIntroduction: '个人简介',
            Location: '位置',
            Skills: '技能',
            Upload: '上传',
            Noessay: '一篇文章都没写',
            name: '姓名',
            State: '状态',
            MyInsurance: '我的保单',
            Message: '消息',
            ContactWithAdmin: '联系管理员',
            Welcome: '欢迎',
            WorryUsernameORPassword: '用户名或密码错误',
            Password: '密码',
            register: '注册',
            CheckPassword: '确认密码',
            Telphone: '电话',
            EnterTelNumber: '输入电话号码',
            comment: '评论',
            commentFail: '评论失败',
            commentSuccess: '评论成功',
            Pleaselogin: '请登录',
            CheckReply: '查看回复',
            HideReply: '收起回复',
            Reply: '回复',
            CreateFail: '新建失败',
            OnereplyeachDay: '为保证服务正常运行，每个用户每日只能发布一个，是否确认发布？',
            ReturnMy: '返回我的',
            Userid: '用户id',
            ContentDetails: '内容说明',
            FormID: '表单ID',
            Confirm: '确认',
            Previouspage: '上一页',
            Nextpage: '下一页',
            Tip: '提示',
            ModifyConfirm: '确认修改',
            WaitingForPerfection: '未填写',
            DLname: '登录名',
            Realname: '真实姓名',





        }
    },

    en: {
        message: {
            hello: 'hello',
            homepage: 'Home',
            list: 'list',
            createNewPolicy: 'Create New Policy',
            QuestionConsultation: 'Consultation',
            fillForm: 'Fill Consultation form',
            myConsultation: 'my Consultation',
            exit: 'exit',
            employeeConsole: 'Console',
            login: 'login',
            BaggageInsurance: "Baggage Insurance",
            BaggageInsurancePlus: "Advanced Baggage Insurance",
            OnTimeInsurance: 'OnTime Insurance',
            SafetyInsurance: 'Safety Insurance',
            ChildInsurance: 'Child Insurance',
            UploadPic: 'Upload Pictures',
            sethead: "sethead",
            ChangeLanguage: '中文',
            ClickCancel: 'Click Cancel',

            InsuredName: 'Insured Name',
            EnterInsuredName: 'Enter Insured Name' ,
            MailboxOfInsured: 'Mailbox',
            EnterMailboxOfInsured: 'Enter Mailbox Of Insured',
            DeclaringInformation: 'Declaring Information',
            EnterDeclaringInformation: 'Enter Declaring Information',
            PictureProof: 'Picture Proof',
            ProblemDetails: 'Problem Details',
            Processing: 'Processing',
            FillInformation: 'Fill Information',
            SelectType: 'Select Type',
            PleaseSelectType: 'Please Select Type',
            PleaseEnterRightId: 'Please Enter RightId',
            EnterEmailAddress: 'Enter Email Address',
            PleaseEnterRightEmailFormat: 'Please Enter Right Email Format',
            PleaseEnterPasswordAgain: 'Please Enter Password Again',
            PleaseEnterName: 'Please Enter Name',
            PleaseEnterInformation: 'Please Enter Information',
            WrongPictureFormat: 'Wrong Picture Format',
            OnlyjpgjpegpngBeAllowed: 'Only jpg jpeg png BeAllowed',
            SendSuccess: 'Send Success',
            ValidationFailed: 'Validation Failed',
            PleaseWait: 'Please Wait...',
            DeliverReply: 'Deliver Reply',
            Publish: 'Publish',
            ReplySuccess: 'Reply Success',
            PleaseRelog: 'Please Relog',
            PleaseEnterYourMessage: 'Please Enter Your Message',
            YouNeedLogIn: 'You Need Log In',
            UsersProblem: 'Users Problem',
            Quiz: 'Quiz',
            Submission: 'Submission',
            PostSuccess: 'Post Success',
            PleaseEnterTitleAndContent: 'Please Enter Title And Content',
            SizeExceeded: 'Size Exceeded',
            PleaseOptimization:'Please Optimization',
            PermissionDenied: 'Permission Denied',
            EditorialSuccess: 'Editorial Success',
            EditorialFailed: 'Editorial Failed',
            QueryFailed: 'Query Failed',
            Loginfailed: 'Log in failed',
            InsuranceType: 'Insurance Type',
            SubmitApplication: 'Submit Application',
            Application: 'Application',
            ReadFailed: 'Read Failed Try it later',
            Title: 'Title',
            Content: 'Content',
            interest: 'interest: ',
            delete: 'delete',
            loginuser: 'username',
            Time: 'Time',
            Operation: 'Operation',
            Watch: 'watch',
            DeleteSuccess: 'Delete Success',
            search: 'search',
            Find: 'Find',
            Cancel: 'Cancel',
            Add: 'Add',
            Close: 'Close',
            Introduce: 'Introduce',
            Carousel: 'Carousel',
            nonCarousel: 'nonCarousel',
            Edit: 'Edit',
            PleaseEnter: 'PleaseEnter',
            admin: 'admin',
            user: 'user',
            Configure: 'Configure',
            EnterUser: 'Enter User',
            PleaseEnterPassword: 'Please Enter Password',
            Email: 'Email',
            createTime: 'createTime',
            Describe: 'Describe',
            CharacterName: 'CharacterName',
            Configure1: 'Configure1',
            Usertype: 'User type',
            PasswordDifferent: 'Password Different',
            CreateSuccess: 'Create Success',
            PleaseChooseOne: 'Please Choose One',
            EditSuccess: 'Edit Success',
            Create: 'Create',
            Character: 'Character',
            PermissionConfiguration: 'Permission Configuration',
            Permission: 'Permission',
            ConfigurationSuccess: 'Configuration Success',
            MenuName: 'Menu Name',
            bala: 'Side bar is the key document, non-developers are prohibited to modify!!!!',
            Path: 'Path',
            FaID: 'FaID',
            SortNumber: 'Sort Number',
            icon: 'icon',
            PleaseEnterMenuName: 'Please Enter Menu Name',
            PleaseEnterPath: 'Please Enter Path',
            PleaseEnterFaId: 'Please Enter Fa Id',
            PleaseEnterNum: 'PleaseEnterNum',
            PleaseEnterSort: 'Please Enter Sort',
            PleaseEnterIcon: 'Please Enter Icon',
            MenuId: 'Menu Id',
            MenuName: 'Menu Name',
            Address: 'Address',
            parentId: 'parentId',
            sort: 'sort',
            Noreturnvalue: 'No-return value',
            AgreeToPay: 'Agree To Pay',
            DisAgreeToPay: 'Refuse To Pay',
            EssayId: 'EssayId',
            CreaterId: 'Creater Id',
            createTime1: 'create Time',
            Above: 'Set above',
            yes: 'yes',
            no: 'no',
            Picture: 'Picture',
            Details: 'Details',
            EnterIntroduction: 'Enter Introduction',
            EditFailed: 'Edit Failed',
            CreateFail: 'Create Fail',
            Reset: 'Reset',
            PersonalInformation: 'Personal Information',
            userPage: 'userPage',
            PersonalIntroduction: 'Personal Introduction',
            Location: 'Location',
            Skills: 'Skills',
            Upload: 'Upload',
            Noessay: 'Noessay',
            name: 'Name',
            State: 'State',
            MyInsurance: 'MyInsurance',
            Message: 'Message',
            ContactWithAdmin: 'Contact With Admin',
            Welcome: 'Welcome',
            WorryUsernameORPassword: 'Wrong User Name OR Password',
            Password: 'Password',
            register: 'register',
            CheckPassword: 'Check Password',
            Telphone: 'Telphone',
            EnterTelNumber: 'Enter Tel Number',
            comment: 'comment',
            commentSuccess: 'comment Success',
            commentFail: 'comment Fail',
            Pleaselogin: 'Please login',
            CheckReply: 'Check Reply',
            HideReply: 'Hide Reply',
            Reply: 'Reply',
            CreateFail: 'Create Fail',
            OnereplyeachDay: 'One reply each Day',
            ReturnMy: 'Return Mine',
            Userid: 'User id',
            ContentDetails: 'Content Details',
            FormID: 'Form ID',
            Confirm: 'Confirm',
            Previouspage: 'Previous page',
            Nextpage: 'Next page',
            Tip: 'Tip',
            ModifyConfirm: 'Modify Confirm',
            WaitingForPerfection: 'Waiting For Perfection',
            DLname: 'login name',
            Realname: 'Real name',


        }
    }

}

const i18n = new VueI18n({
    locale : "en",
    messages
})

new Vue({
  router,
  store,
  i18n,
  render: h => h(App)
}).$mount("#app");
