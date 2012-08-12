class ApplicationController < ActionController::Base
  protect_from_forgery

  # API
  # Use ?auth_token=
  before_filter :skip_trackable
  def skip_trackable
    request.env['devise.skip_trackable'] = true
  end

  helper_method :user_agent
  def user_agent
    UserAgent.parse(request.env["HTTP_USER_AGENT"])
  end

  def after_sign_in_path_for(resource_or_scope)
    if user_agent.mobile?
     return_to = root_url(auth_token: current_user.authentication_token)
    else
      super
    end
  end

  protected
  def render_404
    raise ActionController::RoutingError.new('Not Found')
  end
end

