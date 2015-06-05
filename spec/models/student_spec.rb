require 'rails_helper'

RSpec.describe Student, type: :model do

  # it { should validate_presence_of :tardy } ???

  describe "validations" do

    it "should be invalid without a name" do
      Fabricate.build(:student, name: nil).should_not be_valid
    end

    it "should be invalid if name is all whitespace" do
      Fabricate.build(:student, name: "      ").should_not be_valid
    end

    it "should have unique names" do
      some_name = Faker::Name.name
      Fabricate(:student, name: some_name)
      Fabricate.build(:student, name: some_name).should_not be_valid
    end

  end

end
