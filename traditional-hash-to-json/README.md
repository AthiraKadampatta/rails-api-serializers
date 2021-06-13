# API Serializers
Sample Project with different branches that deal with different serializers

* Ruby version: 3.0.1

* Rails version: 6.1.3

* Database Adapter: Postgres

## Installation/Setup

1. Clone the application on your local

```
git clone https://github.com/AthiraKadampatta/api-serializers.git
```

2. cd to the `api-serializers` application directory

```
  cd api-serializers
```

3. Run `bundle` command to install all gems

```
  bundle install
```

4. Configure your `database.yml` file.

5. Run `bundle exec rails db:create`

6. Run `bundle exec rails db:migrate`

7. Run `bundle exec rails db:seed`. The sample data would be then loaded into application database.

8. The `current_user` is stubbed as `User.first`

9. Run the rails server using `bundle exec rails server` or `bundle exec rails s`

10. Hit the only endpoint `http://localhost:3000/user_courses` via Postman or any API testing tool 


