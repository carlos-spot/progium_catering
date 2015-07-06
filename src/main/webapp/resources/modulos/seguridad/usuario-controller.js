'use strict';

/**
 * UsuarioController
 * 
 * @constructor
 */

App.controller('UsuarioRegistrarController', function($scope, $location, $upload) {
	$scope.files = {};
	$scope.tituloPagina = "Registrar nuevo usuario";
	$scope.objUsuario = {
		idTipoUsuario : 2
	};
	
	$scope.cancelar = function(){
		$location.path('/iniciar-sesion');
	}
	
	$scope.guardar = function() {
		var usuarioFoto = $scope.files[0];
		
		var contractUsuarioRequest = {
			nombre: $scope.objUsuario.nombre,
			apellido1: $scope.objUsuario.apellido1,
			apellido2: $scope.objUsuario.apellido2,
			correo: $scope.objUsuario.correo,
			telefono1: $scope.objUsuario.telefono1,
			telefono2: $scope.objUsuario.telefono2,
			tipoUsuarioId: $scope.objUsuario.tipoUsuarioId,
			contrasenna: $scope.objUsuario.contrasenna
		};
		
		$scope.upload = $upload.upload({
			url : 'rest/protected/usuario/registrar',
			data : contractUsuarioRequest,
			file : usuarioFoto
		}).progress(
			function(evt) {
				console.log('percent: '
						+ parseInt(100.0 * evt.loaded / evt.total));
			}
		).success(function(contractUsuarioResponse, status, headers, config) {
			// Rent is uploaded successfully
			console.log(contractUsuarioResponse);
		});
	}
	
	$scope.onFileSelect = function($files) {
    	$scope.files = $files;
    };
});

App.controller('UsuarioModificarController', function($scope, $location, $routeParams) {
	$scope.files = {};
	$scope.tituloPagina = "Modificar datos del usuario";
	$scope.objUsuario = {};
	
	//$routeParams.pidUsuario
	
	$scope.cancelar = function(){
		$location.path('/');
	}

	$scope.guardar = function() {
		$location.path('/iniciar-sesion');
	}
});