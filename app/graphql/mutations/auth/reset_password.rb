# frozen_string_literal: true

module Mutations
  module Auth
    class ResetPassword < BaseMutation
      argument :reset_password_token, String, required: true
      argument :password, String, required: true

      def resolve(reset_password_token:, password:)
        email = Jwt::Decoder.new(reset_password_token).call[:result]
        user = User.find_by(email:)
        user.update(
          password:,
          reset_password_token:  '',
          allow_password_change: false
        )
        user
      end
    end
  end
end
