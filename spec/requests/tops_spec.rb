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

    context '回答ページに行く' do
      it '回答ページにリダイレクトする' do
        request
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe 'GET top/show' do
    subject(:request) { get(top_path(top_id)) }

    context '結果ページに行く' do
      it '結果ページにリダイレクトする' do
        request
        expect(response).to have_http_status(:ok)
      end

      it '回答者の名前を表示する' do
        request
        expect(response.body).to include top.name
      end
    end
  end
end
