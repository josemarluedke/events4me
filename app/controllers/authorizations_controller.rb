class AuthorizationsController < ApplicationController
  before_filter :authenticate_user!

  inherit_resources
  respond_to :json, :xml
  actions :index, :destroy
  def destroy
    destroy! do |format|
      format.html { redirect_to edit_user_registration_url }
    end
  end

  protected
  def begin_of_association_chain
    current_user
  end
end
