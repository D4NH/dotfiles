import Time from './lib/components/Time.jsx'
import DateDisplay from './lib/components/Date.jsx'
import Battery from './lib/components/Battery.jsx'
import Sound from './lib/components/Sound.jsx'
import Wifi from './lib/components/Wifi.jsx'

import { parseJson } from './lib/utils.js'
import { DateStyles, TimeStyles, BatteryStyles, WifiStyles, SoundStyles } from './lib/styles/Styles.js'
import { Theme } from './lib/styles/Theme.js'

export const refreshFrequency = 60000

export const className = `
  .simple-bar__error,
  .simple-bar__data {
    position: fixed;
    top: 9px;
    right: 5px;
    display: flex;
    align-items: center;
    margin-left: auto;
    padding: 4px 5px;
    color: white;
    font-family: ${Theme.font};
    font-size: 11px;
    z-index: 1;
  }
  .simple-bar__data > *:not(:last-of-type) {
    margin-right: 5px;
  }
  ${DateStyles}
  ${TimeStyles}
  ${BatteryStyles}
  ${WifiStyles}
  ${SoundStyles}
`

export const command = 'bash simple-bar/lib/scripts/get_data.sh;'

export const render = ({ output, error }) => {
  if (!output || error) return <div className="simple-bar__error">Loading...</div>
  const data = parseJson(output)
  console.log('data', data)
  if (!data) return <div className="simple-bar__error">JSON error...</div>
  const { time, battery, wifi, sound } = data
  return (
    <div className="simple-bar__data">
      <Battery output={battery} />
      <Wifi output={wifi} />
      <Sound output={sound} />
      <DateDisplay />
      <Time output={time} />
    </div>
  )
}
