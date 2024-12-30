module Queries
  class SectionsQuery < GraphQL::Schema::Resolver
    type [ Types::SectionType ], null: false
    description "Fetch all sections"

    def resolve
      Section.all || raise(GraphQL::ExecutionError, "No section found")
    end
  end
end
