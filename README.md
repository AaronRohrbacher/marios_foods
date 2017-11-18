### Welcome to Mario's Foods

* This app will allow Mario's Foods to create, edit, and delete products, and reviews of said products.

* _This application requires Postgres. Be sure that Postgres is installed before trying to run this application. If not installed, see:_ url(postgresql.org)

##To run:
* clone this repository, open your terminal window, and navigate to the root directory of this project.

In the terminal window, run:
* `$ postgres` (this is the SQL server... very necessary.)
* Open a new terminal window or tab.
* run `$ bundle install && rake db:create && rake:db:seed && rails s`
* In your favorite web browser, visit url(localhost:3000)
* Have fun!

## Technologies Used:
* Built with Ruby 2.4.1p111 on Rails 5.1.4
* Tested with Rspec and Capybara
* Seeded with Faker
* Styled with Bootstrap
