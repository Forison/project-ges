# frozen_string_literal: true

module Queries
  module School
    class FindSchoolById < Queries::BaseQuery
      description 'Find an School by ID'
      argument :id, ID, required: true
      type Types::SchoolType, null: false

      def resolve(id:)
        ::School.find(id)
      end
    end
  end
end
