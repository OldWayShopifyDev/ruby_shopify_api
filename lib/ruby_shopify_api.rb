# frozen_string_literal: true
$:.unshift(File.dirname(__FILE__))
require 'active_resource'
require 'active_support/core_ext/class/attribute_accessors'
require 'digest/md5'
require 'base64'
require 'active_resource/detailed_log_subscriber'
require 'ruby_shopify_api/limits'
require 'ruby_shopify_api/api_version'
require 'ruby_shopify_api/meta'
require 'active_resource/json_errors'
require 'ruby_shopify_api/paginated_collection'
require 'ruby_shopify_api/disable_prefix_check'

if Gem::Version.new(RUBY_VERSION) < Gem::Version.new("2.6")
  puts("\nshopify_api: NOTE: Support for Ruby #{RUBY_VERSION} will be dropped in the next major release. Please update to Ruby 2.6 or newer before updating this gem.\n\n")
end

module ShopifyAPI
  include Limits
end

require 'ruby_shopify_api/events'
require 'ruby_shopify_api/metafields'
require 'ruby_shopify_api/countable'
require 'ruby_shopify_api/resources'
require 'ruby_shopify_api/session'
require 'ruby_shopify_api/hmac_params'
require 'ruby_shopify_api/api_access'
require 'ruby_shopify_api/message_enricher'
require 'ruby_shopify_api/connection'
require 'ruby_shopify_api/pagination_link_headers'
require 'ruby_shopify_api/graphql'
require 'ruby_shopify_api/graphql/railtie' if defined?(Rails)

if ShopifyAPI::Base.respond_to?(:connection_class)
  ShopifyAPI::Base.connection_class = ShopifyAPI::Connection
else
  require 'active_resource/connection_ext'
end

if ENV["SHOPIFY_LOG_PATH"]
  ActiveResource::Base.logger = Logger.new(ENV["SHOPIFY_LOG_PATH"])
  ActiveResource::DetailedLogSubscriber.attach_to(:active_resource_detailed)
end
