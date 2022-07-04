# frozen_string_literal: true

# 単体テスト(UnitTest)
require 'rails_helper'

RSpec.describe Answer, type: :model do
  describe 'validation' do
    subject(:answer) { build(:answer) }

    describe 'all data' do
      context 'すべてのデータが正しい' do
        it 'データを保存する' do
          expect(answer.valid?).to eq true
        end
      end
    end

    describe 'answer' do
      context '入力された名前が正しい' do
        subject(:answer) { build(:answer, answer: 'テスト') }

        it 'データを保存する' do
          expect(answer.valid?).to eq true
        end
      end

      context '名前がnil' do
        subject(:answer) { build(:answer, answer: nil) }

        it '保存ができない' do
          expect(answer.valid?).to eq false
          expect(answer.errors.messages[:answer]).to include "can't be blank"
        end
      end

      context '名前が0文字' do
        subject(:answer) { build(:answer, answer: '') }

        it '保存できない' do
          answer = FactoryBot.build(:answer, answer: nil)
          expect(answer.valid?).to eq false
          expect(answer.errors.messages[:answer]).to include "can't be blank"
        end
      end

      context '名前が1文字' do
        subject(:answer) { build(:answer, answer: Faker::Lorem.characters(number: 1).to_s) }

        it '保存ができる' do
          expect(answer.valid?).to eq true
        end
      end

      context '名前が60文字' do
        subject(:answer) { build(:answer, answer: Faker::Lorem.characters(number: 60).to_s) }

        it '保存ができる' do
          expect(answer.valid?).to eq true
        end
      end

      context '名前が61文字' do
        subject(:answer) { build(:answer, answer: Faker::Lorem.characters(number: 61).to_s) }

        it '保存できない' do
          expect(answer.valid?).to eq false
        end
      end
    end
  end
end
