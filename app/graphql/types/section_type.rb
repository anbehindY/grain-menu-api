# frozen_string_literal: true

module Types
  class SectionType < Types::BaseObject
    field :id, ID, null: false
    field :label, String
    field :description, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :items, [ Types::ItemType ]
    field :display_order, Integer

    def display_order
      object.menu_section.display_order
    end

    def items
      object.items.order(display_order: :asc)
    end
  end
end
