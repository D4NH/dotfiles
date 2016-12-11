command: "echo 1 home, 2 browser, 3 editor, 4 terminal, 5 other, 6 chat"

refreshFrequency: false

render: (output) ->
  """
  <div class="np"
    <span></span>
    <span class="icon fa fa-desktop"></span>
    <span class="text">#{output}</span>
  </div>
  """

style: """
  -webkit-font-smoothing: antialiased
  text-align: center
  color: white
  font: 11px Input
  height: 16px
  left: 25%
  overflow: hidden
  text-overflow: ellipsis
  top: 4px
  width: 50%
  .text
    margin-left: 5px
    font-family: 'Source Code Pro for Powerline'
"""
