require 'spec_helper'

describe Device do
  describe "validations" do
    it{ should validate_presence_of :name }
  end
end
