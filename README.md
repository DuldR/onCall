# oVice Coding HW

## Requirements

 * Ruby 2.7.4
 * Rails 6.0 or greater
 * Yarn 1.22.04

## Running

The easiest way to run the app is to simply view it to Heroku.

Current deployment can be found at: https://pure-reaches-75610.herokuapp.com/#/

To run locally: 

`git clone https://github.com/DuldR/onCall.git`

`cd onCall/`

Next, run the following commands to install the yarn and ruby dependencies:

`gem install bundler`

`bundle install`

`yarn`

`bundle exec rails s`

After running `bundle exec rails s`, the app should be running on [port 3000](http://localhost:3000).

## Testing

Currently, there are no front end tests.
To run the rails tests for models and controllers run `bundle exec rspec`


## Usage

At the main page you'll see a left dashboard and a main viewer: 

![Screenshot from 2021-10-19 22-58-24](https://user-images.githubusercontent.com/36017878/138026207-45ea83b8-11af-4826-94a2-45ccd52d2cf5.png)

Clicking on a user on the left portion will open up the shifts that are taken up for October and will show that users requests if there any.




## Future Improvements

Given more time, I would like to make the following improvements:
