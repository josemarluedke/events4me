require 'spec_helper'

describe State do
  describe "validations" do
    subject { State.make! }

    it{ should validate_presence_of :name }
    it{ should validate_presence_of :uf }
  end
end
