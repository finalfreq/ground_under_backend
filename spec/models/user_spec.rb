require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }

  it 'does not save if email is blank' do
    test_user = User.new
    expect(test_user.save).to eq(false)
  end

  it 'validates authentication token creation' do
    test_user = User.new(email: "test@test.com", password: "password")
    test_user.save
    test_user = User.find_by(email: 'test@test.com')
    expect(test_user.authentication_token).to be_truthy
  end

end
