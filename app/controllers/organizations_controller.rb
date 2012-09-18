class OrganizationsController < ApplicationController
  before_filter :authenticate_user!

  inherit_resources
  respond_to :json, :xml
  actions :index

  protected
  def collection
    @organizations ||= Event.find(params[:event_id]).organization
  end
end
