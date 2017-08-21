require 'matrix'

module Hinton
  class Layer
    def initialize layer_def
      @w = Matrix.build(layer_def.size, layer_def.input_size) { rand }
      @b = Matrix.build(layer_def.size, 1) { rand }
      @activation = layer_def.activation
    end

    def forward a
      @z = (@w * a) + @b
      case @activation
      when 'sigmoid'
        ActivationFns::sigmoid(@z)
      when 'relu'
        ActivationFns::relu(@z)
      end
    end

  end
end