class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :name, null: false
      t.integer :members, array: true, default: []
      t.string :image
      t.string :description
      t.boolean :discarded, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :groups, :name, unique: true
  end
end
