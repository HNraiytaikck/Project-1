package com.elearning.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.elearning.models.Course;
import com.elearning.models.Orders;
import com.elearning.models.Service;
import com.elearning.services.CourseService;
import com.elearning.services.OrdersService;
import com.elearning.services.ServiceService;
import com.elearning.services.UserService;

@Controller
public class VendorController {

	@Autowired HttpSession session;
	@Autowired UserService usrv;
	@Autowired ServiceService ssrv;
	@Autowired CourseService csrv;
	@Autowired OrdersService osrv;
	
	
	@GetMapping("/services")
	public String allservices(Model model) {
		String userid=session.getAttribute("userid").toString();
		model.addAttribute("list", ssrv.userservices(userid));
		return "services";
	}
	
	@GetMapping("/addservice")
	public String addservice() {
		return "addservice";
	}
	
	@PostMapping("/addservice")
	public String saveservice(Service srv,RedirectAttributes redirAttrs) {
		ssrv.saveService(srv);
		redirAttrs.addFlashAttribute("msg", "Service created successfully");
		return "redirect:/services";
	}
	
	@GetMapping("/courses")
	public String allcourses(Model model) {
		String userid=session.getAttribute("userid").toString();
		model.addAttribute("list", csrv.usercourses(userid));
		return "courses";
	}
	
	@GetMapping("/addcourse")
	public String addcourse() {
		return "addcourse";
	}
	
	@PostMapping("/addcourse")
	public String savecourse(Course c,RedirectAttributes redirAttrs) {
		csrv.saveCourse(c);
		redirAttrs.addFlashAttribute("msg", "Course created successfully");
		return "redirect:/courses";
	}
	
	@GetMapping("/editcourse")
	public String editcourse(int id,Model model) {
		model.addAttribute("c", csrv.findCourse(id));
		return "editcourse";
	}
	
	@PostMapping("/editcourse")
	public String editcourse(Course c,RedirectAttributes redirAttrs) {
		csrv.saveCourse(c);
		redirAttrs.addFlashAttribute("msg", "Course updated successfully");
		return "redirect:/courses";
	}
	
	@GetMapping("/deactivatecourse")
	public String deactivatecourse(int id,RedirectAttributes redirAttrs) {
		csrv.deactivate(id);
		redirAttrs.addFlashAttribute("msg", "Course deactivated successfully");
		return "redirect:/courses";
	}
	
	@GetMapping("/activatecourse")
	public String activatecourse(int id,RedirectAttributes redirAttrs) {
		csrv.activate(id);
		redirAttrs.addFlashAttribute("msg", "Course activated successfully");
		return "redirect:/courses";
	}
	
	@GetMapping("/editservice")
	public String editservice(int id,Model model) {
		model.addAttribute("c", ssrv.findService(id));
		return "editservice";
	}
	
	@PostMapping("/editservice")
	public String updateservice(Service c,RedirectAttributes redirAttrs) {
		ssrv.saveService(c);
		redirAttrs.addFlashAttribute("msg", "Service updated successfully");
		return "redirect:/courses";
	}
	
	@GetMapping("/deactivateservice")
	public String deactivateservice(int id,RedirectAttributes redirAttrs) {
		ssrv.deactivate(id);
		redirAttrs.addFlashAttribute("msg", "Service deactivated successfully");
		return "redirect:/services";
	}
	
	@GetMapping("/activateservice")
	public String activateservice(int id,RedirectAttributes redirAttrs) {
		ssrv.activate(id);
		redirAttrs.addFlashAttribute("msg", "Service activated successfully");
		return "redirect:/services";
	}
	
	@GetMapping("/orders")
	public String allorders(Model model) {
		String userid=session.getAttribute("userid").toString();
		List<Orders> courses=osrv.vendorOrders(userid, "Course");
		System.out.println(courses);
		model.addAttribute("clist",courses );
		model.addAttribute("slist", osrv.vendorOrders(userid, "Service"));
		return "orders";
	}
}
