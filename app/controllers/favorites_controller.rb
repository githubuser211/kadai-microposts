class FavoritesController < ApplicationController
  
   before_action :require_user_logged_in

  def create
    @micropost = Micropost.find(params[:micropost_id])
    current_user.tofavorite(@micropost)
    flash[:success] = 'ユーザをお気に入りにしました。'
    redirect_to '/'
  end

  def destroy
    @micropost = Micropost.find(params[:micropost_id])
    current_user.untofavorite(@micropost)
    flash[:success] = 'ユーザのお気に入りを解除しました。'
    redirect_to '/'
  end


end
