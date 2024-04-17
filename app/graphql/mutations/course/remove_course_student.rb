module Mutations
  class RemoveCourseStudent < BaseMutation
    argument :id, ID, require

    def resolve(id:)
      school = current[:current_user].school
      school.students.delete id
    end
  end
end
