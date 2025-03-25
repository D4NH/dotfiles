import { Clock } from './Icons.jsx'

const Time = ({ output }) => {
  if (!output) return null
  return (
    <div className="time">
      <Clock className="time__icon" />
      <span>{output}</span>
    </div>
  )
}

export default Time
