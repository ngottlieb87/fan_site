class AddCachedVotesToAlbums < ActiveRecord::Migration[5.1]
  def self.up
    add_column :albums, :cached_votes_total, :integer, :default => 0
    add_column :albums, :cached_votes_score, :integer, :default => 0
    add_column :albums, :cached_votes_up, :integer, :default => 0
    add_column :albums, :cached_votes_down, :integer, :default => 0
    add_index  :albums, :cached_votes_total
    add_index  :albums, :cached_votes_score
    add_index  :albums, :cached_votes_up
    add_index  :albums, :cached_votes_down
  end

  def self.down
    remove_column :albums, :cached_votes_total
    remove_column :albums, :cached_votes_score
    remove_column :albums, :cached_votes_up
    remove_column :albums, :cached_votes_down
  end
end
