require 'spec_helper'

describe Event do
  subject { Event.make! }

  describe "validations" do
    it{ should validate_presence_of :name }
    it{ should validate_presence_of :description }
    it{ should validate_presence_of :min_age }
    it{ should validate_presence_of :visible }
    it{ should validate_presence_of :place }
   end

  describe "associations" do
    it { should belong_to :organization }
    it { should belong_to :place }
    it { should belong_to :owner }
    it { should have_many :sessions }
    it { should have_many :featured_events }
  end
end
