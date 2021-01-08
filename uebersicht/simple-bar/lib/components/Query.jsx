const Query = ({ output }) => {
  if (!output) return
  const { displays, spaces, windows } = output

  return (
    <div className="sound">
      {spaces}
    </div>
  )
}

export default Query
