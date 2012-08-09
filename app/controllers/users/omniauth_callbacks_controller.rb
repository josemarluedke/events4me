class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def method_missing(provider)
    omniauth = env["omniauth.auth"]
    if current_user
      current_user.authorizations.find_or_create_by_provider_and_uid(omniauth['provider'], omniauth['uid']) 
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => omniauth['provider']
      redirect_to :back
    else
      authorization = Authorization.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
      if authorization
        flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => omniauth['provider']
        sign_in_and_redirect(authorization.user, :event => :authentication)
      else  
        session[:omniauth] = omniauth.except('extra')
        redirect_to new_user_registration_url
      end
    end
  end
end