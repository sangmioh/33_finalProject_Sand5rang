<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
  
<head>
    <meta charset="utf-8">
    <title>Sand5rang</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">    
  <link rel="shortcut icon" href="resources/images/logo.png" type="">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>



    
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

	
  </head>
<style>
	th{ font-weight: 200; color: #666666; font-size: 16px; height: 21px; padding-top: 24px; border-bottom: 1px solid #e8e8e8; text-align: left;
   	 vertical-align: middle; display: table-cell; outline: none;}
   	td { font-size:14px; height: 20px;  border-bottom: 1px solid #e8e8e8; vertical-align: bottom; outline: none; align:left;} 
	.enrollForm { width:1000px;}
	label {font-size: 16px;}
	.form-group textarea {background-color: #efefef; border: 0; width: 100%; border: 0; color: #292929; font-size: 16px; resize: none; padding-left:10px; padding-top:10px;}
	#enrollForm input {width: 100%; border: 0; background: #efefef; height: 45px; color: #292929; font-size: 16px; text-indent: 15px;}
	.storeinfo{ padding-bottom: 100px;}
</style>  

<body>

<jsp:include page="include/1.jsp" />
<jsp:include page="include/2.jsp" />
<jsp:include page="include/3.jsp" />
<jsp:include page="include/4.jsp" />
<jsp:include page="include/5.jsp" />
<div class="navbar navbar-fixed-top">
	
	<div class="navbar-inner">
		
		<div class="container">
			
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
			
			<a class="brand" href="admain.hs">
				Sand5rang 관리자				
			</a>		
			
			<div class="nav-collapse">
				<ul class="nav pull-right">
			
					<li class="dropdown">						
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="icon-user"></i>
							관리자 님
							<b class="caret"></b>
						</a>
						
						<ul class="dropdown-menu">
							<li><a href="logout.me">Logout</a></li>
						</ul>						
					</li>
				</ul>
				
			</div><!--/.nav-collapse -->	
	
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->
<div class="subnavbar">
	<div class="subnavbar-inner">
	
		<div class="container">
			<ul class="mainnav">
			
				<li>
					<a href="admain.hs">
						<i class="icon-dashboard"></i>
						<span>메인</span>
					</a>	    				
				</li>
				<li class="dropdown">					
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-long-arrow-down"></i>
						<span>가맹점 업무처리</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
                        <li><a href="ad1.hs">가맹점 주문처리</a></li>
						<li><a href="ad2.hs">공장발주내역</a></li>
                    </ul>    				
				</li>
				
				<li class="dropdown active">					
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-long-arrow-down"></i>
						<span>가맹점 관리</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
                        <li><a href="storeList.sm">가맹점 조회</a></li>
						<li><a href="storeEnrollList.sm">가맹가입신청</a></li>
						<li><a href="inqList.an">문의 조회</a></li>
                    </ul>    				
				</li>
				
				<li>
					<a href="ad3.hs">
						<i class="icon-money"></i>
						<span>결제대금</span>
					</a>    				
				</li>
			
			</ul>
		</div> <!-- /container -->
	
	</div> <!-- /subnavbar-inner -->
</div> <!-- /subnavbar -->

<div class="main">
	
	<div class="main-inner">

	    <div class="container">
	
	      <div class="row">
	      	
	      	<div class="span12">      		
	      		
	      		<div class="widget" style="width:1200px;">
	      			
	      			<div class="widget-header">
	      				<i class="icon-user"></i>
	      				<h3>가맹가입신청 상세페이지</h3>
	  				</div> <!-- /widget-header -->
	  				<div class="widget-content">
	

  	
    <a class="btn btn-secondary" style="float:right;" href="storeEnrollList.sm">목록으로</a>
    <br><br><br>
  
  	<div style="align:left; width:400px; margin-left:80px; padding-bottom:20px; color: #0B571F;"><h2>가맹 가입 신청 정보</h2></div>
    <table class="storeinfo" style="margin:auto; width:1000px; padding-bottom:150px;"> 
           <tr>
               <th scope="row"style="width:100px;">이름</th>
               <td>${e.storeName}</td>
           </tr>  
           <tr>
             <th scope="row"style="width:100px;">연락처</th>
             <td>${e.phone}</td>
           </tr>  
           <tr>
             <th scope="row" style="width:100px;">이메일</th>
             <td>${e.email}</td> 
           </tr>
           <tr>
             <th scope="row" style="width:100px;" >지역</th>
             <td>${e.enrollAdd}</td>
           </tr>
           <tr>
             <th scope="row" style="width:100px;">제목</th>
             <td>${e.title}</td>
           </tr>
           <tr>
             <th scope="row" style="width:100px;">내용</th>
             <td>${e.content}</td>
           </tr>   
      </table>
    
    <hr style="border:0px solid grey; width:60%; margin-left:250px;">

    

<div style="align:left; width:400px; margin-left:80px; padding-top:50px; color: #0B571F;"><h2>가맹 가입 기입 사항</h2></div>

     <form id="enrollForm" class="" method="post" action="insertStore.sm" align="center" style="margin:auto;" >
        
        <div class="form-group" >
          <input type="hidden" name="contact_number">
		  <input type="hidden" value="${e.email}" name="email">
			
			
          <label for="userName" style="margin-left:90px; margin-top:30px; font-size:16px; padding-bottom:10px;" align="left">가맹점 명 </label>
          <input type="text" class="form-control" id="storeName" name="storeName" placeholder="가맹점 이름을 입력하세요" style="width:1000px; margin-left:20px;" required><br>
               
          <br>
          <label for="userId" style="margin-left:90px; font-size:16px; padding-bottom:10px;" align="left">가맹점 아이디</label>
          <input type="text" class="form-control" id="storeId" name="storeId" placeholder="가맹점 아이디를 store00의 형식으로 입력하세요" style="width:1000px; margin-left:20px;" required><br>
          <div id="checkResult" style="font-size:0.8em; display:none; margin-left:100px;" align="left" ></div>     
      
          <br>
          <label for="userPwd" style="margin-left:90px; font-size:16px; padding-bottom:10px;" align="left">가맹점 비밀번호  </label>
          <input type="password" class="form-control" id="storePwd" name="storePwd" placeholder="가맹점 비밀번호를 입력하세요" style="width:1000px; margin-left:20px;" required><br>
           
          <br>
          <label for="address" style="margin-left:90px; font-size:16px; padding-bottom:10px;" align="left">가맹점 주소 </label>
          <input type="text" class="form-control" id="address_kakao" name="address" placeholder="도로명 주소를 입력하세요" style="width:1000px; margin-left:20px;" required><br>    
           <input type="text" name="address_detail" placeholder="상세주소를 입력하세요" style="width:1000px; margin-left:20px;" required/><br>
        
          <br>
          <label for="content" style="margin-left:90px; font-size:16px; padding-bottom:10px;" align="left" >승인 메시지</label>
          <textarea class="form-control" id="content" name="message" placeholder="가맹점 승인메세지를 입력하세요" style="width:1000px; height:100px; margin-left:20px; height:100px; resize:none;" required></textarea><br> 
       </div><br>

        <div align="right" style="margin-right:70px;">
            <input type="hidden" name="enrNo" value="${ e.enrNo }">
            <button type="submit" class="btn btn-primary" disabled>승인</button>
       </div><br>
        
    </form>



  <form id="referForm" class="" method="post" action="referStore.sm" align="left" style="margin:auto; width:1000px;" >
  
        <div class="form-group" >
           <input type="hidden" name="contact_number">
  		   <input type="hidden" value="${e.email}" name="email">

          <label for="content" style="margin-top:10px; font-size:16px; padding-bottom:10px;" align="left" >반려 사유 </label>
          <textarea class="reContent" id="content" name="message" placeholder="가맹점  반려사유를 입력하세요" style="width:1000px; height:100px; resize:none;" required></textarea><br> 
        </div><br>
        <div align="right"> 
	        <input type="hidden" name="enrNo" value="${ e.enrNo }">
	   		<button type="submit" class="btn btn-danger" >반려</button>
        </div><br>
  </form>
		



	       <script>
          $(function() {
        	  
        	  //아이디를 입력하는 input 요소 객체 자체를 변수에 담아두기
        	  var $idInput = $("#enrollForm input[name=storeId]");
        	  
        	  $idInput.keyup(function() {
        		 
        		 // 우선 최소6글자 이상으로 입력되어야지만 ajax를 요청 할 수 있게끔 막아주기
        		 if($idInput.val().length >= 6){
        			 
        			 $.ajax({
        				 url : "idCheck.sm",
        				 data : {checkId : $idInput.val()},
        				 success : function(result) {
        					 
        					 if(result == "NNNNN"){ //사용 불가능
        						 
        						 // 빨간색 메세지(사용불가능) 출력
        						 $("#checkResult").show();
        					     $("#checkResult").css("color","red").text("중복된 아이디가 존재합니다. 다시 입력해주세요.");
        						 
        					     // 회원가입버튼 비활성
        					     $("#enrollForm :submit").attr("disabled",true);
        					     
        					 }
        					 else{ //사용 가능
        						 
        						 //초록색 메세지(사용가능) 출력
        						 $("#checkResult").show();
        					     $("#checkResult").css("color","green").text("멋진 아아디네요!");
        						 
        					     //회원가입버튼 활성
        					     $("#enrollForm :submit").attr("disabled",false);
        					     
        					 }
        					 
        				 },
        				 error : function() {
        					 console.log("아이디 중복 체크용 ajax 통신 실패!");
        				 }
        			 });
        			 
        		 }
        		 else{ //6글자 미만일때 => 회원가입버튼 비활성, 메세지 숨기기
        			 
        			 $("#checkResult").hide();
        		     $("#enrollForm :submit").attr("disabled",true);
        			 
        		 }
        		 
        	  });
        	  
          });   
        </script>
        
        <script>
        
        
        </script>
        
        
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
		window.onload = function(){
		    document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
		        //카카오 지도 발생
		        new daum.Postcode({
		            oncomplete: function(data) { //선택시 입력값 세팅
		                document.getElementById("address_kakao").value = data.address; // 주소 넣기
		                //document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
		            }
		        }).open();
		    });
		}
		</script>

	
				</div> <!-- /widget -->
	      		
		    </div> <!-- /span8 -->
	      	
	      	
	      	
	     </div> 	
	      </div> <!-- /row -->
	
	    </div> <!-- /container -->
	    
	</div> <!-- /main-inner -->
    
