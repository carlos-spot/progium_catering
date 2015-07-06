package com.progium.catering.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/modulos")
public class LayoutController {			

	//-------------------------------------------------------
	//Catering
	//-------------------------------------------------------
	@RequestMapping(value = "/catering-registrar")
	public String getCateringRegistrar()
	{
		return "modulos/catering/cateringRegistrar";
	}
	
	@RequestMapping(value = "/catering-buscar")
	public String getCateringBuscar()
	{
		return "modulos/catering/cateringBuscar";
	}
	
	//-------------------------------------------------------
	//Compartido
	//-------------------------------------------------------
	@RequestMapping(value = "/menu-administrador")
	public String getMenuAdministrador()
	{
		return "modulos/compartido/menuAdministrador";
	}
	
	@RequestMapping(value = "/menu-cliente")
	public String getMenuCliente()
	{
		return "modulos/compartido/menuCliente";
	}

	@RequestMapping(value = "/no-encontrado")
	public String getNoEncontrado()
	{
		return "modulos/compartido/noEncontrado";
	}
	//-------------------------------------------------------
	//Cotizacion
	//-------------------------------------------------------
	@RequestMapping(value = "/cotizacion-registrar")
	public String getCotizacionRegistrar()
	{
		return "modulos/cotizacion/cotizacionRegistrar";
	}
	
	//-------------------------------------------------------
	//Catalago de productos
	//-------------------------------------------------------
	@RequestMapping(value = "/producto-registrar")
	public String getProductoRegistrar()
	{
		return "modulos/producto/productoRegistrar";
	}
	
	//-------------------------------------------------------
	// Paquete
	// -------------------------------------------------------
	@RequestMapping(value = "/paquete-registrar")
	public String getPaqueteRegistrar() {
		return "modulos/paquete/paqueteRegistrar";
	}
	
	@RequestMapping(value = "/paquete-listar")
	public String getPaqueteListar() {
		return "modulos/paquete/paqueteListar";
	}

	//-------------------------------------------------------
	//Seguridad
	//-------------------------------------------------------
	@RequestMapping(value = "/seguridad-iniciar-sesion")
	public String getSeguridadIniciarSesion()
	{
		return "modulos/seguridad/inicioSesion";
	}
	
	@RequestMapping(value = "/seguridad-usuario-admin")
	public String getSeguridadUsuarioAdmin()
	{
		return "modulos/seguridad/usuarioAdmin";
	}
	
	//-------------------------------------------------------
	//Subasta
	//-------------------------------------------------------
	@RequestMapping(value = "/subasta-registrar")
	public String getSubastaRegistrar()
	{
		return "modulos/subasta/subastaRegistrar";
	}
	
	@RequestMapping(value = "/subasta-listar")
	public String getSubastaListar()
	{
		return "modulos/subasta/subastaListar";
	}
}
