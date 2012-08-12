require 'spec_helper'

describe Event do
  describe "validations" do
    subject { Event.make! }

    it{ should validate_presence_of :name }
    it{ should validate_presence_of :description }
    it{ should validate_presence_of :min_age }
    it{ should validate_presence_of :visible }
    it{ should validate_presence_of :place }
   end
end
