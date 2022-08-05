<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <link rel="shortcut icon" href="/sand5rang/resources/images/logo.png" type="">

  <title>Sand5rang</title>

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="/sand5rang/resources/css/bootstrap.css" />

  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
  <!-- nice select  -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha512-CruCP+TD3yXzlvvijET8wV5WxxEh5H8P4cmz0RFbKK6FlZ2sYl3AEsKlLPHbniXKSrDdFewhbmBK5skbdsASbQ==" crossorigin="anonymous" />
  <!-- font awesome style -->
  <link href="/sand5rang/resources/css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="/sand5rang/resources/css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="/sand5rang/resources/css/responsive.css" rel="stylesheet" />
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
/* faq */
.faq_wrapper{padding-bottom:130px; min-height:277px; width:1000px; hight:1000px;}
/*.faq_wrapper .faq_contet{border-top:4px solid #009223; }*/
.faq_wrapper .faq_contet li{border-bottom:1px solid #dddddd; background-color:#0B571F;}
.faq_wrapper .fre{cursor:pointer; position:relative; padding:20px 100px 25px;}
.faq_wrapper .fre:after{content:''; background: 0 0 no-repeat; width:20px; height:20px; position:absolute; right:40px; top:50%; margin-top:-10px;}
.faq_wrapper .fre .q{position:absolute; left:35px; top:50%; margin-top:-15px; color:#fff; font-weight:bold; font-family:font_sw; font-size:18px; width:30px; height:30px; padding-top:1px; box-sizing:border-box; background-color:#0B571F; text-align:center; border-radius:15px;}
.faq_wrapper .fre strong{display:block; color:#0B571F; line-height:26px; font-size:19px; font-weight:blod;}
.faq_wrapper .ask{position:relative; padding:0 100px; overflow:hidden; height:0px;}
.faq_wrapper .ask .ask_text{position:relative; padding:18px 0 22px; border-top:1px solid #dddddd; color:#666666; line-height:26px; font-size:16px; opacity:0;}
.faq_wrapper .ask .a{position:absolute; left:35px; top:21px; color:#fff; font-weight:bold; font-family:font_sw; font-size:18px; width:30px; height:30px; padding-top:1px; box-sizing:border-box; background-color:#0B571F; text-align:center; border-radius:15px;}

.faq_wrapper .faq_contet li,
.faq_wrapper .fre:after,
.faq_wrapper .ask .ask_text{transition-duration:0.4s}

.faq_wrapper .faq_contet li.open{background-color:#f8f8f8}
.faq_wrapper .faq_contet li.open .fre strong{color:#009223; font-weight:300;}
.faq_wrapper .faq_contet li.open .fre:after{transform: rotate(135deg);}
.faq_wrapper .faq_contet li.open .ask_text{opacity:1;}
.subTitle{ font-family: font_ns, sans-serif; font-weight:bolder; color:#0B571F;}

 #fre1{border-top:4px solid #0B571F;  }

.open{
    list-style-type : none;
}
/*버튼*/
.btn.bgc_point {
 background-color: #0B571F;
 color: #fff;
}

.btns_wrapper .btn {
  margin:0 4px;
}
.btns_wrapper {
 width:1000px;
 text-align:center;


}
.btn {
 font-size: 18px;
 font-weight: bold;
 text-align: center;
 display: inline-block;
 vertical-align: middle;
 border-radius:30px;
 transition-duration:0.2s;
}


    </style>
</head>

<body class="sub_page">


  <div class="hero_area">
    <div class="bg-box active">
      <img src="resources/images/gray.jpg" alt="">
    </div>

    <!-- header section strats -->
    <header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="/sand5rang">
            <img src="resources/images/logo.png" width="85px" height="80px">
            <span>
              Sand5rang
            </span>
          </a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="aboutSand.ma">About Sand</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="menu.ma">Menu book</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="branch.ma">지사안내</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="joinForm.an">가맹문의</a>
              </li>
            </ul>
            <div class="user_option">
              <a href="login.me" class="order_online">
                Login
              </a>
            </div>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
  </div>

 <div id="content" style="margin:auto;">
         
     <div class="content">

     <h2 class="subTitle" style="margin:36px 300px; align:center;">가맹관련 자주하는 질문&답변</h2>
        <div class="faq_wrapper" style="margin:36px 200px; align:center;">
          <ul class="faq_contet" id="ui_faq_items" >
            <li class="open">
              <div class="fre" id="fre1">
                 <div class="q">Q</div>
                 <strong>샌드오랑 가맹점 오픈에 필요한 투자금액은 어느 정도인가요?</strong>
          
                </div>
                <div class="ask" style="height:144px;" id="ask1">
                  <div class="a">A</div>
                  <div class="ask_text">
                    최소 전용 면적 25평 기준, 약 2억원~ 2억 1천만원이 예상됩니다.
                    <br>
                    (추가공사, 별도비용, 임대료, 부가세 제외)
                    <br>
                    자세한 예상비용은 홈페이지에 문의를 해주세요.
                    <br>
                    
                  </div>
                </div>
            </li>
            <li class="open" style="none;">
                <div class="fre" id="fre2">
                   <div class="q">Q</div>
                   <strong>샌드오랑 가맹점주가 되기 위한 조건이 있나요?</strong>
                   
                  </div>
                  <div class="ask" style="height:144px;" id="ask2">
                    <div class="a">A</div>
                    <div class="ask_text">
                      샌드오랑은 한국 전통 프랜차이즈이며, 매장수 분포지역 기준, 한국 QSR 브랜드입니다.
                      <br>
                      따라서 제품의 퀄리티, 매장 운영, 고객 서비스에 있어 브랜드의 가치를 실현하기 위해 운영 매누얼 및 본사의 규정과 지침을 이행하고 준수 할 수 있는 분, 고객 서비스 마인드를 갖춘 분과 가맹계약을 체결합니다. 
                    
                      각 지사의 가맹 개발자는 계약 체결 전, 심도 깊은 상담, 성향 테스트를 통해 이부분은 검증합니다.
                   
                    </div>
                  </div>
              </li>
              <li class="open">
                <div class="fre" id="fre3">
                   <div class="q">Q</div>
                   <strong>가맹이 불가능한 지역은 언제쯤 상담 및 가맹점 오픈이 가능한가요?</strong>
                    
                  </div>
                  <div class="ask" style="height:144px;" id="ask3">
                    <div class="a">A</div>
                    <div class="ask_text">
                      지사 설립 후 가맹이 가능한 지역이 되기까지 최소 1년 이상 소요될 것으로 예산되나, <br> 준비 상황에 따라 가맹시점이 달라질 수 있습니다.
                    </div>
                  </div>
              </li>
               <li class="open">
                <div class="fre" id="fre4">
                   <div class="q">Q</div>
                   <strong>현재 가맹이 불가능한 지역은 어디인가요?</strong>
                    
                  </div>
                  <div class="ask" style="height:144px;" id="ask4">
                    <div class="a">A</div>
                    <div class="ask_text">
                     샌드오랑은 각 서울지역권에 대해 본사로부터 승인을 받은 지사가 직접 가맹사업을 진행하고있습니다.
                     <br>
                     지사가 아직 설립되지 않은 지역은 서울지역 제외한 경기지역,강원도,충청도,제주도등입니다.
                    </div>
                  </div>
              </li>
              <li class="open">
                <div class="fre" id="fre5">
                   <div class="q">Q</div>
                   <strong>가맹점 개설 절차로는 어떻게 되나요?</strong>
            
                  </div>
                  <div class="ask" style="height:400px;"id="ask5">
                    <div class="a">A</div>
                    <div class="ask_text" style="height:400px;" >
                      <img src="resources/images/가맹점과정절차.png" style="position:absolute; top:0; left:0;width:100%; height:100%;">
                    </div>
                  </div>
              </li>

          </ul>
    <div class="btns_wrapper" >
    <a class="btn bgc_point i_arr" href="joinForm.an" >
      <span >가맹신청/문의</span>
    </a>
    </div>
         
        </div>
        
    </div>

  
    <script>
      $("#ask1").hide();
    </script>
        <script>
      $("#ask2").hide();
    </script>
        <script>
      $("#ask3").hide();
    </script>
     <script>
      $("#ask4").hide();
    </script>
        <script>
      $("#ask5").hide();
    </script>


    <script>
    $(function(){
       
         $("#fre1").click(function(){


            var $p = $(this).next();  
            
            
            if($p.css("display") =="none"){ 
 
              $(this).siblings("p").slideUp(500);

               $p.slideDown(500);             
            }
            else{ 

        
                $p.slideUp(500);
            }

         });

    });
</script>
  <script>
    $(function(){
       
         $("#fre2").click(function(){


            var $p = $(this).next();  
            
            
            if($p.css("display") =="none"){ 
 
              $(this).siblings("p").slideUp(500);

               $p.slideDown(500);             
            }
            else{ 

        
                $p.slideUp(500);
            }

         });

    });
</script>
  <script>
    $(function(){
       
         $("#fre3").click(function(){


            var $p = $(this).next();  
            
            
            if($p.css("display") =="none"){ 
 
              $(this).siblings("p").slideUp(500);

               $p.slideDown(500);             
            }
            else{ 

        
                $p.slideUp(500);
            }

         });

    });
</script>
  <script>
    $(function(){
       
         $("#fre4").click(function(){


            var $p = $(this).next();  
            
            
            if($p.css("display") =="none"){ 
 
              $(this).siblings("p").slideUp(500);

               $p.slideDown(500);             
            }
            else{ 

        
                $p.slideUp(500);
            }

         });

    });
</script>
  <script>
    $(function(){
       
         $("#fre5").click(function(){


            var $p = $(this).next();  
            
            
            if($p.css("display") =="none"){ 
 
              $(this).siblings("p").slideUp(500);

               $p.slideDown(500);             
            }
            else{ 

        
                $p.slideUp(500);
            }

         });

    });
</script>
  </div>


</body>
  






  <footer class="footer_section">
    <div class="container">
      <div class="row">
        <div class="col-md-4 footer-col">
          <div class="footer_contact">
            <h4>
              Contact Us
            </h4>
            <div class="contact_link_box">
              <a href="javascript:;">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <span>
                  Location
                </span>
              </a>
              <a href="javascript:;">
                <i class="fa fa-phone" aria-hidden="true"></i>
                <span>
                  Call 02) 807-4421 
                </span>
              </a>
              <a href="javascript:;">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <span>
                  Sand5rang@naver.com
                </span>
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-4 footer-col">
          <div class="footer_detail">
            <a href="javascript:;" class="footer-logo">
              Sand5rang
            </a>
            <p>
              Korea tradition Sandwich Franchise Sand5rang 
            </p>

          </div>
        </div>
        <div class="col-md-4 footer-col">
          <h4>
            Opening Hours
          </h4>
          <p>
            Everyday
          </p>
          <p>
            10.00 Am -10.00 Pm
          </p>
        </div>
      </div>
      <div class="footer-info">
        <p>
          &copy; <span id="displayYear"></span> All Rights Reserved By
          Sand5rang<br><br>
          &copy; <span id="displayYear"></span> Distributed By
          Sand5rang
        </p>
      </div>
    </div>
  </footer>
  <!-- footer section -->

  <!-- jQery -->
  <script src="/sand5rang/resources/js/jquery-3.4.1.min.js"></script>
  <!-- popper js -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
  </script>
  <!-- bootstrap js -->
  <script src="/sand5rang/resources/js/bootstrap.js"></script>
  <!-- owl slider -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
  </script>
  <!-- isotope js -->
  <script src="https://unpkg.com/isotope-layout@3.0.4/dist/isotope.pkgd.min.js"></script>
  <!-- nice select -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
  <!-- custom js -->
  <script src="/sand5rang/resources/js/custom.js"></script>
  <!-- Google Map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap">
  </script>
  <!-- End Google Map -->

</body>

</html>