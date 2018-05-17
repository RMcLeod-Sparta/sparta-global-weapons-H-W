class CreateSwords < ActiveRecord::Migration[5.2]
  def change
    create_table :swords do |t|
      t.string :material
      t.integer :length
      t.boolean :broken
      t.references :user, foreign_key: true
      t.references :victim, foreign_key: true

      t.timestamps
    end
  end
end
