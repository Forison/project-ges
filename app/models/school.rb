class School < ApplicationRecord
  belongs_to :headteacher, class_name: 'User', foreign_key: 'user_id', inverse_of: :schools
  has_many :courses, dependent: :destroy

  validates :name, presence: true
end
