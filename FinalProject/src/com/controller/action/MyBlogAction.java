package com.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blog.dao.BlogDAO;
import com.blog.dto.BlogVO;

public class MyBlogAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String url = "/blog/MyBlog.jsp";

		String id = request.getParameter("id");

		BlogDAO bDao = BlogDAO.getInstance();

		List<BlogVO> bloglist = bDao.selectAllBlogById(id);

		request.setAttribute("bloglist", bloglist);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
