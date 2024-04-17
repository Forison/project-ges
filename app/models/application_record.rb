class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def all_teachers
    teachers.map do |id|
      User.find(id)
    end
  end
end
