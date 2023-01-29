class PagesController < ApplicationController
  def home
    @posts = Post.paginate(page: params[:page], per_page: 3)
    @posts = @posts.sort_by { rand }  
  end

  def about
  end
end
