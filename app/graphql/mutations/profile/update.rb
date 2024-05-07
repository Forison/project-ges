module Mutations
  module Profile
    class Update < BaseMutation
      argument :email, String, required: false
      argument :password, String, required: false
      argument :last_name, String, required: false
      argument :first_name, String, required: false
      argument :birthday, String, required: false
      argument :guardian_email, String, required: false

      def resolve(**args)
        user = User.find(args[:id])
        raise GraphQL::ExecutionError, 'Post does not exist' if user.nil?

        user.update(args)
        user
      end
    end
  end
end
