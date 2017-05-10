command: "date +\"%a %d %b\""

refreshFrequency: 10000

render: (output) ->
  """
  <div class="cal"
    <span></span>
    <span class="icon fa fa-calendar"></span>
    <span class="text">#{output}</span>
  </div>
  """

style: """
  -webkit-font-smoothing: antialiased
  color: white
  font: 11px Input
  right: 75px
  top: 5px
  //text-transform: lowercase
  .text
    margin-left: 5px
    font-family: 'Source Code Pro for Powerline'
    font-weight: bold
"""
