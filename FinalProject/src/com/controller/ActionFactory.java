package com.controller;

import com.controller.action.Action;
import com.controller.action.BlogDeleteAction;
import com.controller.action.BlogUpdateAction;
import com.controller.action.BlogUpdateFormAction;
import com.controller.action.BlogViewAction;
import com.controller.action.BlogWriteAction;
import com.controller.action.BlogWriteFormAction;
import com.controller.action.GotoBlogJoinAction;
import com.controller.action.LoginCheckPassAction;
import com.controller.action.LogoutAction;
import com.controller.action.MainPageAction;
import com.controller.action.MemberInsertAction;
import com.controller.action.MemberUpdateAction;
import com.controller.action.MemberUpdateFormAction;
import com.controller.action.MyBlogAction;
import com.controller.action.MyBlogViewAction;
import com.controller.action.RankingListAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();
	
	private ActionFactory() {
		super();
	}
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : " + command);
		
		if(command.equals("main_page")) {
			action = new MainPageAction();
		} else if (command.equals("join_page")) {
			action = new GotoBlogJoinAction();
		} else if (command.equals("member_insert")) {
			action = new MemberInsertAction();
		} else if (command.equals("login_success")) {
			action = new LoginCheckPassAction();
		} else if (command.equals("log_out")) {
			action = new LogoutAction();
		} else if (command.equals("blog_list")) {
			action = new RankingListAction();
		} else if (command.equals("blog_view")) {
			action = new BlogViewAction();
		} else if (command.equals("member_update_form")) {
			action = new MemberUpdateFormAction();
		} else if (command.equals("member_update")) {
			action = new MemberUpdateAction();
		} else if (command.equals("blog_write_form")) {
			action = new BlogWriteFormAction();
		} else if (command.equals("blog_write")) {
			action = new BlogWriteAction();
		} else if (command.equals("my_blog")) {
			action = new MyBlogAction();
		} else if (command.equals("blog_delete")) {
			action = new BlogDeleteAction();
		} else if (command.equals("my_blog_view")) {
			action = new MyBlogViewAction();
		} else if (command.equals("blog_update_form")) {
			action = new BlogUpdateFormAction();
		} else if (command.contentEquals("blog_update")) {
			action = new BlogUpdateAction();
		}
		
		
		
		return action;
	}
	
	
}
