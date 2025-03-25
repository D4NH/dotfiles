import { Calendar } from './Icons.jsx'

const DateDisplay = () => {
  const options = { weekday: 'long', month: 'long', day: 'numeric' }
  const now = new Date().toLocaleDateString('en-NL', options)
  return (
    <div className="date">
      <Calendar className="date__icon" />
      <span>{now}</span>
    </div>
  )
}

export default DateDisplay
