module Mutations
  module School
    class Create < BaseMutation
      argument :name, String, required: true

      def resolve(**args)
        school = context[:current_user].schools.build(args)
        context[:pundit].authorize(school, :create?)
        raise GraphQL::ExecutionError, 'School does not exist' if school.nil?

        if school.save
          ActionCable.server.broadcast('notification_channel', { body: school })
          return school # TODO: remove this
        end

        raise Graphql::ExecutionError, 'School not created'
      end
    end
  end
end
