class UsersController < ApplicationController
  before_action :set_user
  def profile
    if user_signed_in? && !params.has_key?(:normal)
      if  @user.is_medico?      
          @posts = @user.posts.order(created_at: :desc)      
          render  :"doctor"
      end
      if  @user = current_user
          @posts = @user.posts.order(created_at: :desc)          
          @histories = current_user.histories.paginate(:page => params[:page], :per_page => 6)  
          @supports = current_user.supports.paginate(:page => params[:page], :per_page => 6)  
          @history = History.new
          @support = Support.new
          @post = Post.new
          @disease = Disease.new
          @diseases = current_user.diseases.paginate(:page => params[:page], :per_page => 6)  
          
          
          
      end  
      
    else
      render  :index

    end

    # contador de vistas
    # @user.update(views: @user.views + 1)
    # @posts = @user.posts.order(created_at: :desc)
    # @total_views = 0
    # @posts.each do |post|
      # @total_views += post.views
    # end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end