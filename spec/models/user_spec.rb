require 'rails_helper'

describe User do
  let(:user) { User.create(first_name: "Jo", last_name: "King", email: "joking@gmail.com", password: "password")}

  context 'User is not valid without first name, last name, email, password' do

    it 'is not valid without a first name' do
      user.first_name = nil
      expect(user).to_not be_valid
    end

    it 'is not valid without a last name' do
      user.last_name = nil
      expect(user).to_not be_valid
    end

    it 'is not valid without an email' do
      user.email = nil
      expect(user).to_not be_valid
    end

    it 'is not valid without a password' do
      user.password = nil
      expect(user).to_not be_valid
    end
end
