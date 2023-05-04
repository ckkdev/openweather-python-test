<!DOCTYPE html>
<html>
<head>
    <title>Weather Forecast</title>
</head>
<body>
    <h1>Weather Forecast</h1>
    <form action="/forecast" method="post">
        <label for="zip-input">Enter your zip code:</label>
        <input type="text" id="zip-input" name="zip">
        <button type="submit">Get Forecast</button>
    </form>
</body>
</html>
