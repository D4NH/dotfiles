command: 'echo "$(/usr/local/bin/kwmc query space active mode) $(/usr/local/bin/kwmc query space active name) | $(/usr/local/bin/kwmc query window focused name)"'

refreshFrequency: 1000 # ms

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
  font: 11px Input
  height: 16px
  left: 10px
  top: 5px

  width: 500px
  overflow: hidden
  text-overflow: ellipsis
  white-space: nowrap

  .text
    margin-left: 5px
    font-family: 'Source Code Pro for Powerline'
    font-weight: bold
"""
