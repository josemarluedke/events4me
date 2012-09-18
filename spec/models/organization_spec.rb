require 'spec_helper'

describe Organization do
  subject { Organization.make! }

  describe "validations" do
    it{ should validate_presence_of :name }
    it{ should validate_presence_of :place }
  end

  describe "associations" do
    it { should have_many :events }
    it { should belong_to :place }
    it { should have_and_belong_to_many :users }
  end
end
