Designed and developed a React web based application built with redux which provides movie ratings, overview, crews and reviews by fetching real time data from the The Movie Database API. 
The app is deployed to AWS S3 and distributed with AWS cloudFront using Continuous Integration/Continuous Delivery. 
Created AWS Resources using Terraform.

## Tools
* React
* Redux
* Node-sass and CSS Grid
* AWS S3
* AWS Cloudfront
* Slack
* Sentry

## App Usage Locally

* Clone the repository 
* Run `npm install`
* Create an account on https://www.themoviedb.org/ and obtain an API key.
* Create a .env file in the root of the project and add
```js
REACT_APP_API_SECRET=your api key
```
* Run `npm start`
