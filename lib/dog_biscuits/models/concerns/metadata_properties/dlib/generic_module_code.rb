# frozen_string_literal: true

module DogBiscuits
  module GenericModuleCode
    extend ActiveSupport::Concern

    included do
      property :module_code, predicate: DogBiscuits::Vocab::Generic.moduleCode,
                             multiple: true do |index|
        index.as :stored_searchable
      end
    end
  end
end