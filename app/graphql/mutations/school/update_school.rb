module Mutations
  class UpdateSchool < BaseMutation
    argument :name, String
    argument :user_id, String

    def resolve(**arg)
      school = current[:current_user].school
      school.update(arg)
    end
  end
end
