README

Still need to make it:

* output an access token on login
* let you create a location
* let you list your locations

SETUP

Make sure you have SQLite 3 installed & in your path (you can run the sqlite3 command). Installing RVM first is a good idea. Install the bundle, then run `rake secret` to generate a secret token for your development machine, create a file called '.env' and write SECRET_TOKEN= followed by the secret token you just generated. Finally run `rake db:migrate`.