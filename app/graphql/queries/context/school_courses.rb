# frozen_string_literal: true

module Queries
  module Context
    class SchoolCourses < Queries::BaseQuery
      description 'Return all Course related to current school'
      type Types::CourseType.connection_type, null: false

      def resolve
        return [] if current_user_school.nil?

        current_user_school.courses
      end
    end
  end
end
