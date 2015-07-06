<section class="main padder" >
	<div class="clearfix">
		<h4>
			<i class="fa fa-edit"></i> {{tituloPagina}}
		</h4>
	</div>
	<div class="row">
		<form class="form-horizontal" name="crearUsuario"
			data-validate="parsley">

			<div class="col-sm-6">
				<section class="panel">
					<div class="panel-body">
						<div class="form-group">
							<h4 class="posicion">Datos Personales</h4>
						</div>
						
						<!-- Foto -->
						<div class="form-group">
							<label class="col-lg-3 control-label">Foto</label>
							<div class="col-lg-9 media">
								<div
									class="bg-light pull-left text-center media-large thumb-large">
									<i
										class="fa fa-user inline fa fa-light fa fa-3x m-t-large m-b-large"></i>
								</div>
								<div class="media-body">
									<input ng-file-select="onFileSelect($files)" type="file" name="file" title="Examinar"
										class="btn btn-sm btn-info m-b-small"> <br>
									<button class="btn btn-sm btn-default">Eliminar</button>
								</div>
							</div>
						</div>
						
						<!-- Nombre -->
						<div class="form-group">
							<label class="col-lg-3 control-label">Nombre</label>
							<div class="col-lg-8">
								<input ng-model="objUsuario.nombre" type="text" name="nombre" placeholder="Marcela"
									class="form-control" 
									required ng-pattern="/^(\D)+$/"  />
									<span class="error-message"
								ng-show="crearUsuario.nombre.$error.pattern">Debe ingresar
								solo letras</span>
							</div>
						</div>
						
						<!-- Primer Apellido -->
						<div class="form-group">
							<label class="col-lg-3 control-label">Primer Apellido</label>
							<div class="col-lg-8">
								<input ng-model="objUsuario.apellido1" type="text" name="apellido1" placeholder="Leandro"
									class="form-control" required ng-pattern="/^(\D)+$/"/>
									<span class="error-message"
								ng-show="crearUsuario.apellido1.$error.pattern">Debe ingresar
								solo letras</span>
							</div>
						</div>
						
						<!-- Segundo Apellido -->
						<div class="form-group">
							<label class="col-lg-3 control-label">Segundo Apellido</label>
							<div class="col-lg-8">
								<input ng-model="objUsuario.apellido2" type="text" name="apellido2" placeholder="Picado"
									class="form-control" ng-pattern="/^(\D)+$/" />
								<span class="error-message"
								ng-show="crearUsuario.apellido2.$error.pattern">Debe ingresar
								solo letras</span>
							</div>
						</div>
						
						<!-- Correo -->
						<div class="form-group">
							<label class="col-lg-3 control-label">Correo</label>
							<div class="col-lg-8">
								<input ng-model="objUsuario.correo" type="email" id="email" placeholder="marce@gmail.com"
									class="bg-focus form-control" required />
							</div>
						</div>
						
						<!-- Tel�fono1 -->
						<div class="form-group">
							<label class="col-lg-3 control-label">Tel�fono1</label>
							<div class="col-lg-8">
								<input ng-model="objUsuario.telefono1" type="text" name="telefono1" placeholder="88888888"
									class="form-control" required
									ng-pattern="/^(\d)+$/"/>
							</div>
							<span class="error-message"
								ng-show="crearUsuario.telefono1.$error.pattern">Debe ingresar
								solo n�meros</span>
						</div>
						
						<!-- Tel�fono2 -->
						<div class="form-group">
							<label class="col-lg-3 control-label">Tel�fono2</label>
							<div class="col-lg-8">
								<input ng-model="objUsuario.telefono2" type="text" name="telefono2" placeholder="22223333"
									 class="form-control" ng-pattern="/^(\d)+$/"/>
															<span class="error-message"
								ng-show="crearUsuario.telefono2.$error.pattern">Debe ingresar
								solo n�meros</span>
							</div>
						</div>
					</div>
				</section>
			</div>
			<div class="col-sm-6">
				<section class="panel">
					<div class="panel-body">
						<div class="form-group">
							<h4 class="posicion">Datos de la Cuenta</h4>
						</div>
						
						<!-- Tipo de usuario -->
						<div class="form-group">
							<label class="col-lg-2-4 control-label">Tipo</label>
							<div class="col-lg-5">
								<!-- radio -->
								<div class="radio">
									<label> <input ng-model="objUsuario.tipoUsuarioId" type="radio" name="radio" value="2">
										Cliente
									</label>
								</div>
								<div class="radio">
									<label> <input ng-model="objUsuario.tipoUsuarioId" type="radio" name="radio" value="1">
										Administrador del Catering
									</label>
								</div>
							</div>
						</div>
						
						<!-- Contrase�a -->
						<div class="form-group">
							<label class="col-lg-2-4 control-label">Contrase�a</label>
							<div class="col-lg-5">
								<input ng-model="objUsuario.contrasenna"  type="password" name="password" placeholder="Password"
									class="bg-focus form-control" required />
								<div class="line line-dashed m-t-large"></div>
							</div>
						</div>
						
						<!-- Repetir Contrase�a -->
						<div class="form-group">
							<label class="col-lg-2-4 control-label">Repetir
								Contrase�a</label>
							<div class="col-lg-5">
								<input ng-model="objUsuario.repetirContrasenna" type="password" name="password" placeholder="Password"
									class="bg-focus form-control" required />
								<div class="line line-dashed m-t-large"></div>
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-lg-9 col-lg-offset-3">
								<button type="submit" class="btn btn-white"
									ng-click="cancelar()">Cancelar</button>
								<button class="btn btn-info" ng-click="guardar()">Guardar</button>
							</div>
						</div>
					</div>
				</section>
			</div>

		</form>
	</div>
</section>