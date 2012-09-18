require 'spec_helper'

describe City do
  describe "validations" do
    subject { City.make! }

    it{ should validate_presence_of :name }
    it{ should validate_presence_of :state }
  end

  describe "associations" do
    it { should belong_to :state }
    it { should have_many :places }
  end
end
