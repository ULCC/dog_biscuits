module DogBiscuits
  # Issue Number
  module DatePublished
    extend ActiveSupport::Concern

    included do
      property :date_published, predicate: RDF::Vocab::SCHEMA.datePublished,
                           multiple: false do |index|
        index.as :stored_searchable, :facetable, :dateable
      end
    end
  end
end
