package com.adnan.trialproject.Controller;

import com.adnan.trialproject.model.JobPost;
import com.adnan.trialproject.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class adnanController {

    @Autowired
    private JobService jobService;
    @GetMapping({"/","home"})
    public String home() {
        return "home";
     }
     @GetMapping("/addjob")
     public String addjob() {
        return "addjob";
     }
     @GetMapping("/viewalljobs")
    public String viewalljobs(Model model) {
        List<JobPost> jobs= jobService.getjobs();
         model.addAttribute("jobPosts", jobs);
        return "viewalljobs";
     }
     //this is controller
     @PostMapping("/handleForm")
     public String handleForm(JobPost jobPost){
        jobService.addjob(jobPost);
        return "success";
     }
}
