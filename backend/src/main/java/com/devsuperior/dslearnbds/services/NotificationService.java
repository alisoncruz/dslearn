package com.devsuperior.dslearnbds.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.devsuperior.dslearnbds.dto.NotificationDTO;
import com.devsuperior.dslearnbds.entities.Notification;
import com.devsuperior.dslearnbds.entities.User;
import com.devsuperior.dslearnbds.repositories.NotificationRepository;

@Service
public class NotificationService {

	@Autowired
	NotificationRepository repository;
	
	@Autowired
	AuthService service;
	
	@Transactional(readOnly = true)
	public Page<NotificationDTO> notificationsForCurrentUser(Pageable pageable){
		
		User authenticated = service.authenticated();
		Page<Notification> page = repository.findByUser(authenticated, pageable);
		return page.map(notification -> new NotificationDTO(notification));
	}
}
