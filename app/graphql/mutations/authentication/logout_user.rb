module Mutations
  module Authentication
    class LogoutUser < BaseMutation
      def resolve
        session.delete(:current_user_id)
        @current_user = nil
      end
    end
  end
end
