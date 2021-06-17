## Rails API Serializers

The subdirectories in this repo are sample Rails applications that demonstrates the usage of respective API serializers.

### Dependencies

* Ruby version: 3.0.1

* Rails version: 6.1.3

* Database Adapter: Postgres

### Setup

Clone the repo:

```
git clone https://github.com/AthiraKadampatta/rails-api-serializers.git
```

Choose the serializer that you want to explore.

```
cd rails-api-serializers/active-model-serialized-json
```

In the subdirectory, install dependencies and set up the database. (Configure your `database.yml` file if needed)

```
bundle install
rails db:setup db:seed
```

### Run

Typical Rails start: 

```
rails s
```

Hit the endpoint GET `http://localhost:3000/courses?user_id=1` via Postman or any API testing tool


