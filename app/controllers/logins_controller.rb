#este controller es para manejar los logins. Se usan sesiones que son controladas
#con cookies en el buscador.
class LoginsController < ApplicationController

	def new

	end

	def create
		empleado = Empleado.find_by(email: params[:email])

		if empleado && empleado.authenticate(params[:password])
			session[:empleado_id] = empleado.id
			flash[:success] = "Hola " + empleado.nombre + ", has iniciado sesión"
			redirect_to "/empleados/"
		else
			flash.now[:danger] = "Tu usuario o contraseña es incorrecto"
			render 'new'
		end
	end

	def destroy
		session[:empleado_id] = nil
		flash[:success] = "Has cerrado sesión"
		redirect_to root_path
	end

end