require 'rails_helper'
describe Address do
  describe '#create' do
    it "is invalid without a last_name" do
      address = build(:address, last_name: "")
      address.valid?
      expect(address.errors[:last_name]).to include("can't be blank")
    end

    it "is a last_name zenkaku" do
      address = build(:address, last_name: "aaa")
      address.valid?
      expect(address.errors[:last_name]).to include("全角で入力して下さい")
    end

    it "is invalid without a first_name" do
      address = build(:address, first_name: "")
      address.valid?
      expect(address.errors[:first_name]).to include("can't be blank")
    end

    it "is a first_name zenkaku" do
      address = build(:address, first_name: "aaa")
      address.valid?
      expect(address.errors[:first_name]).to include("全角で入力して下さい")
    end

    it "is invalid without a last_name_kata" do
      address = build(:address, last_name_kata: "")
      address.valid?
      expect(address.errors[:last_name_kata]).to include("can't be blank")
    end

    it "is a last_name_kata zenkaku" do
      address = build(:address, last_name_kata: "あああ")
      address.valid?
      expect(address.errors[:last_name_kata]).to include("全角カタカナで入力して下さい")
    end

    it "is invalid without a first_name_kata" do
      address = build(:address, first_name_kata: "")
      address.valid?
      expect(address.errors[:first_name_kata]).to include("can't be blank")
    end

    it "is a first_name_kata zenkaku" do
      address = build(:address, first_name_kata: "あああ")
      address.valid?
      expect(address.errors[:first_name_kata]).to include("全角カタカナで入力して下さい")
    end

    it "is invalid without a postal_code" do
      address = build(:address, postal_code: "")
      address.valid?
      expect(address.errors[:postal_code]).to include("can't be blank")
    end

    it "does a postal_code have hyphen" do
      address = build(:address, postal_code: "1111111")
      address.valid?
      expect(address.errors[:postal_code]).to include("郵便番号は半角かつハイフンを付けて入力してください")
    end

    it "is a postal_code hankaku" do
      address = build(:address, postal_code: "１１１ー１１１１")
      address.valid?
      expect(address.errors[:postal_code]).to include("郵便番号は半角かつハイフンを付けて入力してください")
    end

    it "is invalid without a prefecture" do
      address = build(:address, prefecture: "")
      address.valid?
      expect(address.errors[:prefecture]).to include("can't be blank")
    end

    it "is invalid without a city" do
      address = build(:address, city: "")
      address.valid?
      expect(address.errors[:city]).to include("can't be blank")
    end

    it "is invalid without a town_number" do
      address = build(:address, town_number: "")
      address.valid?
      expect(address.errors[:town_number]).to include("can't be blank")
    end
  end
end
