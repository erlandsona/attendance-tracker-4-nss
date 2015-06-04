require 'rails_helper'

RSpec.describe Student, type: :model do

  describe "validations" do

    it "should be invalid without a name" do
      described_class.new(name: nil).should_not be_valid
    end

    it "should be invalid if name is all whitespace" do
      described_class.new(name: "         ").should_not be_valid
    end

    it "should have unique names"

  end

end
