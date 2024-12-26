# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    description "The query root of this schema"
    field :menus, [Types::MenuType], null: false
    field :sections, [Types::SectionType], null: false
    field :items, [Types::ItemType], null: false
    field :modifier_groups, [Types::ModifierGroupType], null: false
    field :modifiers, [Types::ModifierType], null: false
    
    def menus
      Menu.all
    end

    def sections
      Section.all
    end

    def items
      Item.all
    end

    def modifier_groups
      ModifierGroup.all
    end

    def modifiers
      Modifier.all
    end
  end
end
