module Queries
  class ModifierGroupsQuery < GraphQL::Schema::Resolver
    type [ Types::ModifierGroupType ], null: false
    description "Fetch all modifier groups"

    def resolve
      ModifierGroup.all || raise(GraphQL::ExecutionError, "No modifier group found")
    end
  end
end
