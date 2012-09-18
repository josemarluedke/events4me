require 'spec_helper'

describe Session do
  subject { Session.make! }

  describe "validations" do
    it{ should validate_presence_of :datetime }
    it{ should validate_presence_of :price }
    it{ should validate_presence_of :event }
  end

  describe "associations" do
    it { should belong_to :event }
  end
end
