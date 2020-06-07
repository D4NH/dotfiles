command: 'echo $(yabai -m query --windows | jq -r \'.[] | select( .focused | contains(1)) | .app\'): $(yabai -m query --windows | jq -r \'.[] | select( .focused | contains(1)) | .title\')'

refreshFrequency: false

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
  font: 11px 'Meslo LG S for Powerline'
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
