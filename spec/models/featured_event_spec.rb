require 'spec_helper'

describe FeaturedEvent do
  subject { FeaturedEvent.make! }

  describe "validations" do
    it{ should validate_presence_of :initial_date }
    it{ should validate_presence_of :end_date }
    it{ should validate_presence_of :priority }
    it{ should validate_presence_of :event }
  end

  describe "associations" do
    it { should belong_to :event }
  end
end
