class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.string :duration
      t.string :course_outline
      t.integer :students, array: true, default: []
      t.references :school, null: false, foreign_key: true
      t.references :course_teacher

      t.timestamps
    end
    add_foreign_key :courses, :users, column: :course_teacher_id, primary_key: :id
  end
end
