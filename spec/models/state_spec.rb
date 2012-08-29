require 'spec_helper'

describe State do
  subject { State.make! }

  describe "validations" do
    it{ should validate_presence_of :name }
    it{ should validate_presence_of :uf }
  end

  describe "associations" do
    it { should have_many :cities }
  end
end
