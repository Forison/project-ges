# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    # Authentication related mutations
    field :register_user, Types::UserType, null: false, mutation: Mutations::Authentication::RegisterUser
    field :signin_user, Types::UserType, null: false, mutation: Mutations::Authentication::SigninUser
    field :confirm_user, Types::UserType, null: false, mutation: Mutations::Authentication::ConfirmUser
    field :reset_password, Types::UserType, null: false, mutation: Mutations::Authentication::ResetPassword
    field :forgot_password, Types::UserType, null: false, mutation: Mutations::Authentication::ForgotPassword
    field :unlock_user, Types::UserType, null: false, mutation: Mutations::Authentication::UnlockUser
    field :logout_user, Types::UserType, null: false, mutation: Mutations::Authentication::LogoutUser

    # School: authorization~> can be created by admin, headteacher
    field :create_school, Types::SchoolType, null: false, mutation: Mutations::School::Create
    field :delete_school, Types::SchoolType, null: false, mutation: Mutations::School::Delete
    field :update_school, Types::SchoolType, null: false, mutation: Mutations::School::Update

    # Course: authorization~> can be created by admin, headteacher, teacher
    field :create_course, Types::CourseType, null: false, mutation: Mutations::SchoolCourse::Create
    field :update_course, Types::CourseType, null: false, mutation: Mutations::SchoolCourse::Update
    # TODO: Rename to be more explicit _from_course && add_to_course respectively...
    field :remove_student, Types::CourseType, null: false, mutation: Mutations::SchoolCourse::RemoveStudent
    field :add_student, Types::CourseType, null: false, mutation: Mutations::SchoolCourse::AddStudent

    # Groups: authorization~> can be created by admin, headteacher, teacher
    field :create_group, Types::GroupType, null: false, mutation: Mutations::SchoolGroup::Create
    field :update_group, Types::GroupType, null: false, mutation: Mutations::SchoolGroup::Update
    # Groups: authorization~> can be created by admin, headteacher, teacher, student
    field :join_group, Types::GroupType, null: false, mutation: Mutations::SchoolGroup::Join

    # Posts: authorization~> all user roles
    field :create_group_post, Types::PostType, null: false, mutation: Mutations::SchoolGroupPost::Create
    field :update_group_post, Types::PostType, null: false, mutation: Mutations::SchoolGroupPost::Update

    # Comments
    # field :create_group_post_comment, Types::PostType, null: false, mutation: Mutations::SchoolGroupPostComment::Create
    # field :update_group_post_comment, Types::PostType, null: false, mutation: Mutations::SchoolGroupPostComment::Update
  end
end
