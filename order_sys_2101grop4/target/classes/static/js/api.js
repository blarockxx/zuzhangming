/* 向服务端发请求 */

//获取所有的餐桌
function getAllDeskApi() {
	return $axios({
		'url': `/desk/getAllList`,
		'method': 'get',
	})
}

//获取所有的分类
function getAllTypeApi() {
	return $axios({
		'url': `/type/`,
		'method': 'get',
	})
}

//获取所有的菜品
function getAllProApi() {
	return $axios({
		'url': `/product/getAllList`,
		'method': 'get',
	})
}


//添加到购物车
function addCartApi(data) {
	return $axios({
		'url': `/cart/`,
		'method': 'post',
		data
	})
}


//获取购物车清单
function getCartListApi(data) {
	return $axios({
		'url': `/cart/`,
		'method': 'get',
		params:{...data}
	})
}

//清空购物车
function clearCartApi(data) {
	return $axios({
		'url': `/cart/`,
		'method': 'delete',
		 params:{...data}
	})
}
//获取购物车清单
function toOrderApi(data) {
	return $axios({
		'url': `/orders/`,
		'method': 'post',
		data
	})
}
//获取购物车清单
function getOrderListApi(data) {
	return $axios({
		'url': `/orders/getListFront`,
		'method': 'get',
		params:{...data}
	})
}