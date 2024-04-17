module Mutations
  class CreateSchool < BaseMutation
    argument :name, String, required: true
    argument :teachers, Array

    def resolve(name:, teachers:)
      school = context[:current_user].build(name:, teachers:)

      return school if school.save

      # broadcast action cable message here ...
      []
    end
  end
end
