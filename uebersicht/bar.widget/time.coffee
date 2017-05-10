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
  background-color: #89C541
  padding: 5px 5px 4px 5px
  -webkit-font-smoothing: antialiased
  color: black
  font: 11px Input
  right: 0
  top: 0
  .text
    margin-left: 5px
    font-family: 'Source Code Pro for Powerline'
    font-weight: 600
"""
