class AddYesAndNoVotes < ActiveRecord::Migration
  def change
	add_column :posts, :yes_votes, :int
	add_column :posts, :no_votes, :int
  end
end
