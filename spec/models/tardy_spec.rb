require 'rails_helper'

RSpec.describe Tardy, type: :model do

  it { should have_many(:students).through(:students_tardies) }
  it { should validate_presence_of(:date) }

  it "should have a working factory" do
    Fabricate.build(:tardy).should be_valid
  end
end
