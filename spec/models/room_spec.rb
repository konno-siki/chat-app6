require 'rails_helper'

RSpec.describe Room, type: :model do
  before do
    @room = FactoryBot.build(:room)
  end

  it "nameの値が存在すれば登録できる" do
    expect(@room).to be_valid
  end

  it "nameの値が空だと登録できない" do
    @room.name = ""
    @room.valid?
    expect(@room.errors.full_messages).to include("Name can't be blank")
  end
end