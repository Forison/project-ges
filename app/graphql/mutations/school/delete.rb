module Mutations
  module School
    class Delete < BaseMutation
      argument :id, ID, required: true

      def resolve(id:)
        school = context[:current_user].schools.find(id)
        context[:pundit].authorize(school, :destroy?)
        raise GraphQL::ExecutionError, 'School does not exist' if school.nil?

        school.update(discarded: true)
        school
      end
    end
  end
end
