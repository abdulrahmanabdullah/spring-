package webPage02;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/members")
public class MembersController {
	
	
	/*
	 * add an initBinder .. to convert trim input strings
	 * remove leading and trailing whitespace 
	 * resolve issue for our validation . 
	 * */
	
	@InitBinder
	public void initBinder(WebDataBinder dataBinder){
		
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		
		dataBinder.registerCustomEditor(String.class,stringTrimmerEditor);
	}
	
//	
	@RequestMapping("/Registration")
	public String showForm(Model theModel){
		//Create the members object 
		
		Members theMembers = new Members();
		
		// add the members to the model .. 
		
		theModel.addAttribute("members",theMembers);
		
		return "members-form"; 
	}

	
	@RequestMapping("/processForm")
	public String processForm(@Valid @ModelAttribute("members") Members theMemebser,BindingResult theResult){
		
		if(theResult.hasErrors()){
			return "members-form";
		}
		else{
			return "Registration-confirmed" ;
		}
	
		
		
	}
}
