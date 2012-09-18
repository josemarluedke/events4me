require 'spec_helper'

describe Device do
  describe "validations" do
    it{ should validate_presence_of :name }
  end

  describe "associations" do
    it { should have_and_belong_to_many :events }
  end
end
