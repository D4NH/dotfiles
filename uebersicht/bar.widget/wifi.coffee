command: "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID/ {print substr($0, index($0, $2))}'"

refreshFrequency: 150000 # ms

render: (output) ->
  """
  <div class="wifi"
    <span></span>
    <span class="icon fa fa-wifi"></span>
    <span class="text">#{output}asfsflkj</span>
  </div>
  """

style: """
  -webkit-font-smoothing: antialiased
  color: white
  font: 11px Input
  right: 180px
  top: 5px
  width: 50px
  white-space: nowrap
  overflow: hidden
  text-overflow: ellipsis
  .text
    margin-left: 5px
    font-family: 'Source Code Pro for Powerline'
    font-weight: bold
"""
