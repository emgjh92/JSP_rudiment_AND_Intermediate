package com.ja.freeboard.controller;

import com.ja.freeboard.controller.command.*;

import java.util.*;

public class CommandFactory {
	
	private HashMap<String,CommandHandler> commandMap;
	
	public CommandFactory() {
		commandMap = new HashMap<String,CommandHandler>();
		
		commandMap.put("/login_page.do", new LoginPageHandler());
		commandMap.put("/join_member_page.do", new JoinMemberPageHandler());
		commandMap.put("/join_member_process.do", new JoinMemberProcessHandler());
		commandMap.put("/login_process.do", new LoginProcessHandler());
		commandMap.put("/main_page.do", new MainPageHandler());
		commandMap.put("/logout_process.do", new LogoutProcessHandler());
		commandMap.put("/write_content_page.do", new WriteContentPageHandler());
		commandMap.put("/write_content_process.do", new WriteContentProcessHandler());
		commandMap.put("/board_view.do", new ReadContentPageHandler());
		commandMap.put("/delete_content_process.do", new DeleteContentProcessHandler());
		commandMap.put("/update_content_page.do", new UpdateContentPageHandler());
		commandMap.put("/update_content_process.do", new UpdateContentProcessHandler());
		
		commandMap.put("/", new MainPageHandler()); //20200423 코드추가 : 웰컴 페이지(main_page.do) 설정
	}
	
	
	public CommandHandler getCommandHandler(String command) {
		
		return commandMap.get(command);
		
	}
}
