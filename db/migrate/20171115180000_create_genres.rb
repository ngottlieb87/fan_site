class CreateGenres < ActiveRecord::Migration[5.1]
  def change
    drop_table :genres
    create_table :genres do |t|
      t.column :title, :string
    end
  end
end
