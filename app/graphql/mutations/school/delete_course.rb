module Mutations
  class DeleteSchool < BaseMutation
    def resolve
      school = current[:current_user].school
      school.update(discard: true)
    end
  end
end
