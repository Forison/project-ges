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

    # School
    field :create_school, Types::SchoolType, null: false, mutation: Mutations::School::Create
    field :delete_school, Types::SchoolType, null: false, mutation: Mutations::School::Delete
    field :update_school, Types::SchoolType, null: false, mutation: Mutations::School::Update

    # Course
    field :create_course, Types::CourseType, null: false, mutation: Mutations::SchoolCourse::Create
    field :update_course, Types::CourseType, null: false, mutation: Mutations::SchoolCourse::Update
    # TODO: Rename to be more explicit _from_course && add_to_course respectively...
    field :remove_student, Types::CourseType, null: false, mutation: Mutations::SchoolCourse::RemoveStudent
    field :add_student, Types::CourseType, null: false, mutation: Mutations::SchoolCourse::AddStudent

    # Groups
    field :create_group, Types::GroupType, null: false, mutation: Mutations::SchoolGroup::Create
    field :update_group, Types::GroupType, null: false, mutation: Mutations::SchoolGroup::Update
    field :join_group, Types::GroupType, null: false, mutation: Mutations::SchoolGroup::Join

    # Posts
    field :create_group_post, Types::PostType, null: false, mutation: Mutations::SchoolGroupPost::Create
    field :update_group_post, Types::PostType, null: false, mutation: Mutations::SchoolGroupPost::Update

    # Comments
  end
end
