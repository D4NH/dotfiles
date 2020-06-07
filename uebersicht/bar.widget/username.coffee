# command: 'echo "Danh Nguyen [$(/usr/local/bin/chunkc tiling::query --desktop id)]"'
command: 'echo "Danh Nguyen"'

refreshFrequency: false # ms

render: (output) ->
  """
  <div class="foc"
    <span></span>
    <span class="icon fa fa-bars"></span>
    <span class="text">#{output}</span>
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
  height: 16px
  left: 20px
  top: 14px

  width: 500px
  overflow: hidden
  text-overflow: ellipsis
  white-space: nowrap
"""
