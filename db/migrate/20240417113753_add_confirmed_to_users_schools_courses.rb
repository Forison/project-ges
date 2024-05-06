class AddConfirmedToUsersSchoolsCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :discarded, :boolean, default: false
    add_column :schools, :discarded, :boolean, default: false
    add_column :courses, :discarded, :boolean, default: false
    add_column :groups, :discarded, :boolean, default: false
  end
end
