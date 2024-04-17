# frozen_string_literal: true

module Queries
  module User
    class CurrentUser < Queries::BaseQuery
      description 'Return the current user'
      type Types::UserType, null: false

      def resolve
        context[:current_user]
      end
    end
  end
end
