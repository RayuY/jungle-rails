require "rails_helper"

describe User, type: :model do

  before do
    @newUser = User.new(:name => "MADWIN", :email => "MADWIN@gmail.com", :password => "123123123", :password_confirmation => "123123123")
    @newUser.save
    @userCheck = User.new(:name => "MADWIN", :email => "MADWIN@gmail.com", :password => "123123111", :password_confirmation => "123123111")
  end

  describe "User Validations" do
    it "should have all fields" do
      expect(@newUser.name).to be_present
      expect(@newUser.email).to be_present
      expect(@newUser.password).to be_present
      expect(@newUser.password_confirmation).to be_present
    end

    it "should error if email already exists" do
      expect(@userCheck).to_not be_valid
      expect(@userCheck.errors.full_messages).to include("Email has already been taken")
    end

    it "should have a password of at least 8 characters" do
      expect(@newUser.password.length).to be >= 8
    end

    describe ".authenticate_with_credentials" do
      it "should return user info if user is valid" do
        expect(@newUser.authenticate_self("MADWIN@gmail.com", "123123123")).to be_instance_of(User)
      end

      it "should return nil if the user info is invalid" do
        expect(@newUser.authenticate_self("troll@gmail.com", "troll")).to be_nil
      end

      it "should return instance of user with whitespace around email" do
        expect(@newUser.authenticate_self(" MADWIN@gmail.com  ", "123123123")).to be_instance_of(User)
      end

      it 'should return instance of user with incorrect capitalization' do
        expect(@newUser.authenticate_self("MADWIN@gMAIL.COm", "123123123")).to be_instance_of(User)
      end

    end
  end
end
