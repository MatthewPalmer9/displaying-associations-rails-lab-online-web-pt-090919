class Artist < ActiveRecord::Base
  has_many :songs

  def song_count
    @artist = Artist.find(params[:id])
    @count = @artist.songs.count
    @count
  end
end
