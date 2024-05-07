module Mutations
  module SchoolGroupPost
    class Update < BaseMutation
      argument :id, ID, required: true
      argument :content, String
      ## argument :image, String TODO: enable image inclusion inside post

      def resolve(id:, **args)
        post = context[:current_user].posts.find(id)
        raise GraphQL::ExecutionError, 'Post does not exist' if post.nil?

        post.update(args)
        post
      end
    end
  end
end
