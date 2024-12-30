module Queries
  class ModifiersQuery < GraphQL::Schema::Resolver
    type [Types::ModifierType], null: false
    description "Fetch all modifiers"

    def resolve
      Modifier.all
    end
  end
end
