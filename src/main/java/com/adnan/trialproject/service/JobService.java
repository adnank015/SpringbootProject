package com.adnan.trialproject.service;

import com.adnan.trialproject.model.JobPost;
import com.adnan.trialproject.repo.JobRepo;
import org.eclipse.tags.shaded.org.apache.bcel.generic.PUSH;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
@Service
public class JobService {

    @Autowired
    private JobRepo jobRepo;

    public void addjob(JobPost job){
        jobRepo.addjobs(job);

    }
        public List<JobPost> getjobs(){
          return jobRepo.getAllJobs();
        }

}
