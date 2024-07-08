package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.dao.ItemDAO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.ItemInfoVO;

public class ShoppingMallController implements Controller{
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		//객체 생성 후 값 가지고 오기
//		MemberDAO dao = new MemberDAO();
//		dao.insert();
		
		
		//받을때
//		request.setAttribute(null, response);
		
		ItemDAO itemDao = new ItemDAO();
		List<ItemInfoVO> itemList =  itemDao.productAll();
		request.setAttribute("itemList", itemList);
		
		return "/index.jsp";
	}
	
}
