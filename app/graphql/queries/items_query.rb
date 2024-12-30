module Queries
  class ItemsQuery < GraphQL::Schema::Resolver
    type [ Types::ItemType ], null: false
    description "Fetch all items"

    def resolve
      Item.all || raise(GraphQL::ExecutionError, "No item found")
    end
  end
end
