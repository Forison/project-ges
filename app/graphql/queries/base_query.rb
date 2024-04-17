module Queries
  class BaseQuery < GraphQL::Schema::Resolver
    protected

    def current_user_school
      context[:current_user].school
    end
  end
end
