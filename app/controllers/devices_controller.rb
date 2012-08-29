class DevicesController < ApplicationController
  before_filter :authenticate_user!

  inherit_resources
  respond_to :html, :json, :xml
  actions :index, :create, :destroy
  before_filter do
    puts params.inspect
  end

  protected
  def begin_of_association_chain
    current_user
  end
end
