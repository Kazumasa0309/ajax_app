class PostsController < ApplicationController
  #indexアクションを定義　リソース一覧を表示する
  def index
    @posts = Post.all
  end

  def new
  end

  def create
     Post.create(content: params[:content])
  end

end
