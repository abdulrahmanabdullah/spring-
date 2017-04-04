package webPage02;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
		
	//Main Page ... 
	@RequestMapping("/")
	public String mainPage(){
		return "main-page";
	}
	
	
	//Articles .. 
	
	@RequestMapping("/Articles")
	public String articlesPage(){
		return "Articles";
	}

	
	//Categories Page .. 
	@RequestMapping("/Categories")
	public String categoriesPage(){
		return "Categories";
	}
	
	// about me .. and contact the admin .. 
	@RequestMapping("/Contact")
	public String contactPage(){
		return "Contact";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
