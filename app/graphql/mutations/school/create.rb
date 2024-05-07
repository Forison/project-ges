module Mutations
  module School
    class Create < BaseMutation
      argument :name, String, required: true

      def resolve(**args)
        school = context[:current_user].schools.build(args)
        raise GraphQL::ExecutionError, 'School does not exist' if school.nil?
        return school if school.save

        raise Graphql::ExecutionError, 'School not created'
      end
    end
  end
end
