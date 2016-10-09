package org.zerock.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.zerock.service.AniService;
import org.zerock.service.BoardService_BSR;
import org.zerock.service.BookService;
import org.zerock.service.GBoardService;
import org.zerock.service.MovieService;
import org.zerock.service.QnaService;

import javafx.animation.Animation;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

  private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
  
  @Inject
  private GBoardService gservice;
  
  @Inject
  private BookService service;

  @Inject
  private QnaService serviceqna;
  
  @Inject
  private BoardService_BSR tservice;
  
  @Inject
  private AniService  aniservice;
  
  @Inject
  private MovieService movieservice;
  
  /**
   * Simply selects the home view to render by returning its name.
   */
  @RequestMapping(value = "/", method = RequestMethod.GET)
  public String home(Locale locale, Model model) throws Exception {
    logger.info("Welcome home! The client locale is {}.", locale);

    Date date = new Date();
    DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

    String formattedDate = dateFormat.format(date);

    model.addAttribute("serverTime", formattedDate);
    
    model.addAttribute("book",service.newList());
    model.addAttribute("qna",serviceqna.listNew());
    model.addAttribute("game",gservice.listNew());
    model.addAttribute("torrent",tservice.listNew());
    model.addAttribute("movie",movieservice.newList());
    model.addAttribute("ani",aniservice.newList());
    
    return "home";
  }
  
  
  @RequestMapping(value = "/doA", method = RequestMethod.GET)
  public String doA(Locale locale, Model model) {
    

    System.out.println("doA....................");
    
    return "home";
  }  
  
  @RequestMapping(value = "/doB", method = RequestMethod.GET)
  public String doB(Locale locale, Model model) {
    

    System.out.println("doB....................");
    
    model.addAttribute("result", "DOB RESULT");
    
    return "home";
  }  
  

  @RequestMapping(value = "/test", method = RequestMethod.GET)
  public void ajaxTest() {

  }

}
