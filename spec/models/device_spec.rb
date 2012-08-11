require 'spec_helper'

describe Device do
  describe "validations" do
    it{ should validate_presence_of :udid }
    it{ should validate_presence_of :user }
    it{ should validate_presence_of :push_token }
    it{ should validate_presence_of :name }
    it{ should validate_presence_of :type }
  end
end
