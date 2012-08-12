require 'spec_helper'

describe FeaturedEvent do
  describe "validations" do
    subject { FeaturedEvent.make! }

    it{ should validate_presence_of :initial_date }
    it{ should validate_presence_of :end_date }
    it{ should validate_presence_of :priority }
    it{ should validate_presence_of :event }
  end
end