class EventsController < ApplicationController
  before_filter :authenticate_user!

  inherit_resources
  respond_to :html, :json, :xml
  protected
  def collection
    @events ||= end_of_association_chain.paginate(:page => params[:page], :per_page => 10)
  end
end
