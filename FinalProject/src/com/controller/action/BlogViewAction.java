package com.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blog.dao.BlogDAO;
import com.blog.dto.BlogVO;


public class BlogViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub		
		String url = "/blog/BlogView.jsp";

		int num = Integer.parseInt(request.getParameter("num"));

		BlogDAO bDao = BlogDAO.getInstance();

		bDao.updateReadCount(num);

		BlogVO bVo = bDao.selectOneBlogByNum(num);

		request.setAttribute("blog", bVo);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
