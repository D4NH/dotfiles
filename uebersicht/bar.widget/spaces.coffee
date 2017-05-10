command: "echo 1 home, 2 browser, 3 editor, 4 terminal, 5 other, 6 chat"

refreshFrequency: false

render: (output) ->
  """
  <div
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
  overflow: hidden
  text-overflow: ellipsis
  top: 5px

  left: 50%
  width: auto
  margin-left: -190px

  .text
    margin-left: 5px
    font-family: 'Source Code Pro for Powerline'
"""
