# frozen_string_literal: true

# 単体テスト(UnitTest)
require 'rails_helper'

RSpec.describe Top, type: :model do
  describe 'validation' do
    subject(:top) { build(:top) }

    describe 'all data' do
      context 'すべてのデータが正しい' do
        it 'データを保存する' do
          expect(top.valid?).to eq true
        end
      end
    end

    describe 'name' do
      context '入力された名前が正しい' do
        subject(:top) { build(:top, name: 'テスト') }

        it 'データを保存する' do
          expect(top.valid?).to eq true
        end
      end

      context '名前がnil' do
        subject(:top) { build(:top, name: nil) }

        it '保存ができない' do
          expect(top.valid?).to eq false
          expect(top.errors.messages[:name]).to include "can't be blank"
        end
      end

      context '名前が0文字' do
        subject(:top) { build(:top, name: '') }

        it '保存できない' do
          top = FactoryBot.build(:top, name: nil)
          expect(top.valid?).to eq false
          expect(top.errors.messages[:name]).to include "can't be blank"
        end
      end

      context '名前が1文字' do
        subject(:top) { build(:top, name: Faker::Lorem.characters(number: 1).to_s) }

        it '保存ができる' do
          expect(top.valid?).to eq true
        end
      end

      context '名前が60文字' do
        subject(:top) { build(:top, name: Faker::Lorem.characters(number: 60).to_s) }

        it '保存ができる' do
          expect(top.valid?).to eq true
        end
      end

      context '名前が61文字' do
        subject(:top) { build(:top, name: Faker::Lorem.characters(number: 61).to_s) }

        it '保存できない' do
          expect(top.valid?).to eq false
        end
      end
    end
    
    describe 'ques_one' do
      context '入力された値がtrue' do
        subject(:top) { build(:top, ques_one: true ) }

        it 'データを保存する' do
          expect(top.valid?).to eq true
        end
      end

      context '入力された値がfalse' do
        subject(:top) { build(:top, ques_one: false ) }

        it 'データを保存する' do
          expect(top.valid?).to eq true
        end
      end

      context '入力された値がnil' do
        subject(:top) { build(:top, ques_one: nil) }

        it 'データを保存する' do
          expect(top.valid?).to eq false
        end
      end
    end

    describe 'ques_two' do
      context '入力された値がtrue' do
        subject(:top) { build(:top, ques_two: true ) }

        it 'データを保存する' do
          expect(top.valid?).to eq true
        end
      end

      context '入力された値がfalse' do
        subject(:top) { build(:top, ques_two: false ) }

        it 'データを保存する' do
          expect(top.valid?).to eq true
        end
      end

      context '入力された値がnil' do
        subject(:top) { build(:top, ques_two: nil) }

        it 'データを保存する' do
          expect(top.valid?).to eq false
        end
      end
    end

    describe 'ques_three' do
      context '入力された値がtrue' do
        subject(:top) { build(:top, ques_three: true ) }

        it 'データを保存する' do
          expect(top.valid?).to eq true
        end
      end

      context '入力された値がfalse' do
        subject(:top) { build(:top, ques_three: false ) }

        it 'データを保存する' do
          expect(top.valid?).to eq true
        end
      end

      context '入力された値がnil' do
        subject(:top) { build(:top, ques_three: nil) }

        it 'データを保存する' do
          expect(top.valid?).to eq false
        end
      end
    end


    describe 'ques_four' do
      context '入力された値がtrue' do
        subject(:top) { build(:top, ques_four: true ) }

        it 'データを保存する' do
          expect(top.valid?).to eq true
        end
      end

      context '入力された値がfalse' do
        subject(:top) { build(:top, ques_four: false ) }

        it 'データを保存する' do
          expect(top.valid?).to eq true
        end
      end

      context '入力された値がnil' do
        subject(:top) { build(:top, ques_four: nil) }

        it 'データを保存する' do
          expect(top.valid?).to eq false
        end
      end
    end
    describe 'ques_five' do
      context '入力された値がtrue' do
        subject(:top) { build(:top, ques_five: true ) }

        it 'データを保存する' do
          expect(top.valid?).to eq true
        end
      end

      context '入力された値がfalse' do
        subject(:top) { build(:top, ques_five: false ) }

        it 'データを保存する' do
          expect(top.valid?).to eq true
        end
      end

      context '入力された値がnil' do
        subject(:top) { build(:top, ques_five: nil) }

        it 'データを保存する' do
          expect(top.valid?).to eq false
        end
      end
    end
  end
end
