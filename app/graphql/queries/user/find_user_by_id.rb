# frozen_string_literal: true

module Queries
  module User
    class FindUserById < Queries::BaseQuery
      description 'Find an User by ID'
      argument :id, ID, required: true
      type Types::UserType, null: false

      def resolve(id:)
        ::User.find(id)
      end
    end
  end
end
