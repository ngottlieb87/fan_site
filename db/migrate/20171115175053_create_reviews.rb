class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.column :content, :string
      t.column :album_id, :integer
      t.timestamps
    end
  end
end
