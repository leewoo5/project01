package org.zerock.restcontroller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.BoardVO_BSR;
import org.zerock.domain.Criteria_BSR;
import org.zerock.service.BoardService_BSR;

@RestController
@RequestMapping("/tboard")
public class SearchBoardRestController_BSR {

	
	static Logger logger = LoggerFactory.getLogger(SearchBoardRestController_BSR.class);
	
	@Inject
	BoardService_BSR service;
	
	@RequestMapping(value = "/list")
	public List<BoardVO_BSR> listPage(Criteria_BSR cri, HttpServletRequest request, int board_id) throws Exception{
		
		if(board_id < 1){
			board_id = 1;
		}
		cri.setBoard_id(board_id);
		logger.debug(cri.toString());
		List<BoardVO_BSR> boards = service.listCriteria(cri);

		return boards;	//Marshall(마샬)
		
	}
	
	@RequestMapping(value = "/listAll")
	public ResponseEntity<String> listAll(Criteria_BSR cri, HttpServletResponse response) throws Exception{
		logger.info(cri.toString());
		response.setContentType("application/json");
		
		return new ResponseEntity<String>("SUCCESS", HttpStatus.OK);	//Marshall(마샬)
		
	}
	
	
}
