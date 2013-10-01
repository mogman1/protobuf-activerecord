require 'active_record'
require 'active_support/concern'
require 'heredity'
require 'protobuf'

require 'protobuf/active_record/config'
require 'protobuf/active_record/model'
require 'protobuf/active_record/version'

module Protobuf
  module ActiveRecord
    def self.config
      @config ||= Protobuf::ActiveRecord::Config.new
    end

    # Initialize the config
    config
  end
end

require 'protobuf/active_record/railtie' if defined?(Rails)
