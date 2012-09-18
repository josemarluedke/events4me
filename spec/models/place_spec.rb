require 'spec_helper'

describe Place do
  subject { Place.make! }

  describe "validations" do
    it{ should validate_presence_of :name }
    it{ should validate_presence_of :address }
    it{ should validate_presence_of :district }
    it{ should validate_presence_of :number }
    it{ should validate_presence_of :city }
  end

  describe "associations" do
    it { should have_many :events }
    it { should have_many :organizations }
    it { should belong_to :city }
  end
end
