class Admin::PostsController < ApplicationController

  def show
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to admin_users_path
  end

end