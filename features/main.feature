Feature: Current user generators
  In order to get an authentication solution in minutes and be happy
  As a developer
  I use CurrentUser's generators

  Background:
    When I run `cp -r ../../seed/aruba_dummy dummy`
    And I cd to "dummy"

    And I append to "Gemfile" with "gem 'current_user', :path => '../../..'"
    And I successfully run `bundle install`

  Scenario: Authentication key generation
    Then a file named "config/current_user/key" should not exist
    When I successfully run `rails generate current_user:install`
    Then a file named "config/current_user/key" should exist
    And the file "config/current_user/key" should match /^[a-f0-9]{40}$/
