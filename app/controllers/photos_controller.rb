class PhotosController < ApplicationController

  def index
    @photos = Photo.all
    @fb_friends = Friend.query_friends(User.find(session[:user_id]))
    @chosen_uid = params[:uid]
    @fb_photos = Photo.query_photos(params[:uid], User.find(session[:user_id]))
  end

  def show
    @photo = Photo.find_by_id(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new
    @photo.user_id = params[:user_id]
    @photo.source_url = params[:source_url]
    @photo.t.integer = params[:t.integer]

    if @photo.save
            redirect_to photos_url
          else
      render 'new'
    end
  end

  def edit
    @photo = Photo.find_by_id(params[:id])
  end

  def update
    @photo = Photo.find_by_id(params[:id])
    @photo.user_id = params[:user_id]
    @photo.source_url = params[:source_url]
    @photo.t.integer = params[:t.integer]

    if @photo.save
            redirect_to photos_url
          else
      render 'edit'
    end
  end

  def destroy
    @photo = Photo.find_by_id(params[:id])
    @photo.destroy
        redirect_to photos_url
      end
end
