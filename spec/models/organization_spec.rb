require 'spec_helper'

describe Organization do
  describe "validations" do
    subject { Organization.make! }

    it{ should validate_presence_of :name }
    it{ should validate_presence_of :place }
   end
end
