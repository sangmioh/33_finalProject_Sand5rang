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

<body>

<jsp:include page="include/1.jsp" />
<jsp:include page="include/2.jsp" />
<jsp:include page="include/3.jsp" />
<jsp:include page="include/4.jsp" />
<jsp:include page="include/5.jsp" />

	
		<!-- 알람메세지 내용이 있다면  -->
	<c:if test="${ not empty alertMsg }">
		<script>
			alert("${alertMsg}");
		</script>
		<!-- 일회성 알람 메세지 session scope에 있는 alertMsg 삭제해주기 -->
		<c:remove var="alertMsg" scope="session"/>
	</c:if>
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
	
	<div class="main-inner" style="margin-bottom:300px;">

	    <div class="container">
	
	      <div class="row">
	      	
	      	<div class="span12">      		
	      		
	      		<div class="widget" style="width:1200px;">
	      			
	      			<div class="widget-header">
	      				<i class="icon-user"></i>
	      				<h3>가맹가입신청 리스트</h3>
	  				</div> <!-- /widget-header -->
					
					
    <table id="boardList" class="table table-striped table-bordered" >
        <thead> 
           <tr>
               <th style="text-align:center;">신청번호</th>
               <th style="text-align:center;">이름</th>
               <th style="text-align:center;">연락처</th>
               <th style="text-align:center;">이메일</th>
               <th style="text-align:center;">지역</th>
               <th style="text-align:center;">상태</th>
         
           </tr>
          </thead>
           <tbody>
              <c:forEach var="e" items="${ list }" varStatus="status">
               <tr>
                 <td class="enr1" style="text-align:center;">${e.enrNo}</td>
                 <td style="text-align:center;">${e.storeName}</td>
                 <td style="text-align:center;">${e.phone}</td>
                 <td style="text-align:center;">${e.email}</td> 
                 <td style="text-align:center;">${e.enrollAdd}</td>
                 <td style="text-align:center;">
                  <c:if test="${e.status eq 'B'}">
                                       대기중
                 </c:if>
                 </td>
                 
               </tr>
              </c:forEach>   
           </tbody>
      </table> 
      

      
  
    <script>
      $(function(){
    	 
    	  $("#boardList>tbody>tr").click(function(){
    		
    		  
    		  location.href="stEnDetail.sm?enr="+ $(this).children(".enr1").text();
    	  });
    	  
      });  
    
    </script>




    <br><br>
   

          <ul class="pagination pagination-sm">
              
             <c:choose>
               <c:when test="${ pi.currentPage eq 1 }">
                  <li class="page-item disabled"><a class="page-link" href="#"><</a></li>
               </c:when>
               <c:otherwise>
                  <li class="page-item"><a class="page-link" href="storeEnrollList.sm?cpage=${ pi.currentPage - 1 }"><</a></li>
               </c:otherwise>
             </c:choose> 
              
              
              <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage}"> 
               <c:if test="${pi.currentPage eq p}">
               <li class="page-item active"><a class="page-link" href="storeEnrollList.sm?cpage=${ p }">${ p }</a></li>
               </c:if>
                <c:if test="${pi.currentPage ne p}">
               <li class="page-item"><a class="page-link" href="storeEnrollList.sm?cpage=${ p }">${ p }</a></li>
               </c:if>
               
              </c:forEach>
              
              <c:choose>
                <c:when test="${ pi.currentPage eq pi.maxPage }">
                  <li class="page-item disabled"><a class="page-link" href="#">></a></li>
                </c:when>
                <c:otherwise>
                   <li class="page-item"><a class="page-link" href="storeEnrollList.sm?cpage=${ pi.currentPage + 1 }">></a></li>
                </c:otherwise>
              </c:choose>
                            
          </ul>
  



						
				</div> <!-- /widget -->
	      		
		    </div> <!-- /span8 -->
	      	
	      	
	      	
	      	
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
