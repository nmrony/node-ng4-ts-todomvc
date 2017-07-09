import app from './App'

const port = process.env.NODE_PORT || 3000

app.listen(port, (err: object) => {
  if (err) {
    return console.log(err)
  }
  return console.log(`Server is running on http://localhost:${port}`)

})
