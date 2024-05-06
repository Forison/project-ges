class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :name, null: false
      t.string :members, array: true, default: []
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
