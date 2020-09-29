class PhotoController < ApplicationController
  def index
    @user = User.find_by(id: params[:id])
    @photos = Photo.where(user_id: params[:id])
    @comments = Comment.all

  end

  def display_name(user_id)
    @user = User.find_by(id: user_id)
    return @user.first_name
  end
  helper_method :display_name
end