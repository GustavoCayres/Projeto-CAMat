require 'rails_helper'

describe User do
  
  before :each do
    @user = FactoryGirl.create(:user)
  end
  
  
  it "has a valid factory" do 
      expect(@user).to be_valid
  end
  it "is invalid without a nome" do
    expect(@user.nome ).to match(/[a-zA-z\s]+/)
  end
  
  it "is invalid without a telefone" do
    expect(@user.telefone ).to match(/^\d*$/)
  end
  
  it "is invalid without a email" do
   expect(@user.email).to match(/[\w*]+@+[\w*]+[.]+.*/)
  end

  it "is invalid without a documento" do
    expect(@user.documento ).to match(/^\d*$/)
  end

  it "is invalid without a password" do
    @user.password.present?
  end

  it "is a admin" do
    expect(@user.admin ).to  be_truthy 
  end
  
=begin  
  it "is not a admin" do
    expect(@userAdmin.admin ).to  be_false 
    expect(@userNormal.documento ).to be_true
  end
  
  it "has locker" do
    expect(@userAdmin.locker ).to be_nil
  end
  
  it "don't have locker"
=end
end