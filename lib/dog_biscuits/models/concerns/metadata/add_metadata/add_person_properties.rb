# frozen_string_literal: true

module DogBiscuits
  module AddPersonProperties
    extend ActiveSupport::Concern

    included do
      property :prefix, predicate: ::RDF::Vocab::SCHEMA.honorificPrefix,
                        multiple: false do |index|
        index.as :stored_searchable
      end

      # Eg. NCA Rules 2.4.
      property :family_name, predicate: ::RDF::Vocab::FOAF.familyName,
                             multiple: false do |index|
        index.as :stored_searchable
      end

      # Eg. NCA Rules 2.3.
      property :given_name, predicate: ::RDF::Vocab::FOAF.givenName,
                            multiple: false do |index|
        index.as :stored_searchable
      end

      property :suffix,
               predicate: ::RDF::Vocab::SCHEMA.honorificSuffix,
               multiple: false do |index|
        index.as :stored_searchable
      end

      # Date
      property :birth_date,
               predicate: ::RDF::Vocab::SCHEMA.birthDate,
               multiple: false do |index|
        index.type :date
        index.as :stored_searchable
      end

      # Date
      property :death_date,
               predicate: ::RDF::Vocab::SCHEMA.deathDate,
               multiple: false do |index|
        index.type :date
        index.as :stored_searchable
      end

      # edm:Place
      property :birth_place,
               predicate: ::RDF::Vocab::SCHEMA.birthPlace,
               multiple: false do |index|
        index.as :stored_searchable
      end

      # edm:Place
      property :death_place,
               predicate: ::RDF::Vocab::SCHEMA.deathPlace,
               multiple: false do |index|
        index.as :stored_searchable
      end

      property :nationality,
               predicate: ::RDF::Vocab::SCHEMA.nationality,
               multiple: false do |index|
        index.as :stored_searchable
      end

      property :gender,
               predicate: ::RDF::Vocab::FOAF.gender,
               multiple: false do |index|
        index.as :stored_searchable
      end

      # foaf:Person
      property :knows,
               predicate: ::RDF::Vocab::FOAF.knows,
               multiple: true do |index|
        index.as :stored_searchable
      end

      # foaf:Organization
      property :affiliation,
               predicate: ::RDF::Vocab::SCHEMA.affiliation,
               multiple: true do |index|
        index.as :stored_searchable
      end

      # foaf:Group
      property :member_of, predicate: ::RDF::Vocab::SCHEMA.memberOf,
                           multiple: true do |index|
        index.as :stored_searchable
      end
    end
  end
end
