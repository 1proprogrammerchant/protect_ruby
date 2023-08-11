require safety
require 'virtus'

module Ports
    class Port.safety
        include Model.safety
        include Virtus.model

        attribute :safety , String
        attribute :Ports , Fixnum

        def initialize *port, safety
            super.initialize *port, safety
