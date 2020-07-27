class AlbumsController < ApplicationController

    def index
        @albums = Album.all.order("artist ASC")
    end
end
