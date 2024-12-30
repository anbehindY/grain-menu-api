# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    description "The query root of this schema"
    field :menus, resolver: Queries::MenusQuery
    field :menu, resolver: Queries::MenuQuery
    field :sections, resolver: Queries::SectionsQuery
    field :section, resolver: Queries::SectionQuery
    field :items, resolver: Queries::ItemsQuery
    field :item, resolver: Queries::ItemQuery
    field :modifier_groups, resolver: Queries::ModifierGroupsQuery
    field :modifier_group, resolver: Queries::ModifierGroupQuery
    field :modifiers, resolver: Queries::ModifiersQuery
    field :modifier, resolver: Queries::ModifierQuery
  end
end
