# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'admin/admin', type: :request do
  let(:top) { create(:top) }
  let(:top_id) { top.id }

  describe 'GET top' do
    subject(:request) { get(root_path) }

    context 'ページを開く' do
      it 'トップページを開く' do
        request
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe 'GET top/new' do
    subject(:request) { get(new_top_path) }

    context 'ページを開く' do
      it 'トップページを開く' do
        request
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe 'GET top/show' do
    subject(:request) { get(top_path(top_id)) }

    context 'ページを開く' do
      it 'トップページを開く' do
        request
        expect(response).to have_http_status(:ok)
      end
    end
  end

  # describe 'GET #show' do
  #   subject(:request) { get(admin_admin_path(admin_id)) }

  #   context 'ログインしていない場合' do
  #     it 'リダイレクトする' do
  #       request
  #       expect(response).to have_http_status(:found)
  #       expect(response).to redirect_to admin_session_path
  #     end
  #   end

  #   context 'Adminでログインしている場合' do
  #     before { @admin = create(:admin) }

  #     it 'リクエストが成功する' do
  #       sign_in @admin
  #       request
  #       expect(response).to have_http_status(:ok)
  #     end

  #     it 'name が表示されている' do
  #       sign_in @admin
  #       request
  #       expect(response.body).to include admin.name
  #     end

  #     it 'email が表示されている' do
  #       sign_in @admin
  #       request
  #       expect(response.body).to include admin.email
  #     end
  #   end

  #   context 'Operatorでログインしている場合' do
  #     before { @operator = create(:operator) }

  #     it 'リダイレクトする' do
  #       sign_in @operator
  #       request
  #       expect(response).to have_http_status(:found)
  #       expect(response).to redirect_to admin_session_path
  #     end
  #   end

  #   context 'Userでログインしている場合' do
  #     before { @user = create(:user) }

  #     it 'リダイレクトする' do
  #       sign_in @user
  #       request
  #       expect(response).to have_http_status(:found)
  #       expect(response).to redirect_to admin_session_path
  #     end
  #   end
  # end
end
