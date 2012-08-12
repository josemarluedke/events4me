require 'spec_helper'

describe Place do
  describe "validations" do
    subject { Place.make! }

    it{ should validate_presence_of :name }
    it{ should validate_presence_of :address }
    it{ should validate_presence_of :district }
    it{ should validate_presence_of :number }
    it{ should validate_presence_of :city }
  end
end
