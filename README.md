# Postgres-Global-City-Streaming

This repository is a submodule of the main [Global City Streaming](https://github.com/mrjex/Global-City-Streaming) project. It provides the PostgreSQL database container and schema used by the main application and is integrated as a standalone service.


## Database Structure
The database container initializes a single table:

### `weather`
| Column               | Type                | Description                |
|----------------------|---------------------|----------------------------|
| `id`                 | SERIAL PRIMARY KEY  | Unique identifier          |
| `city`               | VARCHAR(255)        | Name of the city           |
| `average_temperature`| DOUBLE PRECISION    | Average temperature value  |


This table is designed to store weather data for various cities, including the city name and its average temperature.