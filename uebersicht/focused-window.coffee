command: 'echo "$(/usr/local/bin/chunkc tiling::query --window owner)"'

refreshFrequency: 1000 # ms

render: (output) ->
  """
  <div class="foc">
    <span>#{output}</span>
  </div>
  """

dotted: (str, limit) ->
  dots = "..."
  if str.length > limit
    str = str.substring(0,limit) + dots
  return str

style: """
  -webkit-font-smoothing: antialiased
  color: white
  font: 11px Hack
  top: 14px
  text-align: center
  margin: auto
  position: absolute
  left: 0
  right: 0
  overflow: hidden
  text-overflow: ellipsis
  white-space: nowrap
"""
