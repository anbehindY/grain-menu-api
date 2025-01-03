# frozen_string_literal: true

module Types
  class ItemType < Types::BaseObject
    description "An item that might be a component of a meal or a complete meal"

    field :id, ID, null: false
    field :item_type, String
    field :available, Boolean
    field :label, String
    field :description, String
    field :price, Float
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :modifier_groups, [ Types::ModifierGroupType ]
    field :section, Types::SectionType
    field :display_order, Integer

    def display_order
      object.section_item.display_order
    end
  end
end
