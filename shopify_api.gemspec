# frozen_string_literal: true

require_relative "lib/shopify_api/version"

Gem::Specification.new do |s|
  s.name = %q{ruby_shopify_api}
  s.version = ShopifyAPI::VERSION
  s.authors = ["Hopper Gee"]
  s.email = ["hopper.gee@hey.com"]

  s.summary = %q{The Shopify API gem is a lightweight gem for accessing the Shopify admin REST web services}
  s.description = <<~HERE
    The Shopify API gem allows Ruby developers to programmatically access the admin
    section of Shopify stores. The API is implemented as JSON or XML over HTTP using
    all four verbs (GET/POST/PUT/DELETE). Each resource, like Order, Product, or
    Collection, has its own URL and is manipulated in isolation.
  HERE
  s.homepage = %q{https://github.com/RetroShopifyDev/ruby-shopify-api}

  s.metadata['allowed_push_host'] = 'https://rubygems.org'

  s.extra_rdoc_files = [
    "LICENSE",
    "README.md",
  ]
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test}/*`.split("\n")

  s.rdoc_options = ["--charset=UTF-8"]
  s.summary = %q{ShopifyAPI is a lightweight gem for accessing the Shopify admin REST web services}
  s.license = "MIT"

  s.required_ruby_version = ">= 2.4"

  s.add_runtime_dependency("activeresource")
  s.add_runtime_dependency("rack")
  s.add_runtime_dependency("graphql-client")
end
