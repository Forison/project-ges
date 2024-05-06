module Mutations
  module SchoolCourse
    class Update < BaseMutation
      argument :id, ID, required: true
      argument :name, String
      argument :description, String, required: false
      argument :duration, String, required: false
      argument :course_outline, String, required: false
      argument :students, [Integer], required: false
      argument :school_id, Integer, required: false
      argument :discarded, Boolean, required: false
      argument :course_teacher_id, Integer, required: false

      def resolve(id:, **arg)
        course = Course.find(id)
        raise GraphQL::ExecutionError, 'Course does not exist' if course.nil?

        course.update(arg)
        course
      end
    end
  end
end
