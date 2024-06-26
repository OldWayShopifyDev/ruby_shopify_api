# frozen_string_literal: true
require 'ruby_shopify_api/connection'

module ActiveResource
  class Connection
    attr_reader :response

    prepend ShopifyAPI::Connection::ResponseCapture
    prepend ShopifyAPI::Connection::RequestNotification
  end
end
