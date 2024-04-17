# frozen_string_literal: true

module Queries
  module Context
    class HeadTeacherSchool < Queries::BaseQuery
      description 'Return all School related to current user ie admin or headmaster'
      type Types::SchoolType.connection_type, null: false

      def resolve
        return [] if current_user_school.nil?

        current_user_school
      end
    end
  end
end
