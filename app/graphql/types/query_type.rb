# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # User related queries
    field :user, resolver: Queries::User::FindUserById
    field :user_role, resolver: Queries::User::FindUserByRole
    field :users, resolver: Queries::User::All
    field :current_user, resolver: Queries::User::CurrentUser
    # School related queries
    field :schools, resolver: Queries::School::All
    field :school, resolver: Queries::School::FindSchoolById
    # Course related queries
    field :courses, resolver: Queries::Course::All
    field :course, resolver: Queries::Course::FindCourseById
    # Context school queries
    field :headteacher_school, resolver: Queries::Context::HeadTeacherSchool
    field :headteacher_school_teachers, resolver: Queries::Context::HeadTeacherSchoolTeachers
  end
end
