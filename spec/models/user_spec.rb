require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should not save user without name' do
    u1 = build(:user, name: nil)
    expect(u1.save).to be false
  end

  it 'should not save user without email' do
    u1 = build(:user, email: nil)
    expect(u1.save).to be false
  end
end
