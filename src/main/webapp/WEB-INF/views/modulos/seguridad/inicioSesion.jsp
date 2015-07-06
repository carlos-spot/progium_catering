<div class="main padder" ng-controller="IniciarSesionController">
	<div class="row">
		<div class="col-lg-4 col-lg-offset-4 m-t-large">
			<section class="panel">
				<header class="panel-heading text-center"> Iniciar sesi�n </header>
				<form class="panel-body" method="post">
					<div class="block">
						<label class="control-label">Correo electr�nico</label> <input
							type="email" id="correo" placeholder="prueba@correo.com"
							class="form-control" ng-model="user.correo" required />
					</div>
					<div class="block">
						<label class="control-label">Contrase�a</label> <input
							type="password" id="contrasenna" placeholder="Contrase�a"
							class="form-control" ng-model="user.contrasenna" required />
					</div>
					<a ng-href="olvidoContrasenna.html" class="pull-right m-t-mini">
						<small>�Olvid� su contrase�a?</small>
					</a>
					<samp ng-show="mostrarMensaje">Correo o contrase�a invalidos</samp>
					<button class="btn btn-info" ng-click="iniciarSesion()">Iniciar
						sesi�n</button>
					<div class="line line-dashed"></div>
					<p class="text-muted text-center">
						<small>�A�n no tiene una cuenta?</small>
					</p>
					<a ng-href="#/usuario-registrar" class="btn btn-white btn-block">Crear
						una cuenta</a>
				</form>
			</section>
		</div>
	</div>
</div>