require 'rails_helper'

RSpec.describe Task, type: :model do
  it 'should not save task without name' do
    t1 = build(:task, name: nil)
    expect(t1.save).to be false
  end

  it 'should not save task without completed' do
    t1 = build(:task, completed: nil)
    expect(t1.save).to be false
  end

  it 'should not save task without user_id' do
    t1 = build(:task, user_id: nil)
    expect(t1.save).to be false
  end
end
