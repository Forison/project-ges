module Mutations
  module SchoolGroupPost
    class Create < BaseMutation
      argument :group_id, ID, required: true
      argument :content, String
      ## argument :image, String TODO: enable image inclusion inside post

      def resolve(**args)
        post = context[:current_user].posts.build(args)
        raise GraphQL::ExecutionError, 'Post could not be saved' unless post.save

        post
      end
    end
  end
end
