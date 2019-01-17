package com.skillIndia.service;

import org.springframework.stereotype.Service;

import com.skillIndia.model.Candidate;

@Service
public interface CandidateService {

	public void addCandidate(Candidate candidate);
	public boolean verifyCandidate(String candidateUsername, String candidatePassword);
	public Candidate returnCandidate(Candidate candidate);
	public boolean loginCandidate(Candidate candidate);
}
