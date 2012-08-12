require 'spec_helper'
describe "routing to me" do
  it "routes /me to users#show" do
    expect(:get => "/me.json").to route_to(
      :controller => "users",
      :action => "show",
      :format => "json"
    )
  end
end
