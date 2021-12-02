class AddMatchToChatroom < ActiveRecord::Migration[6.1]
  def change
    add_reference :chatrooms, :match, null: false, foreign_key: true
  end
end
