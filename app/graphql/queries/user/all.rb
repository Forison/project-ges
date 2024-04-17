# frozen_string_literal: true

module Queries
  module User
    class All < Queries::BaseQuery
      description 'Return all Users'
      type [Types::UserType], null: false

      def resolve
        ::User.all
      end
    end
  end
end
