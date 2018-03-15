class FavoritesController < ApplicationController
  
   before_action :require_user_logged_in

  def create
    user = User.find(params[:micropost_id])
    current_user.tofavorite(user)
    flash[:success] = 'ユーザをお気に入りにしました。'
    redirect_to user
  end

  def destroy
    user = User.find(params[:micropost_id])
    current_user.untofavorite(user)
    flash[:success] = 'ユーザのお気に入りを解除しました。'
    redirect_to user
  end


end
