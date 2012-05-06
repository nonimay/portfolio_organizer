require 'spec_helper'

describe User do

  describe :validations do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :email }

    describe :password_validations do
      it { should respond_to(:password) }
      it { should respond_to(:password_confirmation) }

      describe :password_not_present do
        it "should not be valid" do
          subject = described_class.new(first_name: 'First', last_name: 'Last', email: 'x@example.com', password: '', password_confirmation: 'password1')
          subject.should_not be_valid
        end
      end

      describe :password_missmatch do
        it "should not be valid" do
          subject = described_class.new(first_name: 'First', last_name: 'Last', email: 'x@example.com', password: 'password', password_confirmation: 'password1')
          subject.should_not be_valid
        end
      end

      describe :password_match do
        it "should be valid" do
          subject = described_class.new(first_name: 'First', last_name: 'Last', email: 'x@example.com', password: 'password', password_confirmation: 'password')
          subject.should be_valid
        end
      end
    end
  end

  describe :mass_assignment do
    it { should allow_mass_assignment_of :first_name }
    it { should allow_mass_assignment_of :last_name }
    it { should allow_mass_assignment_of :email }
    it { should_not allow_mass_assignment_of :password_digest }
    it { should allow_mass_assignment_of :password }
    it { should allow_mass_assignment_of :password_confirmation }
  end

=begin
  describe :authentication do
    before :each do
      a = described_class.new(first_name: 'First', last_name: 'Last', email: 'x@example.com', password: '', password_confirmation: 'password1')
      a.save
    end
    let(:found_user) { User.find_by_email(@user.email) }

    describe "with valid password" do
      it { should == found_user.authenticate(@user.password) }
    end

    describe "with invalid password" do
      let(:user_for_invalid_password) { found_user.authenticate("invalid") }

      it { should_not == user_for_invalid_password }
      specify { user_for_invalid_password.should be_false }
    end
  end
=end
end
