require 'rails_helper'

RSpec.describe Hall, type: :model do
  before do
    @hall = FactoryBot.build(:hall)
  end

  describe "データの入力" do
    context 'データ入力できるとき' do
      it "必要な情報を適切に入力すると、データの保存ができること" do
        expect(@hall).to be_valid
      end
    end

    context 'データ入力できないとき' do
      it "名前が必須であること" do
        @hall.name = ""
        @hall.valid?
        expect(@hall.errors.full_messages).to include("Name can't be blank")
      end
      it "機種が必須であること" do
        @hall.machine = ""
        @hall.valid?
        expect(@hall.errors.full_messages).to include("Machine can't be blank")
      end
      it "データが必須であること" do
        @hall.data = ""
        @hall.valid?
        expect(@hall.errors.full_messages).to include("Data can't be blank")
      end
    end

  end
end