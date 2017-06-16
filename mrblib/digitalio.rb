#
# Plato::DigitalIO class
#
module Plato
  class DigitalIO < GPIO
    def initialize(pin, pullup=false, act=:low)
      super(pin)
      @active_low = (act == :low)
    end
  end
end
