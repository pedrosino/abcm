class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  protected def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nome, :cidade, :estado, :id_wca, :id_forum])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nome, :cidade, :estado, :id_wca, :id_forum])
  end

  # Thanks, Jeremy!
  # https://github.com/cubing/worldcubeassociation.org/blob/master/WcaOnRails/app/controllers/application_controller.rb#L39-L44
  private def redireciona_usuario(action, *args)
    unless current_usuario && current_usuario.send(action, *args)
      flash[:danger] = "Você não #{action.to_s.sub(/^can_/, '').chomp('?').humanize.downcase}"
      redirect_to root_url
    end
  end
end
