class UsersController < ApplicationController
  before_filter :authenticate_user!

  inherit_resources
  respond_to :html, :json, :xml
  action :show

  def show
    params[:id] = current_user.id
    show!
  end
end
