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

  #   describe 'email' do
  #     context '入力されたメールアドレスが正しい' do
  #       subject(:top) { build(:top, email: 'smasta@smasta.com') }

  #       it 'データを保存する' do
  #         expect(top.valid?).to eq true
  #       end
  #     end

  #     context '入力されたメールアドレスがnil' do
  #       subject(:top) { build(:top, email: nil) }

  #       it 'データを保存する' do
  #         expect(top.valid?).to eq false
  #         expect(top.errors.messages[:email]).to include "can't be blank"
  #       end
  #     end

  #     context '入力されたメールアドレスが100文字のとき' do
  #       subject(:top) { build(:top, email: "#{Faker::Lorem.characters(number: 88)}@example.com") }

  #       it 'データを保存する' do
  #         expect(top.valid?).to eq true
  #       end
  #     end

  #     context '入力されたメールアドレスが101文字のとき' do
  #       subject(:top) { build(:top, email: "#{Faker::Lorem.characters(number: 89)}@example.com") }

  #       it 'データを保存しない' do
  #         expect(top.valid?).to eq false
  #       end
  #     end

  #     context '他のユーザと重複している時' do
  #       subject(:top) { build(:top, email: 'smasta@smasta.com') }

  #       before { create(:top, email: 'smasta@smasta.com') }

  #       it '保存ができない' do
  #         expect(top.valid?).to eq false
  #       end
  #     end

  #     context '入力されたメールアドレスに@が入っていない' do
  #       subject(:top) { build(:top, email: Faker::Lorem.characters(number: 50).to_s) }

  #       it 'データを保存しない' do
  #         expect(top.valid?).to eq false
  #       end
  #     end
  #   end

  #   describe 'password' do
  #     context '入力されたパスワードが正しい' do
  #       subject(:top) { build(:top, password: 'smasta') }

  #       it 'データを保存する' do
  #         expect(top.valid?).to eq true
  #       end
  #     end

  #     context '入力されたパスワードが空白' do
  #       subject(:top) { build(:top, password: '') }

  #       it 'データを保存しない' do
  #         expect(top.valid?).to eq false
  #       end
  #     end

  #     context '入力されたパスワードがnil' do
  #       subject(:top) { build(:top, password: nil) }

  #       it 'データを保存しない' do
  #         expect(top.valid?).to eq false
  #       end
  #     end

  #     context '入力されたパスワードが5文字' do
  #       subject(:top) { build(:top, password: Faker::Lorem.characters(number: 5).to_s) }

  #       it 'データを保存しない' do
  #         expect(top.valid?).to eq false
  #       end
  #     end

  #     context '入力されたパスワードが6文字' do
  #       subject(:top) { build(:top, password: Faker::Lorem.characters(number: 6).to_s) }

  #       it 'データを保存する' do
  #         expect(top.valid?).to eq true
  #       end
  #     end

  #     context '入力されたパスワードが100文字' do
  #       subject(:top) { build(:top, password: Faker::Lorem.characters(number: 100).to_s) }

  #       it 'データを保存する' do
  #         expect(top.valid?).to eq true
  #       end
  #     end

  #     context '入力されたパスワードが101文字' do
  #       subject(:top) { build(:top, password: Faker::Lorem.characters(number: 101).to_s) }

  #       it 'データを保存しない' do
  #         expect(top.valid?).to eq false
  #       end
  #     end

  #     context '入力されたパスワードに全角文字が含まれている' do
  #       subject(:top) { build(:top, password: '２０masta') }

  #       it 'データを保存しない' do
  #         expect(top.valid?).to eq false
  #       end
  #     end

  #     context '入力されたパスワードに半角スペースが含まれている' do
  #       subject(:top) { build(:top, password: 'sma sta') }

  #       it 'データを保存しない' do
  #         expect(top.valid?).to eq false
  #       end
  #     end

  #     context '入力されたパスワードに全角スペースが含まれている' do
  #       subject(:top) { build(:top, password: 'sma　sta') }

  #       it 'データを保存しない' do
  #         expect(top.valid?).to eq false
  #       end
  #     end

  #     context '入力されたパスワードに記号が含まれている' do
  #       subject(:top) { build(:top, password: 'smasta!?!?') }

  #       it 'データを保存しない' do
  #         expect(top.valid?).to eq false
  #       end
  #     end
  #   end
  end
end
