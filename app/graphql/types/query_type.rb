module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    field :all_links, [LinkType], null: false,
      description: "Return all links"

    def test_field
      "Hello World!"
    end

    def all_links
      Link.all
    end
  end
end
