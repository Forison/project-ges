# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :register_user, Types::UserType, null: false, mutation: Mutations::Auth::RegisterUser
    field :signin_user, Types::UserType, null: false, mutation: Mutations::Auth::SigninUser
    field :confirm_user, Types::UserType, null: false, mutation: Mutations::Auth::ConfirmUser
    field :reset_password, Types::UserType, null: false, mutation: Mutations::Auth::ResetPassword
    field :forgot_password, Types::UserType, null: false, mutation: Mutations::Auth::ForgotPassword
    field :unlock_user, Types::UserType, null: false, mutation: Mutations::Auth::UnlockUser
  end
end
