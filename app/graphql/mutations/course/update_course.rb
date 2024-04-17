module Mutations
  class UpdateCourse < BaseMutation
    argument :name, String
    argument :description, String
    argument :duration, String
    argument :course_outline, String
    argument :teachers, [Integer]
    argument :school_id, Integer, null: false
    argument :course_teacher_id, Integer

    def resolve(**arg)
      school = current[:current_user].school
      course = school.courses.find(id:)
      course.update(arg)
    end
  end
end
