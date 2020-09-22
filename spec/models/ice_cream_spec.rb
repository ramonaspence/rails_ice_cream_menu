require 'rails_helper'

RSpec.describe IceCream do
#using shoulda/matchers
  describe "validations" do 

    it { should validate_presence_of :name }
    it { should validate_presence_of :description }
    it { should validate_length_of :name }
    it { should validate_length_of :description }
    it { should validate_presence_of :date_churned }
  end


  
# before I knew shoulda/matchers existed
  # params = { 
  #   name: "new", 
  #   description: "this ice_creams name should pass",
  # }
  # describe "validates" do

  #   it "has a name at least 3 characters long" do
  #     @ice_cream = IceCream.new(params)
  #     expect(@ice_cream.name.length).to be >= 3
  #   end

  #   it "has a description at least 12 characters long" do
  #     @ice_cream = IceCream.new(params)
  #     expect(@ice_cream.description.length).to be >= 12
  #   end


  # end

end
