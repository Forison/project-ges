module Mutations
  module SchoolGroup
    class Join < BaseMutation
      argument :id, ID, required: true
      argument :members, [Integer], required: true

      def resolve(id:, members:)
        group = Group.find(id)
        group.members = if (group.members & members).empty?
                          group.members + members
                        else
                          group.members - members
                        end
        group.save
        group
      end
    end
  end
end
