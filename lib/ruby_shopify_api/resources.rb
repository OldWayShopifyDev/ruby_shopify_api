# frozen_string_literal: true
require 'ruby_shopify_api/resources/base'
require 'ruby_shopify_api/resources/array_base'
Dir.glob("#{File.dirname(__FILE__)}/resources/*").each { |file| require(file) }
