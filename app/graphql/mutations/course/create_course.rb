module Mutations
  class CreateCourses < BaseMutation
    argument :name, String, required: true
    argument :description, String, required: true
    argument :duration, String
    argument :teachers, Array

    def resolve(name:, teachers:, duration:, description:)
      course = context[:current_user].school.build(
        name:,
        description:,
        teachers:,
        duration:
      )
      return course if course.save

      # broadcast action cable message here ...
      []
    end
  end
end
