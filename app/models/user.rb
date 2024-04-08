class User < ApplicationRecord
  has_secure_password

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :birthday, presence: true

  def reached_max_attempts_limit?
    failed_attempts > 7
  end

  def name
    "#{last_name} #{first_name}"
  end
end
