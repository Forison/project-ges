# frozen_string_literal: true

module Queries
  module Course
    class All < Queries::BaseQuery
      description 'Return all Course or users based on their roles'
      type [Types::CourseType], null: false

      def resolve
        ::Course.all
      end
    end
  end
end
