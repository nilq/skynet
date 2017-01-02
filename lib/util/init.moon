path = "lib/util/"

math = require path .. "math"

clone = (t) ->
  return t unless "table" == type t

  meta   = getmetatable t
  target = {}

  for k, v in pairs t
    if "table" == type t
      target[k] = clone v
    else
      target[k] = v

  setmetatable target, meta
  target

{
  :math
  :clone
}
