package com.skillIndia.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skillIndia.model.Establishment;
import com.skillIndia.service.EstablishmentService;

@Controller
public class EstablishmentController {

	@Autowired
	EstablishmentService establishmentServiceObject;

	public void setEstablishmentServiceObject(EstablishmentService establishmentServiceObject) {
		this.establishmentServiceObject = establishmentServiceObject;
	}
	
	@RequestMapping("/EstablishmentRegistration")
	public String showEstablishmentRegPage(Model model) {
		model.addAttribute("establishment", new Establishment());
		/*model.addAttribute("address", new Address());
		model.addAttribute("bankDetails", new BankDetails());*/
		return "EstablishmentRegistration";
	}
	
	@RequestMapping(value="/EstablishmentLogin",method=RequestMethod.POST)
	public String validateEstablishmentRegistration(@ Valid @ModelAttribute("establishment") Establishment establishment,
			BindingResult result, Model model, HttpServletRequest request) {
		establishmentServiceObject.addEstablishment(establishment);
			System.out.println(establishment);
			return "EstablishmentLogin";
	}
	
	@RequestMapping(value = "/establishmentlogin")
	public String LoginPage(Model model,HttpSession session) {
		
		model.addAttribute("establishment", new Establishment());
		return "EstablishmentLogin";
	}
	
	@RequestMapping(value="/EstablishmentDashboard",method=RequestMethod.POST)
	public String validateEstablishmentLogin(@Valid @ModelAttribute("establishment") Establishment establishment,
			BindingResult bindingResult, Model model, HttpServletRequest request) {
		String userIdEst = request.getParameter("username");
		String estPassword = request.getParameter("password");
		if(establishmentServiceObject.verifyEstablishment(userIdEst, estPassword))
		{
		return "EstablishmentDashboard";
	}
		return "error";
	
}
}
