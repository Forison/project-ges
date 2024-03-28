module Mutations
  module Auth
    class RegisterUser < BaseMutation
      argument :email, String, required: true
      argument :password, String, required: true
      argument :last_name, String, required: true
      argument :first_name, String, required: true
      argument :birthday, String, required: true
      argument :guardian_email, String, required: false

      def resolve(**args)
        user = User.new(
          unconfirmed_email:    args[:email],
          password:             args[:password],
          last_name:            args[:last_name],
          first_name:           args[:first_name],
          birthday:             args[:birthday],
          guardian_email:       args[:guardian_email],
          confirmation_token:   Jwt::Encoder.new(args[:email]).call,
          confirmation_sent_at: Time.zone.now
        )

        user.save
        # dispatch email here for user to confirm their email account
        user
      end
    end
  end
end
