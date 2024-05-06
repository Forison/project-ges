# frozen_string_literal: true

module Types
  class CourseType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :description, String
    field :duration, String
    field :course_outline, String
    field :students, [Integer]
    field :school_id, Integer, null: false
    field :course_teacher_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :discarded, Boolean
  end
end
