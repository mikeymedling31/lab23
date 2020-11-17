package co.grandcircus.Lab23;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class GradesController {
	@Autowired
	private GradeRepository rep;
	
	@GetMapping("/")
	public String index(Model model) {
		List<Grade> grades = rep.findAll();
		model.addAttribute("grades",grades);
		return "index";
	}
	
	@GetMapping("/add")
	public String add() {
		return "addform";
	}
	
	@PostMapping("/add")
	public String add(Grade grade, Model model) {
		rep.save(grade);
		model.addAttribute("grade", grade);
		return "addconfirm";
	}
	
	@GetMapping("/delete")
	public String delete(long id, Model model) {
		Grade grades = rep.findById(id).get();
		model.addAttribute("grade", grades);
		return "deletepage";
	}	
	
	@GetMapping("/reallydelete")
	public String reallydelete(long id) {
		rep.deleteById(id);
		return "redirect:/";
	}
}
