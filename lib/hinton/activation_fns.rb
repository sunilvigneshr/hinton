require 'matrix'

class Matrix
  def []=(i, j, x)
    @rows[i][j] = x
  end
end

module ActivationFns
  def self.sigmoid z
    a = Matrix.build(z.row_count, z.column_count) { 0 }
    for row in (0...z.row_count)
      a[row, 0] = 1.0 / (1.0 + Math.exp(z[row, 0]))
    end
    a
  end

  def self.relu z
    a = Matrix.build(z.row_count, z.column_count) { 0 }
    for row in (0...z.row_count)
      a[row, 0] = z[row, 0] > 0 ? z[row, 0] : 0
    end
    a
  end
end