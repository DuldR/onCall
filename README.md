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

![Screenshot from 2021-10-19 23-15-54](https://user-images.githubusercontent.com/36017878/138027493-b9dda5d6-cc73-4cbe-b841-4a6c46750ddf.png)


Clicking on a user on the left portion will open up the shifts that are taken up for October and will show that users requests if there any.

After clicking a user, you can then make a request to swap your shift in the bottom right. Your shift is shown in the left drop down with possible swaps in the right. After making your selection, click submit.

![Screenshot from 2021-10-19 23-13-19](https://user-images.githubusercontent.com/36017878/138027292-5489b80b-55f5-450c-b5cb-9186c6a2b064.png)


After clicking submit, the user must approve the swap request. That request will be found on that users main page.

![Screenshot from 2021-10-19 23-14-00](https://user-images.githubusercontent.com/36017878/138027334-b7873310-4a96-4543-ab66-1a2f1a059eec.png)

If approved, the request will update and the shifts for October will be updated after refresh.

![Screenshot from 2021-10-19 23-14-48](https://user-images.githubusercontent.com/36017878/138027402-09da90a0-e212-4d43-b61f-b4244d9c6c4e.png)

## Future Improvements

Given more time, I would like to make the following improvements:

* Front end tests. I'm not too familiar with Jest, but that is something I'd like to implement.
* A lot of code could be DRYed up. Especially in the react selectors, test cases and general react logic.
* Index nor request refreshs on swap submission or approval. Will need to add logic to refresh on update.
* Front end could made to look a little better, especially in ease of usage.
* Implement more than one month. Code is ready on the backend, but needs a good front end to hook into.
