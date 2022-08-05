package com.s5.sand5rang.sangmi.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.common.template.Pagination;
import com.s5.sand5rang.hyunsik.service.HyunsikService;
import com.s5.sand5rang.hyunsik.vo.Main;
import com.s5.sand5rang.sangmi.service.SangmiService;
import com.s5.sand5rang.sangmi.vo.EmailSend;
import com.s5.sand5rang.sangmi.vo.Enroll;
import com.s5.sand5rang.sangmi.vo.Inquery;
import com.s5.sand5rang.sein.vo.Store;

@Controller
public class SangmiController {

	
	@Autowired
	private SangmiService SangmiService;
	
	@Autowired
	private HyunsikService hyunsikService;
	
	//---------관리자----------------
	//가맹점 전체리스트 조회
	@RequestMapping(value="storeList.sm")
	public String storeList(
			@RequestParam(value="cpage", defaultValue="1") int currentPage,
			Model model) {

		//1.게시글 총 갯수 조회
		int listCount = SangmiService.selectListCount1();
		
		int pageLimit=10;
		int boardLimit=5;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		//2.전체리스트 조회
		ArrayList<Store> list = SangmiService.storeList(pi);
		
		//System.out.println(list+"조회중");
		model.addAttribute("pi",pi);
		model.addAttribute("list",list);

		return "sangmi/storeList";
	}
	// 폐업 버튼을 누르면 store에 status의 값이 n으로 변경해주는것

	@RequestMapping("storeclose.sm")
	public String storeclose(int enrNo,Model model, HttpSession session) {
		
		
		int result = SangmiService.storeclose(enrNo);
		
	
		 if(result > 0) {
				
				session.setAttribute("alertMsg", "성공적으로 폐업처리가 되었습니다."); 
				
				return "redirect:storeList.sm";
				
			}
			else {
				
				model.addAttribute("alertMsg", "폐업 처리 실패가 되었습니다.");
				
				return "common/errorAd";
			}
		 
		}
		
	
	
	//가맹가입신청 list 조회
	
	@RequestMapping(value="storeEnrollList.sm")
	public String storeEnrollList(
			@RequestParam(value="cpage", defaultValue="1") int currentPage,
			Model model) {

		//1.게시글 총 갯수 조회
		int listCount = SangmiService.selectListCount3();
		
		int pageLimit=10;
		int boardLimit=5;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		//2.전체리스트 조회
		ArrayList<Enroll> list = SangmiService.storeEnrollList(pi);
		
		//System.out.println(list+"조회중");
		model.addAttribute("pi",pi);
		model.addAttribute("list",list);

		return "sangmi/storeEnrollList";
	}
	
	
	

	//가맹가입신청 상세페이지
	@RequestMapping(value="stEnDetail.sm")
	public ModelAndView selectEnroll(int enr, ModelAndView mv) {
		
		
		//번호뽑아야 한다. 
		//상세 조회 
		Enroll e = SangmiService.selectEnroll(enr);
		
		mv.addObject("e", e).setViewName("sangmi/storeEnrollDetail");
		
		
		return mv;
	}
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;


	//가맹가입 폼 
	@RequestMapping("insertStore.sm")
	public String insertStore(Store s, Enroll e, Model model, HttpSession session, String email,
			                  String storeName, String storeId, String storePwd, String address,
			                  String address_detail, String message) {
        

		
		String a = "안녕하세요. 샌드오랑입니다. \n 가맹점 명 : "+storeName+""
				+ " ,가맹점 아이디: "+storeId+" ,가맹점 비밀번호 : "+storePwd +" "
				+ "\n 가맹점 주소: "+address+address_detail+""
				+ "\n 메시지: "+message;
		//EmailSend.naverMailSend("osm248@naver.com", a);
		EmailSend.naverMailSend(email, a);
		
		
		s.setStoreName(storeName);
		s.setStoreId(storeId);
		s.setStorePwd(storePwd);
		s.setAddress(address+address_detail);
		s.setMessage(message);
		
		//System.out.println("store: "+ s);		
		//암호화 작업
		String encPwd = bCryptPasswordEncoder.encode(s.getStorePwd());
		
		//s =>storePwd필드값을 encPwd으로 바꿔치기
		s.setStorePwd(encPwd);
		
		int result = SangmiService.insertStore(s);
	
		int result2 = SangmiService.updateEnroll(e);
		
		
		if(result>0 && result2>0) {
			
			session.setAttribute("alertMsg", "성공적으로 가입이 되었습니다");
			return "redirect:/storeEnrollList.sm";
			
		}
		else {
			
			model.addAttribute("errorMsg", "가입이 실패되었습니다.");
			
			return "common/errorAd";
		}
		
		
		
	}
	//가맹가입 - 뱐려 폼
	@RequestMapping("referStore.sm")
	public String referStore(Enroll e, Model model, HttpSession session,
			                 String email, String message) {

		String a = "안녕하세요. 샌드오랑입니다. "+""
				+ "\n 메시지: "+message;
		//EmailSend.naverMailSend("osm248@naver.com", a);
		EmailSend.naverMailSend(email, a);
		
		e.setMessage(message);
		
				
		int result = SangmiService.referStore(e);
		
		if( result >0) {
			
			session.setAttribute("alertMsg","반려처리가 되었습니다");
			return "redirect:/storeEnrollList.sm";
		}
		else {
			
			model.addAttribute("errorMsg","반려처리가 실패하였습니다.");
			
			return "common/errorAd";
		}
		
		
		
	
	}
	//가맹점 이름 체크!
	@ResponseBody
	@RequestMapping(value="idCheck.sm", produces="text/html; charset=UTF-8")
	public String idCheck(String checkId) {
		
		//System.out.println(checkId);
		
		int count =SangmiService.idCheck(checkId);
		
		//return (조건식) ? ㅌㅌㅌ : xxx; 삼항연산자 이용
		return (count >0 ) ? "NNNNN" : "NNNNY";
		
	}
	


