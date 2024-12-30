module Queries
  class MenusQuery < GraphQL::Schema::Resolver
    type [Types::MenuType], null: false
    description "Fetch all menus"

    def resolve
      Menu.all || raise(GraphQL::ExecutionError, "No menu found")
    end
  end
end
