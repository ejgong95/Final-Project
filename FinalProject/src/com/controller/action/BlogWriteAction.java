package com.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blog.dao.BlogDAO;
import com.blog.dto.BlogVO;


public class BlogWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BlogVO bVo = new BlogVO();
		
		bVo.setId(request.getParameter("id"));
		bVo.setTitle(request.getParameter("title"));
		bVo.setContent(request.getParameter("content"));
		

		BlogDAO bDao = BlogDAO.getInstance();
		bDao.insertBlog(bVo);

		new MyBlogAction().execute(request, response);
		
	}

}
