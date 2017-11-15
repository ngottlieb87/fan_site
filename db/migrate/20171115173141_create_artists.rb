class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.column :title, :string
      t.column :genre_id, :integer
      t.timestamps
    end
  end
end
