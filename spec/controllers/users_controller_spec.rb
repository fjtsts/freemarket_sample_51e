require 'rails_helper'

describe UsersController do
  # let(:user) { create(:user) }
  # before do
  # user = create(:user)
  # #   sign_in user
  # end
  describe 'Get #edit' do

    # before do
    #   login_user user
    #   # controller_macros.rb内のlogin_userメソッドを呼び出し
    # end

  # subject { patch :user, params }
  # let(:params) do
  #   { 
  #     id: 1,
  #     message_id: 100,
  #     comment: {
  #       content: 'Test message comment'
  #     }
  #   }
  # end
    # before do
    #   let(:user) { create(:user) }
    # user = FactoryBot.create(:user)
    # end
  # let(:article) { create(:article) }
  # before { get :edit, params: { id: article.id }, session: {} }

    it 'リクエストは200 OKとなること' do
      expect(response.status).to eq 200
    end
    it '@userに要求されたユーザーを割り当てること' do
      expect(assigns(:user)).to eq @user
    end
    it ':editテンプレートを表示すること' do
      # let(:params) { { message_id: 101 } }
      # get :edit, params
      # get :edit
      # post = Post.create attributes: "required", for: "a post"
      # get :edit, params: {id: 1}
      # let(:user) { create(:user) }
      # user = FactoryBot.create(:user)
      # sign_in user
      expect(response).to render_template :edit
      # expect(response).to render_template :edit
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