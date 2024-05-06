module Mutations
  module SchoolCourse
    class Create < BaseMutation
      argument :name, String, required: true
      argument :description, String, required: true
      argument :duration, String
      argument :course_teacher_id, Integer
      argument :course_outline, String
      argument :school_id, Integer, required: true
      argument :students, [Integer]

      def resolve(**args)
        course = Course.new(**args)

        course if course.save
        # broadcast action cable message here ... [A new course has been added to your school...]
      end
    end
  end
end
