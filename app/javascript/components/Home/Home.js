import React from 'react'

const Home = () => {
  return (
    <div className="home-container">
      <div className="row">
        <h1>Amazon Price Tracker</h1>
      </div>

      <div className="row searchbar">
        <form action="/api/v1/subscriptions">
          <label for="product_url">Enter product URL</label>
          <input type="text" id="product_url" name="product_url"/>
          <input type="submit" value="Submit"/>
        </form>
      </div>
    </div>
  )
}

export default Home
