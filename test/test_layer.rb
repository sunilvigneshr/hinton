require 'minitest/autorun'
require 'hinton'

class LayerTest < Minitest::Test
  def test_forward
    layer_def = Hinton::LayerDef.new input_size: 2, size: 4, activation: 'relu'
    layer = Hinton::Layer.new layer_def
    a1 = Matrix.build(2, 1) { 1 }
    a2 = layer.forward(a1)
    assert_equal a2.row_count, 4
    assert_equal a2.column_count, 1
  end
end
