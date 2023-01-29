class ApplicationRecord < ActiveRecord::Base
 #  primary_abstract_class
  self.abstract_class = true
  protected
  def authenticate_admin!
    redirect_to root_path ,notice: "No tienes permiso" unless user_signed_in? && current_user.is_admin?    
  end
  def authenticate_medico!
    redirect_to root_path,notice: "No tienes permiso" unless user_signed_in? && current_user.is_medico?
  end
  
end


