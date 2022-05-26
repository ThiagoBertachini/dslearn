package com.devsuperior.dslearnbds.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.devsuperior.dslearnbds.entities.Deliver;
import com.devsuperior.dslearnbds.entities.Notification;
import com.devsuperior.dslearnbds.entities.User;
import com.devsuperior.dslearnbds.entities.dto.DeliverRevisionDTO;
import com.devsuperior.dslearnbds.entities.dto.NotificationDTO;
import com.devsuperior.dslearnbds.repositories.DeliverRepository;
import com.devsuperior.dslearnbds.repositories.NotificationRepository;

@Service
public class DeliverService {
	
	@Autowired
	private DeliverRepository deliverRepository;
	
	@Transactional
	public void saveRevision(Long id, DeliverRevisionDTO revisionDTO) {
		Deliver deliver = deliverRepository.getOne(id);
		
		deliver.setStatus(revisionDTO.getStatus());
		deliver.setCorrectCount(revisionDTO.getCorrectCount());
		deliver.setFeedback(revisionDTO.getFeedback());
		
		deliverRepository.save(deliver);
	}
	
	

}
