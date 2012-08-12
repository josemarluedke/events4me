class EventsController < ApplicationController
  before_filter :authenticate_user!

  inherit_resources
  respond_to :html, :json, :xml
end
