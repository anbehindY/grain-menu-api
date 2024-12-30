module Queries
  class ModifierQuery < GraphQL::Schema::Resolver
    type Types::ModifierType, null: false
    description "Fetch a modifier by ID"
    argument :id, ID, required: true,  description: "ID of the modifier"

    def resolve(id:)
      Modifier.find(id) || raise(GraphQL::ExecutionError, "Modifier with ID #{id} not found")
    end
  end
end