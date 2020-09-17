package com.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.blog.dao.BlogDAO;
import com.blog.dto.BlogVO;
import com.member.dao.MemberDAO;
import com.member.dto.MemberVO;

public class LoginCheckPassAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		
		String url = null;
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		MemberDAO mDao = MemberDAO.getInstance();
		MemberVO mVo = mDao.logincheck(id, password);
		
		if (mVo.getId().equals(id) && mVo.getPassword().equals(password)) { //성공
			url ="/blog/CheckSuccess.jsp";
			
			session.setAttribute("id", id);
			session.setAttribute("password", password);
			
		} else {//실패
			url ="/blog/MainLogin.jsp";
			request.setAttribute("message", "아이디 혹은 비밀번호를 확인해주세요");
		}
		
		BlogDAO bDao = BlogDAO.getInstance();
		
		List<BlogVO> bloglist = bDao.selectAllBlogs();
		
		request.setAttribute("bloglist", bloglist);	
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}
	
}