</div> <!-- /main -->
    
    
    
 
<div class="extra">
	<div class="extra-inner">
		<div class="container">
			<div class="row">
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>
                            Contact Us</h4>
                        <ul>
                            <li><a href="javascript:;">Call 02) 807-4421</a></li>
                            <li><a href="javascript:;">Sand5rang@naver.com</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>
                            Opening Hours</h4>
                        <ul>
                            <li><a href="javascript:;">Everyday</a></li>
                            <li><a href="javascript:;">10.00 Am -10.00 Pm</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>
		     				 Sand5rang</h4>
                        <ul>
	                        <li><a href="javascript:;">&copy; 2022 All Rights Reserved By Sand5rang.</a></li>
	                        <li><a href="javascript:;">Distributed By Sand5rang.</a></li>
                        </ul>
                    </div>
                </div> <!-- /row -->
		</div> <!-- /container -->
	</div> <!-- /extra-inner -->
</div> <!-- /extra -->
<div class="footer">
	
	<div class="footer-inner">
		
		<div class="container">
			
			<div class="row">
				
    			<div class="span12">
    				Korea tradition Sandwich Franchise Sand5rang.
    			</div> <!-- /span12 -->
    			
    		</div> <!-- /row -->
    		
		</div> <!-- /container -->
		
	</div> <!-- /footer-inner -->
	
</div> <!-- /footer -->


<jsp:include page="include/6.jsp" />


  </body>

</html>
