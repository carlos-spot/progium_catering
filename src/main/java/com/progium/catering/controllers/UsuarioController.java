package com.progium.catering.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.progium.catering.contracts.TipoResponse;
import com.progium.catering.contracts.UsuarioResponse;
import com.progium.catering.contracts.UsuarioRequest;
import com.progium.catering.ejb.Usuario;
import com.progium.catering.pojo.UsuarioPOJO;


/**
 * Handles requests for the application home page.
 */
@RestController
@RequestMapping(value ="rest/protected/usuario")
public class UsuarioController {

//	@Autowired
//	GeneralServiceInterface generalService;
	
	public UsuarioController() {
		// TODO Auto-generated constructor stub
	}

	@RequestMapping(value ="/registrar", method = RequestMethod.POST)
	public UsuarioResponse registrar(@RequestBody UsuarioRequest ur){	
		
		UsuarioResponse us = new UsuarioResponse();
		/*TipoUsuario tp = generalService.getTipoUsuarioById(ur.getUser().getIdTipoUsuario());
		
		Usuario user = new Usuario();
		user.setFirstname(ur.getUser().getFirstname());
		user.setLastname(ur.getUser().getLastname());
		user.setEmail(ur.getUser().getEmail());
		user.setPassword("resetPasswordTodo");
		user.setTipoUsuario(tp);
		
		Boolean state = usersService.saveUser(user);
		if(state){
			us.setCode(200);
			us.setCodeMessage("user created succesfully");
		}*/
		return null;
	}
}
