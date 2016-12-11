command: "ESC=`printf \"\e\"`; ps -A -o %cpu | awk '{s+=$1} END {printf(\"%.2f\",s/8);}'"

refreshFrequency: 2000 # ms

render: (output) ->
  """
  <div class="cpu"
    <span></span>
    <span class="icon fa fa-bar-chart"></span>
    <span class="text">#{output}</span>
  </div>
  """

style: """
  -webkit-font-smoothing: antialiased
  color: white
  font: 11px Input
  right: 255px
  top: 4px
  .text
    margin-left: 5px
    font-family: 'Source Code Pro for Powerline'
"""
