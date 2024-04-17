# frozen_string_literal: true

module Queries
  module School
    class All < Queries::BaseQuery
      description 'Return all Users or users based on their roles'
      type [Types::SchoolType], null: false

      def resolve
        ::School.all
      end
    end
  end
end
