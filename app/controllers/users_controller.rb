class UsersController < ApplicationController
  before_filter :authenticate_user!

  inherit_resources
  respond_to :html, :json, :xml
  actions :show, :update
  before_filter do
    params[:id] = current_user.id
  end
end
