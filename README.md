#iStreetWatch

iStreetWatch uses __ruby 2.3.0__

## Running iStreetWatch locally

* Clone the repository:

 `git clone git@github.com:osahyoun/istreetwatch.git`

* Navigate into the root directory of the app:

 `cd istreetwatch`

* Install redis and start the redis server.

 see [http://redis.io/topics/quickstart](http://redis.io/topics/quickstart)

* Install gem dependencies:

 `bundle install`

* Run migrations:

 `bin/rake db:migrate`

* To seed the database with 100 reports run:

  `bin/rake db:seed`

* Start the server:

 `bin/rails s`

 * For twitter feed:

  Create a .env file and add your $CONSUMER_KEY, $CONSUMER_SECRET, TWIT_ACCESS_TOKEN and TWIT_ACCESS_SECRET from https://dev.twitter.com/
