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

public class LogoutAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		session.invalidate();
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("blog/MainLogin.jsp");
		
		BlogDAO bDao = BlogDAO.getInstance();
		
		List<BlogVO> bloglist = bDao.selectAllBlogs();
		
		request.setAttribute("bloglist", bloglist);
		
		
		
		dispatcher.forward(request, response);
		
	}

}
