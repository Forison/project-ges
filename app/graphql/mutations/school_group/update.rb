module Mutations
  module SchoolGroup
    class Update < BaseMutation
      argument :id, ID, required: true
      argument :name, String
      argument :discarded, Boolean, required: false

      def resolve(**arg)
        group = context[:current_user].groups.find(arg[:id])
        raise GraphQL::ExecutionError, 'Group does not exist' if group.nil?

        group.update(arg)
        group
      end
    end
  end
end
