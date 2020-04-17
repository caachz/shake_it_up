# ShakeItUp

### Description
ShakeItUp is an interactive web application designed to solve one of the biggest problems facing people with too many food options: where should I eat next? Whether you're tired of eating the same stuff day after day or you're in the mood to try something you've never heard of, ShakeItUp is designed to use your current location and return a randomly selected restaurant.

ShakeItUp authenticates a user with Google Oauth 2.0 which will then allow the user to fully use the aplication. It'll then take in your Yelp price point ($ - $$$$) and the distance you're willing to travel and voila! The randomly returned restaurant will have it's name displayed, a link to their Yelp page, full address, price, average rating (between Yelp and Google), category, and an interactive Google Map that will display your location and directions to the restaurant.

And if you're not feeling the restaurant, you can always ShakeItUp again to get another option!

Visit our website ShakeItUp! https://shake-it-up-restaurant.herokuapp.com/

### Installation Locally
* Install Ruby 2.5.2
* Install Rails 6.0.2
* Clone this repo to your local machine with: git clone git@github.com:https://github.com/caachz/shake_it_up
* bundle install
* rake db:{create,migrate}

This rails api app uses the following gems for testing:
   * rspec-rails
   * shoulda-matchers

To run the test suite, simply run the command `rspec` from your terminal.

### API Keys Needed
* Google API

## Project Collaborators

* Cassie Achzenick - https://github.com/caachz
* Travis Borgsmiller - https://github.com/TravisBorgsmiller
* Alex Gallant - https://github.com/agallant121
* Matt Holmes - https://github.com/holmesm8
