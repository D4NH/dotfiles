command: "date +\"%H:%M\""

refreshFrequency: 10000 # ms

render: (output) ->
  """
  <div class="time"
    <span></span>
    <span class="icon fa fa-clock-o"></span>
    <span class="text">#{output}</span>
  </div>
  """

style: """
  -webkit-font-smoothing: antialiased
  color: white
  font: 11px Input
  right: 10px
  top: 4px
  .text
    margin-left: 5px
    font-family: 'Source Code Pro for Powerline'
"""
