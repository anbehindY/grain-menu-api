module Queries
  class ItemQuery < GraphQL::Schema::Resolver
    type Types::ItemType, null: false
    description "Fetch an item by ID"
    argument :id, ID, required: true,  description: "ID of the item"

    def resolve(id:)
      Item.find(id) || raise(GraphQL::ExecutionError, "Item with ID #{id} not found")
    end
  end
end
