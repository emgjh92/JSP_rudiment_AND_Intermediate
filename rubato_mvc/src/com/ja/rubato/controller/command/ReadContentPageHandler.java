package com.ja.rubato.controller.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ja.rubato.model.*;
import com.ja.rubato.vo.*;

public class ReadContentPageHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {

		int b_no = Integer.parseInt(request.getParameter("b_no"));
		
		
		
		BoardDao boardDao = new BoardDao();
		boardDao.update2(b_no);
		
		
		
		BoardVo boardVo = new BoardDao().selectByNo(b_no);
		
		MemberVo memberVo = new MemberDao().selectByNo(boardVo.getM_no());
		
		ContentDataVo contentDataVo = new ContentDataVo(memberVo,boardVo);
		
		request.setAttribute("contentDataVo", contentDataVo);
		
		return "/WEB-INF/view/board_view.jsp";
	}
}
