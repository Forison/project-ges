# frozen_string_literal: true

module Types
  class LikeType < Types::BaseObject
    field :id, ID, null: false
    field :liked, Boolean
    field :post_id, Integer, null: false
    field :comment_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
