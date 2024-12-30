module Queries
  class ModifierGroupQuery < GraphQL::Schema::Resolver
    type Types::ModifierGroupType, null: false
    description "Fetch a modifier group by ID"
    argument :id, ID, required: true,  description: "ID of the modifier group"

    def resolve(id:)
      ModifierGroup.find(id) || raise(GraphQL::ExecutionError, "Modifier Group with ID #{id} not found")
    end
  end
end
