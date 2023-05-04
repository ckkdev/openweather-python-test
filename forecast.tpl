<!DOCTYPE html>
<html>
<head>
    <title>Weather Forecast</title>
</head>
<body>
    % if data:
        <h1>Weather Forecast for {{data.city.name}}, {{data.city.country}}</h1>
        <ul>
            % for day in data.list:
                <li>
                    <h2>{{day.dt}}</h2>
                    <p>Temperature: {{day.temp.day}} &deg;C</p>
                    <p>Weather: {{day.weather[0].description}}</p>
                </li>
            % end
        </ul>
    % else:
        <p>No forecast data available.</p>
    % end
</body>
</html>
