module DevisePermittedParameters
  extend ActiveSupport::Concern

  included do
    before_filter :configure_permitted_parameters
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, 
                                                            :password, 
                                                            :password_confirmation,
                                                            :current_password, 
                                                            :name, 
                                                            :age) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, 
                                                                   :password, 
                                                                   :password_confirmation, 
                                                                   :current_password,
                                                                   :name, 
                                                                   :age)}
  end

end

DeviseController.send :include, DevisePermittedParameters
