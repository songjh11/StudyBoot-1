package com.iu.home.file;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.iu.home.board.qna.QnaFileVO;
import com.iu.home.board.qna.QnaService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class FileManageController {
	
	@Autowired
	private QnaService qnaService;
	
	@GetMapping("/fileDown/{p}") //RestFul, RestAPI
	public ModelAndView fileDown(@PathVariable(name = "p") String path, QnaFileVO qnaFileVO)throws Exception{
		log.info("Path : {} ", path);
		
		ModelAndView mv = new ModelAndView();
		//DB에서 정보 조회
		if(path.equals("qna")) {
			qnaFileVO = qnaService.getFileDetail(qnaFileVO);
		}else if(path.equals("notice")) {
			qnaFileVO = qnaService.getFileDetail(qnaFileVO);
		}
		mv.addObject("fileVO", qnaFileVO);
		mv.addObject("path", path);
		mv.setViewName("fileManager"); //원래는 fileManager.jsp를 찾아가야하는데 얘는 bean 객체를 내장하고 있음
		
		//BenaNameResolver
		//view의 이름과 일치하는 bean의 이름이 있으면 해당 Bean 실행 
		
		//InternalResourceViewResolver
		// /WEB_INF/views/fileManager.jsp
		
		return mv;
	}
	
	public void setFileDelete(String path, QnaFileVO qnaFileVO) throws Exception {
		
	}
	

}
