module DogBiscuits
  # DC identifier
  module Identifier
    extend ActiveSupport::Concern

    included do
      property :identifier, predicate: ::RDF::Vocab::DC.identifier,
                            multiple: true do |index|
        index.as :stored_searchable, :sortable
      end
    end
  end
end
