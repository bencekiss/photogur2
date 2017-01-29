class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :artist
      t.string :title
      t.string :url
      t.integer :year

      t.timestamps
    end
  end
end
