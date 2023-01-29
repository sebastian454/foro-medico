class ApplicationController < ActionController::Base
  before_action :set_notifications, if: :current_user
  before_action :set_query
  #exigir dominio seguro y forzar ssl
  APP_DOMAIN = 'domanin.com'
  before_action :ensure_domain
  before_action :force_ssl

  #exigir dominio seguro
  def ensure_domain
    unless
       request.env['HTTP_HOST'] == APP_DOMAIN || Rails.env.development?
       redirect_to "http://#{APP_DOMAIN}", :status => 301
       end
    end
    
  #forzar ssl

  def force_ssl
      if Rails.env.production?
          redirect_to :protocol => 'https' unless request.ssl?
      end
  end

  def set_query
    @query = Post.ransack(params[:q])
  end
  
  #permisos globales concers
  def authenticate_medico!
    redirect_to root_path, notice: "No tienes permiso para entrar aqui. " unless user_signed_in? && current_user.is_medico?
  end
  def authenticate_admin!
      redirect_to root_path, notice: "No tienes permiso para esta acción. " unless user_signed_in? && current_user.is_admin?
  end

  protected
  #parametros permitidos para ingresar en las views de devise
def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:email, :username , :views, :password, :password_confirmation, :birthdate, :first_name, 
      :second_name,:last_name, :second_last, :type_document, :no_document, :genero , :cellphone, :permission_level ,
       :fotoP , :tobacco_consumption , :drugs_consumption , :alcohol_consumption , :sexual_activity
      )
    end
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:email, :username , :views, :password, :password_confirmation, :birthdate, :first_name, 
        :second_name,:last_name, :second_last, :type_document, :no_document, :genero , :cellphone, :permission_level ,
         :fotoP  , :tobacco_consumption , :drugs_consumption , :alcohol_consumption , :sexual_activity
      )
   end      
end  

  private

  def set_notifications
    notifications = Notification.where(recipient: current_user).newest_first.limit(9)
    @unread = notifications.unread
    @read = notifications.read
  end
end
