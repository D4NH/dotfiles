#
# ──────────────────────────────────────────────── II ──────
#   :::::: I N F O : :  :   :    :     :        :          :
# ──────────────────────────────────────────────────────────
#

  #
  # ─── ALL COMMANDS ───────────────────────────────────────────────────────────
  #

  commands =
    battery: "pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto " +
             "| cut -f1 -d';'"
    time   : "date +\"%H:%M\""
    date   : "date +\"%a %d %b\""
    wifi   : "/System/Library/PrivateFrameworks/Apple80211.framework/" +
             "Versions/Current/Resources/airport -I | " +
             "sed -e \"s/^ *SSID: //p\" -e d"

  #
  # ─── COLORS ─────────────────────────────────────────────────────────────────
  #

  colors =
    black:   "black"
    red:     "#BF616A"
    green:   "#89C541"
    yellow:  "#EBCB8B"
    blue:    "#81A1C1"
    magenta: "#B48EAD"
    cyan:    "#88C0D0"
    white:   "#D8DEE9"

  #
  # ─── COMMAND ────────────────────────────────────────────────────────────────
  #

  command: "echo " +
           "$(#{ commands.battery }):::" +
           "$(#{ commands.time }):::" +
           "$(#{ commands.date }):::" +
           "$(#{ commands.wifi }):::"

  #
  # ─── REFRESH ────────────────────────────────────────────────────────────────
  #

  refreshFrequency: '1m'

  #
  # ─── RENDER ─────────────────────────────────────────────────────────────────
  #

  render: ( ) ->
    """
    <link rel="stylesheet" href="./font-awesome/font-awesome.min.css" />

    <div class="wifi">
      <i class="fa fa-wifi"></i>
      <span class="wifi-output"></span>
    </div>
    <div class="battery">
      <span class="battery-icon"></span>
      <span class="battery-output"></span>
    </div>
    <div class="date">
      <i class="fa fa-calendar"></i>
      <span class="date-output"></span>
    </div>
    <div class="time">
      <i class="fa fa-clock-o"></i>
      <span class="time-output"></span>
    </div>
    """

  #
  # ─── RENDER ─────────────────────────────────────────────────────────────────
  #

  update: ( output ) ->
    output = output.split( /:::/g )

    battery = output[ 0 ]
    time    = output[ 1 ]
    date    = output[ 2 ]
    wifi    = output[ 3 ]

    $( ".battery-output" ) .text( "#{ battery }" )
    $( ".time-output" )    .text( "#{ time }" )
    $( ".date-output" )    .text( "#{ date }" )
    $( ".wifi-output" )    .text( "#{ wifi }" )

    @handleBattery( Number( battery.replace( /%/g, "" ) ) )

  #
  # ─── HANDLE BATTERY ─────────────────────────────────────────────────────────
  #

  handleBattery: ( percentage ) ->
    batteryIcon = switch
      when percentage <=  12 then "fa-battery-0"
      when percentage <=  25 then "fa-battery-1"
      when percentage <=  50 then "fa-battery-2"
      when percentage <=  75 then "fa-battery-3"
      when percentage <= 100 then "fa-battery-4"
    $( ".battery-icon" ).html( "<i class=\"fa #{ batteryIcon }\"></i>" )

  #
  # ─── STYLE ──────────────────────────────────────────────────────────────────
  #

  style: """
    .battery
      color: #{ colors.white }
    .time
      color: #{ colors.black }
      padding: 5px 5px 4px 5px
      margin-top: -4px
      margin-right: 10px
      background-color: #{ colors.green }
    .date
      color: #{ colors.white }
    .wifi
      color: #{ colors.white }
    .volume
      color: #{ colors.white }

    display: flex
    div
      margin-right: 15px

    top: 14px
    right: 0
    font-family: SauceCodeProNerdFontCompleteM-Regular
    font-size: 11px
    font-weight: bold
    -webkit-font-smoothing: antialiased
    z-index: 0
  """

# ──────────────────────────────────────────────────────────────────────────────
