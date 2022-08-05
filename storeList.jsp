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
<style>
 td{
  text-align:center;
}
</style>


  </head>

<body>

<jsp:include page="include/1.jsp" />
<jsp:include page="include/2.jsp" />
<jsp:include page="include/3.jsp" />
<jsp:include page="include/4.jsp" />
<jsp:include page="include/5.jsp" />
	<c:if test="${ not empty alertMsg }">
		<script>
			alert("${alertMsg}");
		</script>
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
	      				<i class="icon-map-marker"></i>
	      				<h3>가맹점 전체조회</h3>
	  				</div> <!-- /widget-header -->
					
	
			   <table class="table table-striped table-bordered" align="center" >
			       <thead align="center" style="text-align:center;"> 
			          <tr>
			              <th style="text-align:center;">가맹점명</th>
			              <th style="text-align:center;">아이디</th>
			              <th style="text-align:center;">주소</th>
			              <th style="text-align:center;">번호</th>
			              <th style="text-align:center;">이메일</th>
			              <th style="text-align:center;">폐업</th>
			          </tr>
			         </thead>
			          <tbody align="center">
			            
			             <c:forEach var="s" items="${ list }" varStatus="status">
			              <tr>
			                <td style="text-align:center;">${s.storeName}</td>
			                <td style="text-align:center;">${s.storeId}</td>
			                <td style="text-align:center;">${s.address}</td> 
			                <td style="text-align:center;">${s.phone}</td>
			                <td style="text-align:center;">${s.email}</td>
			                <td style="text-align:center;">
			                
			                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#${status.index}">폐업</button>
			                </td>
			              </tr>
			             </c:forEach>  
			             
			              
			     </table>
		        
            <br><br>
            
                <ul class="pagination pagination-sm">
                    
                   <c:choose>
                     <c:when test="${ pi.currentPage eq 1 }">
                        <li class="page-item disabled"><a class="page-link" href="#"><</a></li>
                     </c:when>
                     <c:otherwise>
                        <li class="page-item"><a class="page-link" href="storeList.sm?cpage=${ pi.currentPage - 1 }"><</a></li>
                     </c:otherwise>
                   </c:choose> 
                    
                    
                    <c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}"> 
                        <c:if test="${pi.currentPage eq p}">
	                    <li class="page-item active"><a class="page-link" href="storeList.sm?cpage=${ p }">${ p }</a></li>
                        </c:if>
                     <c:if test="${pi.currentPage ne p }">
                        <li class="page-item"><a class="page-link" href="storeList.sm?cpage=${ p }">${ p }</a></li>
                     </c:if> 
                    </c:forEach>
                    
                    <c:choose>
                      <c:when test="${ pi.currentPage eq pi.maxPage }">
                        <li class="page-item disabled"><a class="page-link" href="#">></a></li>
                      </c:when>
                      <c:otherwise>
                         <li class="page-item"><a class="page-link" href="storeList.sm?cpage=${ pi.currentPage + 1 }">></a></li>
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

		<c:forEach var="s" items="${ list }" varStatus="status">
		    <!-- 폐업 버튼 클릭 시 보여질 Modal  -->
		    <div class="modal fade" id="${status.index}">
		        <div class="modal-dialog modal-sm">
		            <div class="modal-content">
		
		                <!-- Modal Header -->
		                <div class="modal-header">
		                    <h4 class="modal-title">폐업</h4>
		                    <button type="button" class="close" data-dismiss="modal" style="margin:10px;text-align:right;" >&times;</button>
		                </div>
		                <form action="storeclose.sm" method="get">
		                    <!-- Modal body -->
		                    <div class="modal-body">
		                        <div align="center">
		                            폐업 후 복구가 불가능합니다. <br>
		                            정말로 탈퇴 하시겠습니까? <br>
		                        </div>
                         <br>
                         
                         <input type="hidden" name="enrNo" value="${ s.enrNo }">	
                          	         
		                    </div>
		                    <!-- Modal footer -->
		                    <div class="modal-footer" align="center">
		                        <button type="submit" class="btn btn-danger">폐업하기</button>
		                    </div>
		                </form>
		            </div>
		        </div>
		    </div>
		</c:forEach>
  </body>

</html>
