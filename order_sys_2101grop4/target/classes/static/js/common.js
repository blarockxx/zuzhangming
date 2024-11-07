var globalData = {
	server: "http://localhost:8080",//服务器地址前缀
	pre: "http://127.0.0.1:8080",//前台页面前缀

	getDeskId: function() {
		return JSON.parse(sessionStorage.getItem("deskId"));
	},

	setDeskId: function(deskId) {
		sessionStorage.setItem("deskId", JSON.stringify(deskId));
	}
}

/* 引入各种共用的样式和脚本 */
document.write('<script src="'+globalData.pre+'/js/v3.2.8/vue.global.prod.js"></script>');
document.write('<link rel="stylesheet" href="'+globalData.pre+'/js/element-plus/index.css">')
document.write('<script src="'+globalData.pre+'/js/element-plus/index.js"></script>')
document.write('<script src="'+globalData.pre+'/js/axios/axios-min.js"></script>')
document.write('<script src="'+globalData.pre+'/js/request.js"></script>')
document.write('<script src="'+globalData.pre+'/js/api.js"></script>')
document.write('<script src="'+globalData.pre+'/js/element-plus/element-icon.js"></script>')


