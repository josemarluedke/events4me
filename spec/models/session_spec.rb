require 'spec_helper'

describe Session do
  describe "validations" do
    subject { Session.make! }

    it{ should validate_presence_of :datetime }
    it{ should validate_presence_of :price }
    it{ should validate_presence_of :event }
  end
end
