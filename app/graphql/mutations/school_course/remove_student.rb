module Mutations
  module SchoolCourse
    class RemoveStudent < BaseMutation
      argument :id, ID, required: true
      argument :students, [Integer], required: true

      def resolve(id:, students:)
        course = Course.find(id)
        raise GraphQL::ExecutionError, 'User already removed' if (course.students & students).empty?

        course.students = course.students - students
        course.save

        course
      end
    end
  end
end
