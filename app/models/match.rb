class Match < ApplicationRecord
  belongs_to :artist
  belongs_to :gallerist

  after_create :create_chatroom

  private

  def create_chatroom
    Chatroom.create(name: self.artist.artist_name, match_id: self.id)
  end
end
