class PhotosController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        puts params[:nombre]
        @photos = Photo.all
    end

    def show
        @photo = Photo.find( params[:id] )
        #render json: @photo
        respond_to do |format|
            format.html { redirect_to "/photos" }
            format.json { head :ok }
        end
    end

    def new

    end
    
    # /photos/:id/edit
    def edit
        @id = params[:id]
    end

    # PUT/PATCH /photos/:id
    def update
        photo = Photo.find( params[:id] )
        photo.title = params[:photo][:title]
        photo.image_url = params[:photo][:image_url]
        photo.save
        #redirect_to "/photos/#{photo.id}"
        redirect_to photo
    end

    def create
=begin 
        photo = Photo.new
        photo.title = params[:photo][:title]
        photo.image_url = params[:photo][:image_url]
        photo.save
        #redirect_to "/photos/#{photo.id}"
        redirect_to photo 
=end
        @photo = Photo.new(params[:photo])
        @photo.save

        respond_to do |format|
            format.html { redirect_to "/photos" }
            format.json { render json: @photo, status: :created }
        end
    end

    # DELETE /photos/:id
    def destroy
        photo = Photo.find( params[:id] )
        photo.destroy

        redirect_to "/photos"
    end
    
end
