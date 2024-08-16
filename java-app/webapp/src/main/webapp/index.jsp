<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>First Web Page</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
        color: #333;
      }
      header {
        background-color: #007bff;
        color: #fff;
        padding: 15px 0;
        text-align: center;
        font-size: 1.5em;
      }
      nav {
        display: flex;
        justify-content: center;
        background-color: #343a40;
        padding: 10px 0;
      }
      nav a {
        color: #fff;
        text-decoration: none;
        padding: 10px 20px;
        margin: 0 10px;
        font-size: 1.2em;
      }
      nav a:hover {
        background-color: #007bff;
        border-radius: 5px;
      }
      .hero {
        background: url("https://source.unsplash.com/random/1600x900") no-repeat
          center center/cover;
        color: white;
        height: 400px;
        display: flex;
        align-items: center;
        justify-content: center;
        text-align: center;
        font-size: 2em;
        position: relative;
      }
      .hero::after {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: rgba(0, 0, 0, 0.5);
      }
      .hero h1 {
        position: relative;
        z-index: 1;
      }
      .container {
        padding: 30px;
      }
      .container h2 {
        text-align: center;
        margin-bottom: 20px;
        font-size: 2em;
      }
      .card {
        background-color: white;
        padding: 20px;
        margin: 20px 0;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
      }
      footer {
        background-color: #343a40;
        color: white;
        text-align: center;
        padding: 20px 0;
        position: relative;
        bottom: 0;
        width: 100%;
      }
      footer p {
        margin: 0;
        font-size: 1em;
      }
      .btn {
        display: inline-block;
        padding: 10px 20px;
        background-color: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        margin-top: 10px;
        transition: background-color 0.3s;
      }
      .btn:hover {
        background-color: #0056b3;
      }
    </style>
  </head>
  <body>
    <header>First Web Page</header>

    <nav>
      <a href="#">Home</a>
      <a href="#">About</a>
      <a href="#">Services</a>
      <a href="#">Contact</a>
    </nav>

    <section class="hero">
      <h1>Welcome My Name Is Mohamed Elsayed</h1>
    </section>

    <div class="container">
      <h2>Our Services</h2>
      <div class="card">
        <h3>Service One</h3>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer neque
          libero, scelerisque et interdum ut, dignissim a magna.
        </p>
        <a href="#" class="btn">Learn More</a>
      </div>
      <div class="card">
        <h3>Service Two</h3>
        <p>
          Quisque euismod, risus a ultricies tempor, felis mi efficitur urna,
          sit amet dignissim erat nisi non metus.
        </p>
        <a href="#" class="btn">Learn More</a>
      </div>
      <div class="card">
        <h3>Service Three</h3>
        <p>
          Phasellus sit amet mauris a enim efficitur pellentesque nec et libero.
          Nullam bibendum felis vel enim fermentum, ac placerat turpis pulvinar.
        </p>
        <a href="#" class="btn">Learn More</a>
      </div>
    </div>

    <footer>
      <p>&copy; 2024 Impressive Web Page. All Rights Reserved.</p>
    </footer>
  </body>
</html>
