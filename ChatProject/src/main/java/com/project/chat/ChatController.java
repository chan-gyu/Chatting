package com.project.chat;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ChatController {
	
	private Logger logger = LoggerFactory.getLogger(ChatController.class);
	
	@RequestMapping("/chat.do")
	public String chat(Model model, @RequestParam("user") String user) {
		logger.info("[Controller] : chat.do");
		logger.info("[user] : " + user);
		model.addAttribute("user" , user);
		return "chat";
	}
	
}
