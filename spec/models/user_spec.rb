require 'rails_helper'

before do
	@user = User.new 
  let(:valid_attributes) {
    {
      name: "Jim Withington",
      email: "jim@example.com",
      # password: "pw1234",
      # password_confirmation: "pw1234"
    }
  }

	# context "relationships" do
 #    it { should have_many(:feeds) }
 #  end

  context "validations" do
    let(:user) { User.new(valid_attributes) }

    before :all do
      User.create(valid_attributes)
    end

    it "requires an email" do 
      expect(user).to validates_presence_of(:email)
    end

    it "requires a unique email" do
      expect(user).to validates_uniqueness_of(:email)
    end

    it "requires a unique email (case insensitive)" do
      user.email = "JIM@EXAMPLE.COM"
      expect(user).to validates_uniqueness_of(:email)
    end

    # it "requires the email address to look like an email" do
    #   user.email = "jim"
    #   expect(user).to_not be_valid
    # end
   end
 end
