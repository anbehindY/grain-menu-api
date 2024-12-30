module Queries
  class SectionQuery < GraphQL::Schema::Resolver
    type Types::SectionType, null: false
    description "Fetch a section by ID"
    argument :id, ID, required: true,  description: "ID of the menu"

    def resolve(id:)
      Section.find(id) || raise(GraphQL::ExecutionError, "Section with ID #{id} not found")
    end
  end
end
