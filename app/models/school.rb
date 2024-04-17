class School < ApplicationRecord
  belongs_to :headteacher, class_name: 'User', foreign_key: 'user_id', inverse_of: :school

  validates :name, presence: true

  def all_teachers
    teachers.map do |id|
      User.find(id)
    end
  end
end
