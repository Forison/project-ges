# frozen_string_literal: true

module Queries
  module User
    class FindUserByRole < Queries::BaseQuery
      description 'Return all Users based on their roles'
      argument :role, String, required: true
      type [Types::UserType], null: false

      def resolve(role:)
        ::User.where(role:)
      end
    end
  end
end