	//---------가맹주----------------
	// 1:1 문의 전체조회
	@RequestMapping(value="inqueryList.sm")
	public String inqueryList(
			@RequestParam(value="cpage", defaultValue="1") int currentPage
			,Model model, HttpSession session) {
		
		Store user = (Store)session.getAttribute("loginstore");

		String storeId = user.getStoreId();
		
		Main m = hyunsikService.befIndent2(storeId);
        model.addAttribute("m", m);

		//System.out.println("storeId : "+storeId);
		//1.게시글 총 갯수 조회
		int listCount = SangmiService.selectListCount2(storeId);
		
		int pageLimit=10;
		int boardLimit=5;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		//2.전체리스트 조회
		ArrayList<Inquery> list = SangmiService.inqueryList(pi,storeId);
		
		model.addAttribute("pi",pi);
		model.addAttribute("list",list);
		model.addAttribute("storeId",storeId);
		
		 return "sangmi/inqueryList";
	}
	
	
	//1:1문의 작성폼
	@RequestMapping(value="inqueryEnroll.sm")
	public String inqueryEnroll(Model model, HttpSession session, Inquery i) {
		
		Store user = (Store)session.getAttribute("loginstore");
		String storeId = user.getStoreId();
		
		Main m = hyunsikService.befIndent2(storeId);
        model.addAttribute("m", m);
		
		i.setStoreId(storeId);
		
		String sss = SangmiService.selectInsert(i);
		//System.out.println("sss : "+ sss);	
		
		//System.out.println("storeId"+storeId);
		
		i.setStoreId(sss);
		model.addAttribute("i",i);
		
		
		return "sangmi/inqueryEnroll";
	}
	
	
	
	
	//1:1문의 글 작성
	@RequestMapping(value="insert.sm")
	public String inquertInsert(Inquery i, HttpSession session, Model model) {
		

		Store user = (Store)session.getAttribute("loginstore");

		String storeId = user.getStoreId();
		
		Main m = hyunsikService.befIndent2(storeId);
        model.addAttribute("m", m);
		
		i.setStoreId(storeId);
		int result = SangmiService.inquertInsert(i);
		
		
		if(result >0 ) {
			
			session.setAttribute("alertMsg", "문의글이 성공적으로 등록되었습니다.");
			
			return "redirect:inqueryList.sm";
		}
		else {
		
			model.addAttribute("errorMsg", "문의글 등록이 실패가 되었습니다.");
			
			return "common/errorFr";
		}
		
	}
	
	//1:1문의 상세조회
	@RequestMapping(value="indetail.sm")
	public ModelAndView selectInquery(int ino,HttpSession session,Model model, ModelAndView mv) {
		
		Store user = (Store)session.getAttribute("loginstore");

		String storeId = user.getStoreId();
		
		Main m = hyunsikService.befIndent2(storeId);
        model.addAttribute("m", m);
		
		Inquery i = SangmiService.selectInquery(ino);
		
		mv.addObject("i",i).setViewName("sangmi/inqueryDetail");
		
		return mv;
	}
	
	
	//1:1문의 수정 폼 
	@RequestMapping(value="inUpdateForm.sm")
	public String inUpdateForm(int ino,HttpSession session, Model model) {
		
		Store user = (Store)session.getAttribute("loginstore");

		String storeId = user.getStoreId();
		
		Main m = hyunsikService.befIndent2(storeId);
        model.addAttribute("m", m);
		
		//해당 상세조회 요청
		Inquery i = SangmiService.selectInquery(ino);
		
		model.addAttribute("i", i);
		
		return "sangmi/inqueryUpdate";
	}
	//1:1문의 수정
	// => 카테고리 정렬, 카테고리수정한거 적용되야 하고, 답변상태 N과 Y되면 날짜로 변하게 하기 
	@RequestMapping(value="inupdate.sm")
	public String inupdate(Inquery i, HttpSession session, Model model) {
	
		Store user = (Store)session.getAttribute("loginstore");

		String storeId = user.getStoreId();
		
		Main m = hyunsikService.befIndent2(storeId);
        model.addAttribute("m", m);
		
		int result = SangmiService.inupdate(i);
		
		//System.out.println(result + "후");
		
		if(result > 0) {
			
			session.setAttribute("alertMsg", "문의글이 성공적으로 수정되었습니다.");
			
			return "redirect:indetail.sm?ino="+i.getInqNo();
		}
		else {
			model.addAttribute("errorMsg", "문의글 수정이 실패가 되었습니다.");
			
			return "common/errorFr";
		}
	}
	
	
	
	
	
	
	//FAQ 
	@RequestMapping(value="faq.sm")
	public String faq(Model model) {
		return "sangmi/faq";
	}
	
}
