class SessionsController < ApplicationController
  
  def new
  end

  def create
     user= User.find_by(cuenta: params[:session][:cuenta])
     if(user && user.authenticate(params[:session][:password]))
         log_in user
         redirect_to welcome_url
     else
      flash[:danger] = "Combinacion de Cuenta/Password invalida"
      render 'new'
     end
  end

  def destroy
    log_out
    render 'new'
  end

end
