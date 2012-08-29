class DevicesController < ApplicationController
  before_filter :authenticate_user!

  inherit_resources
  respond_to :json, :xml
  actions :index, :create, :destroy

  protected
  def begin_of_association_chain
    current_user
  end
end
