package com.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blog.dao.BlogDAO;
import com.blog.dto.BlogVO;

public class RankingListAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "/blog/RankingList.jsp";
		
		BlogDAO bDao = BlogDAO.getInstance();
		
		List<BlogVO> bloglist = bDao.selectAllBlogs();
		
		request.setAttribute("bloglist", bloglist);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
		
	}
	
}
