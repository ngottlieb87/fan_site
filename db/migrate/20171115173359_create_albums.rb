class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.column :title, :string
      t.column :artist_id, :integer
      t.timestamps
    end
  end
end
