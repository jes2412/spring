package com.ikosmo.webApp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	@RequestMapping("aboutUs")
	public String aboutUs(){
		return "aboutUs";
	}
	@RequestMapping("beanInfo")
	public String beanInfo(){
		return "/single/freesia-single";
	}
	@RequestMapping("order")
	public String Order(){
		return "order";
	}
	
	@RequestMapping("/single/freesia-single")
	public String freesia(){
		return "single/"+singleNames[0]+"-single";
	}
	@RequestMapping("/single/deepPurple-single")
	public String deepPurple(){
		return "single/"+singleNames[1]+"-single";
	}	
	@RequestMapping("/single/roasted-single")
	public String roasted(){
		return "single/"+singleNames[2]+"-single";
	}	
	@RequestMapping("/single/hemlock-single")
	public String hemlock(){
		return "single/"+singleNames[3]+"-single";
	}		
	@RequestMapping("/single/softyBlue-single")
	public String softyBlue(){
		return "single/"+singleNames[4]+"-single";
	}			
	@RequestMapping("/single/colombiaSupremo-single")
	public String colombiaSupremo(){
		return "single/"+singleNames[5]+"-single";
	}			
	@RequestMapping("/single/brazil-single")
	public String brazil(){
		return "single/"+singleNames[6]+"-single";
	}				
	@RequestMapping("/single/cayenne-single")
	public String cayenne(){
		return "single/"+singleNames[7]+"-single";
	}				
	@RequestMapping("/single/silkyBrown-single")
	public String silkyBrown(){
		return "single/"+singleNames[8]+"-single";
	}	
	@RequestMapping("/single/coral-single")
	public String coral(){
		return "single/"+singleNames[9]+"-single";
	}
	@RequestMapping("/single/cokein-single")
	public String cokein(){
		return "single/"+singleNames[10]+"-single";
	}			
	@RequestMapping("/single/dazzlingBlue-single")
	public String dazzlingBlue(){
		return "single/"+singleNames[11]+"-single";
	}			
	@RequestMapping("/single/freesiaReserve-single")
	public String freesiaReserve(){
		return "single/"+singleNames[12]+"-single";
	}					
	@RequestMapping("/single/deepPurpleReserve-single")
	public String deepPurpleReserve(){
		return "single/"+singleNames[13]+"-single";
	}		
	@RequestMapping("/single/silkyBrownReserve-single")
	public String silkyBrownReserve(){
		return "single/"+singleNames[14]+"-single";
	}			
	@RequestMapping("/single/coralReserve-single")
	public String coralReserve(){
		return "single/"+singleNames[15]+"-single";
	}
	@RequestMapping("/single/tangerineTango-single")
	public String tangerineTango(){
		return "single/"+singleNames[16]+"-single";
	}	
	@RequestMapping("/single/warmTaupe-single")
	public String warmTaupe(){
		return "single/"+singleNames[17]+"-single";
	}					
	@RequestMapping("/single/fiesta-single")
	public String fiesta(){
		return "single/"+singleNames[18]+"-single";
	}						
	String[] singleNames = {"freesia","deepPurple","roasted","hemlock","softyBlue","colombiaSupremo","brazil","cayenne",
			"silkyBrown","coral","cokein","dazzlingBlue","freesiaReserve","deepPurpleReserve","silkyBrownReserve",
			"coralReserve","tangerineTango","warmTaupe","fiesta"};
}
