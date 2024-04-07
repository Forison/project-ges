# frozen_string_literal: true

module Mutations
  module Auth
    class ForgotPassword < BaseMutation
      argument :email, String, required: true

      def resolve(email:)
        user = User.find_by(email:)
        user.update(
          reset_password_token:   Jwt::Encoder.new(email:).call,
          reset_password_sent_at: Time.zone.now,
          allow_password_change:  true
        )
        # dispatch forgot password email here
        user
      end
    end
  end
end
