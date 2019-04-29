<template>
	<div>
		<a class="btn" @click="toggleShow">{{ $t("message.sethead") }}</a>
		<my-upload 
			field="picture"
	        v-model="show"
			:width="200"
			:height="200"
			url="/interest/upload/picture"
			:headers="headers"
			img-format="png"
	        @crop-upload-success="cropUploadSuccess"
	        @crop-upload-fail="cropUploadFail">
		</my-upload>
		<img :src="imgDataUrl">
	</div>
</template>
<script>
	import myUpload from 'vue-image-crop-upload';
	export default {
		components: {
			'my-upload': myUpload
		},
	  data() {
	    return {
	    	show: false,
			headers: {
				Authorization:'bearer '+ localStorage.getItem("currentUser_token")
			},
			imgDataUrl: ''
	    };
	  },
	  mounted() {
	  },
	  watch: {
	  },
	  methods: {
	  	toggleShow() {
			this.show = !this.show;
		},
		/**
		 * upload success
		 *
		 * [param] jsonData   服务器返回数据，已进行json转码
		 * [param] field
		 */
		cropUploadSuccess(jsonData, field){
			this.imgDataUrl = jsonData.data;
			this.show = false;
			this.$Notice.success({title: this.$t("message.EditorialSuccess")});
		},
		/**
		 * upload fail
		 *
		 * [param] status    server api return error status, like 500
		 * [param] field
		 */
		cropUploadFail(status, field){
			this.$Notice.error({title: this.$t("message.EditorialFailed")});
		}
	  }
	};
</script>
