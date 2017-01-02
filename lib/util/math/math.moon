return_v = false
value_v  = 0

gauss_random = ->
  if return_v
    return_v = false
    return value_v

  with math
    u = 2 * .random! - 1
    v = 2 * .random! - 1

    r = u^2 + v^2

    return gauss_random! if r == 0 or r > 1

    c = .sqrt -2 * (.log r) / r

    value_v  = v * c
    return_v = true

    return u * c

randf = (a, b) ->
  math.random! * (b - a) + a

randi = (a, b) ->
  with math
    return .floor .random! * (b - a) + a

randn = (m, s) ->
  m + gauss_random! * s

zeros = (n) ->
  [0 for i = 1, n]

{
  :gauss_random
  :randf
  :randi
  :randn
  :zeros
}
