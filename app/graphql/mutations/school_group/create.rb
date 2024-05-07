module Mutations
  module SchoolGroup
    class Create < BaseMutation
      argument :name, String, required: true
      argument :members, [Integer]
      argument :description, String

      def resolve(**args)
        group = context[:current_user].groups.build(args)
        raise GraphQL::ExecutionError, 'Group does not exist' if group.nil?
        return group if group.save

        raise Graphql::ExecutionError, 'Group not created'
      end
    end
  end
end
