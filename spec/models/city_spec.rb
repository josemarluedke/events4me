require 'spec_helper'

describe City do
  describe "validations" do
    subject { City.make! }

    it{ should validate_presence_of :name }
    it{ should validate_presence_of :state }
  end
end
