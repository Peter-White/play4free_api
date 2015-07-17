class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title, null: false
      t.string :image, null: false, index: { unique: true }
      t.text :desc, null: false, index: { unique: true }
      t.string :mode, null: false
      t.string :genre, null: false
      t.string :download, null: false, index: { unique: true }

      t.timestamps null: false
    end
  end
end
