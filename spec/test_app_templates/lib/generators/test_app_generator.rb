# frozen_string_literal: true

require 'rails/generators'

class TestAppGenerator < Rails::Generators::Base
  source_root './spec/test_app_templates'

  # if you need to generate any additional configuration
  # into the test app, this generator will be run immediately
  # after setting up the application

  # FROM template.rb
  def install_hyrax
    gem 'hyrax', '2.0.0.rc1'
    run 'bundle install'
    generate 'hyrax:install', '-f'
    rails_command 'db:migrate'
  end

  def install_dog_biscuits
    generate 'dog_biscuits:install', '-f'
    DogBiscuits.config.available_models.each do |model|
      generate "dog_biscuits:work #{model}", '-f'
    end
  end
end
