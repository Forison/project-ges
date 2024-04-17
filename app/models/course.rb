class Course < ApplicationRecord
  belongs_to :school
  belongs_to :course_teacher, class_name: 'User'

  validates :name, presence: true
  validates :description, presence: true
end
