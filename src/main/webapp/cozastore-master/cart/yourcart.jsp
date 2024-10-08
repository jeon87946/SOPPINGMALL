<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="wrap-header-cart js-panel-cart">
		<div class="s-full js-hide-cart"></div>

		<div class="header-cart flex-col-l p-l-65 p-r-25">
			<div class="header-cart-title flex-w flex-sb-m p-b-8">
				<span class="mtext-103 cl2">
					장바구니
				</span>

				<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
					<i class="zmdi zmdi-close"></i>
				</div>
			</div>
			
			<c:forEach var="cart" items="${cartList}"> 
			<c:set var="itemTotal" value="${cart.itemPrice * cart.itemCnt}"/>
			<c:set var="totalPrice" value="${totalPrice + itemTotal}"/>
			${cart.itemName}
			<div class="header-cart-content flex-w js-pscroll">
				<ul class="header-cart-wrapitem w-full">
					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="cozastore-master/images/b10-1.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								${cart.itemName}
							</a>

							<span class="header-cart-item-info">
								 1 x ${cart.itemPrice}
							</span>
						</div>
					</li>
				</c:forEach>
				<div class="w-full">
					<div class="header-cart-total w-full p-tb-40">
						총 상품금액: ${totalPrice}
					</div>

					<div class="header-cart-buttons flex-w w-full">
						<a href="cozastore-master/shoping-cart.jsp" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
							View Cart
						</a>

						<!-- <a href="cozastore-master/shoping-cart.jsp" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
							Check Out
						</a> -->
					</div>
				</div>
			</div>
		</div>
	</div>
				

</body>
</html>