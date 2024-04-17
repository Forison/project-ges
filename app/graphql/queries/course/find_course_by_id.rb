# frozen_string_literal: true

module Queries
  module Course
    class FindCourseById < Queries::BaseQuery
      description 'Find an School by ID'
      argument :id, ID, required: true
      type Types::CourseType, null: false

      def resolve(id:)
        ::Course.find(id)
      end
    end
  end
end
