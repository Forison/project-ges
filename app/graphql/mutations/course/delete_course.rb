module Mutations
  class DeleteCourse < BaseMutation
    argument :id, ID, required: true

    def resolve(id:)
      school = current[:current_user].school
      course = school.courses.find(id:)
      course.update(discard: true)
    end
  end
end
