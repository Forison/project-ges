class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.boolean :liked
      t.references :post, null: false, foreign_key: true
      t.references :comment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
