class Matrix
  new: (@n, @d) =>
    @length = @n * @d

    @w  = [0 for i = 1, @length]
    @dw = [0 for i = 1, @length]

  get: (y, x) =>
    ix = @h * y + x
    assert ix >= 1 and ix < #@w
    @w[ix]

  set: (y, x, v) =>
    ix = @h * y + x
    assert ix >= 1 and ix < #@w
    @w[ix] = v

  set_from: (a) =>
    for i, v in ipairs a
      @w[i] = v

  set_column: (m, i) =>
    for q = 1, #m.w
      @w[(@d * q) + i] = m.w[q]

  to_table: =>
    {
      n: @n
      d: @d
      w: @w
    }

  from_table: (t) =>
    @n = t.n
    @d = t.d
    @w = t.w

  @copy: (a) =>
    b = Matrix a.n, a.d
    b\set_from b.w
    b
