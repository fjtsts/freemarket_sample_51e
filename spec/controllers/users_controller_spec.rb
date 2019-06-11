require 'rails_helper'

describe UsersController do
# RSpec.describe UsersController, type: :controller do
let(:user) { create(:user) }
let(:user_profile) { create(:user_profile, user: user) }
# let(:user_profile) { create(:user_profile, user: user) }
# user = create(:user)
# user_profile = create(:user_profile, user: user)


  before do
    # user = create(:user)
    sign_in user
  end
  
  describe 'Get #edit' do
    # before do
    #   binding.pry
    #   get :edit, params: { id: user.id }
    # end
    # let(:params) { password: attributes_for(:user) }
    # let(:article) { create(:article) }
    # let(:users) { create(:user) }
    # let(:user_profiles) { create(:user_profile) }
    # sign_in user
    # before { get :edit, params: { id: user_profiles.id }}
    # before { get :edit, params: { id: users.id }}
    # before { get :edit, params: { id: article.id }, session: {} }

    it 'リクエストは200 OKとなること' do
      expect(response.status).to eq 200
    end

    it ':editテンプレートを表示すること' do

      get :edit, params: { id: user.id }
      binding.pry
      expect(response).to render_template :edit

    end

    it '@userに要求されたユーザーを割り当てること' do
      expect(assigns(:user)).to eq @user
    end
  end

  # describe 'Patch #update' do
  #   context '存在するユーザーの場合' do
  #     before do
  #       @user = create(:user)
  #       @originalname = @user.nickname
  #     end
  #     context '有効なパラメータの場合' do
  #       before do
  #         patch :update, permalink: @user.permalink, user: attributes_for(:user, nickname: 'testtext')
  #       end
  #       it 'リクエストは302 リダイレクトとなること' do
  #         expect(response.status).to eq 302
  #       end
  #       it 'データベースのユーザーが更新されること' do
  #         @user.reload
  #         expect(@user.nickname).to eq 'testtext'
  #       end
  #       it 'users#editにリダイレクトすること' do
  #         expect(response).to redirect_to user_path(assigns(:user).permalink)
  #       end
  #     end
  #     context '無効なパラメータの場合' do
  #       before do
  #         patch :update, permalink: @user.permalink, user: attributes_for(:user, nickname: '')
  #       end
  #       it 'リクエストは200 OKとなること' do
  #         expect(response.status).to eq 200
  #       end
  #       it 'データベースのユーザーは更新されないこと' do
  #         @user.reload
  #         expect(@user.nickname).to eq @originalname
  #       end
  #       it ':editテンプレートを再表示すること' do
  #         expect(response).to render_template :edit
  #       end
  #     end
  #   end
  #   context '要求されたユーザーが存在しない場合' do
  #     it 'リクエストはRecordNotFoundとなること'do
  #     expect{
  #       patch :update, permalink: 'testtext' , user: attributes_for(:user)
  #     }.to raise_exception(ActiveRecord::RecordNotFound)
  #     end
  #   end
  # end

end
#   describe 'GET #edit' do
#   let(:article) { create(:article) }
#   before { get :edit, params: { id: article.id }, session: {} }

#   it 'has a 200 status code' do
#     expect(response).to have_http_status(:ok)
#   end

#   it 'assigns @article' do
#     expect(assigns(:article)).to eq article
#   end

#   it 'renders the :edit template' do
#     expect(response).to render_template :edit
#   end
# end

# describe 'PATCH #update' do
#   let!(:article) { create(:article) }
#   let(:update_attributes) do
#     {
#         title: 'update title',
#         body: 'update body'
#     }
#   end

#   it 'saves updated article' do
#     expect do
#       patch :update, params: { id: article.id, article: update_attributes }, session: {}
#     end.to change(Article, :count).by(0)
#   end

#   it 'updates updated article' do
#     patch :update, params: { id: article.id, article: update_attributes }, session: {}
#     article.reload
#     expect(article.title).to eq update_attributes[:title]
#     expect(article.body).to eq update_attributes[:body]
#   end

#   it 'redirects the :create template' do
#     patch :update, params: { id: article.id, article: update_attributes }, session: {}
#     article = Article.last
#     expect(response).to redirect_to(article_path(article))
#   end
# end