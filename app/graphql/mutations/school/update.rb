module Mutations
  module School
    class Update < BaseMutation
      argument :name, String
      argument :id, ID, required: true

      def resolve(id:, name:)
        old_school = context[:current_user].schools.find_by(id:)
        school = context[:current_user].schools.find_by(id:)
        raise GraphQL::ExecutionError, 'School name already exist' if old_school

        school.update(name:)
        school
      end
    end
  end
end
