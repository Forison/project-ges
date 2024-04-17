module Mutations
  class AddCourseStudent < BaseMutation
    argument :id, ID, require

    def resolve(id:)
      school = current[:current_user].school
      school.students << id
    end
  end
end
