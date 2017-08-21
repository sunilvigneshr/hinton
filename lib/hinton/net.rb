module Hinton
  class LayerDef
    attr_reader :input_size, :size, :activation

    def initialize opts
      @input_size = opts[:input_size]
      @size = opts[:size]
      @activation = opts[:activation]
    end
  end

  class Net
    def initialize layer_defs
      @layers = layer_defs.map { |layer_def| Layer.new layer_def }
    end
  end
end