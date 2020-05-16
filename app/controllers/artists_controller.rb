class ArtistsController < ApplicationController

    def new 
      @artist = Artist.new 
    end 
    
    def create 
       @artist = Artist.create(name: params[:artist][:name], bio: params[:artist][:bio])
       redirect_to artist_path(@artist)
    end 
   
    def show 
       @artist = Artist.find_by(id: params[:id])
    end 
   
    def update 
       @artist = Artist.find_by(id: params[:id])
       @artist.update(name: params[:artist][:name], bio: params[:artist][:bio])
       redirect_to artist_path(@artist)
    end 
   
    def edit 
       @artist = Artist.find_by(id: params[:id])
    end 
    
end