require 'spec_helper'

describe Authorization do
  subject { Authorization.make! }

  describe "validations" do
    it { should validate_presence_of :provider }
    it { should validate_presence_of :uid }
  end

  describe "associations" do
    it { should belong_to :user }
  end
end
