# frozen_string_literal: true

require("simplecov")
require("simplecov-console")

if ENV["COVERAGE"]
  SimpleCov.formatter = SimpleCov::Formatter::Console if ENV["Travis"]
  unless SimpleCov.running
    SimpleCov.start do
      add_filter "/test/"
      add_filter "/lib/version.rb"

      add_group "lib", "/lib/"
      command_name "Minitest"
    end
  end
end

require("minitest/autorun")
require_relative("./../lib/watson_developer_cloud.rb")