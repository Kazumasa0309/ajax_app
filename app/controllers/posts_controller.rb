class PostsController < ApplicationController
  #indexアクションを定義　リソース一覧を表示する
  def index
    @posts = Post.all.order(id: "DESC")
  end

  def create
     Post.create(content: params[:content])
     redirect_to action: :index
  end

end
