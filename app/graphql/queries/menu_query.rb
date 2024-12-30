module Queries
  class MenuQuery < GraphQL::Schema::Resolver
    type Types::MenuType, null: false
    description "Fetch a menu by ID"
    argument :id, ID, required: true,  description: "ID of the menu"

    def resolve(id:)
      Menu.find(id) || raise(GraphQL::ExecutionError, "Menu with ID #{id} not found")
    end
  end
end
