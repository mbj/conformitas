require 'virtus'
require 'aequitas/virtus_integration'

module Conformitas
  module InputController
    attr_reader :original_attributes

    class << self
      def included(base)
        super

        base.class_eval do
          include ::Virtus::ValueObject
          include ::Aequitas
          include ::Aequitas::VirtusIntegration
          include InstanceMethods
          extend ClassMethods
        end
      end

      private :included
    end

    module InstanceMethods
      def initialize(attributes = {})
        @original_attributes = attributes
        super(attributes)
        valid?
      end
    end # module InstanceMethods

    module ClassMethods
    end # module ClassMethods

  end # module InputController
end # module Conformitas
