package com.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.dao.MemberDAO;
import com.member.dto.MemberVO;


public class MemberUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MemberVO mVo = new MemberVO();

		mVo.setId(request.getParameter("id"));
		mVo.setName(request.getParameter("name"));
		mVo.setPassword(request.getParameter("password"));
		mVo.setEmail(request.getParameter("email"));
		mVo.setPhone(request.getParameter("phone"));
		mVo.setBirth(request.getParameter("birth"));

		MemberDAO bDao = MemberDAO.getInstance();
		bDao.updateMember(mVo);

	}

}
