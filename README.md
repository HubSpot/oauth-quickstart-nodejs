# Node.js OAuth 2.0 Quickstart

A quickstart app for integrators looking to use HubSpot's OAuth 2.0. Written in Node.js.

_**Note:** This app does not store any data in a persistent way, so restarting the app will clear the retrieved access tokens._

## Prerequesites

Before running the quickstart app, make sure you have:

1. Node.js and a package manager ([yarn](https://yarnpkg.com/en/docs/install) or [NPM](https://www.npmjs.com/get-npm)) installed
2. A free HubSpot developer account ([sign up](https://app.hubspot.com/signup/developers))
3. An app associated with your developer account ([create an app](https://developers.hubspot.com/docs/faq/how-do-i-create-an-app-in-hubspot))
4. A HubSpot portal to test the app on (you can use an existing one, or [create a test portal](https://developers.hubspot.com/docs/faq/how-do-i-create-a-test-portal))

## Running the app

1. Clone the repository:
   ```bash
   $ git clone git@github.com:HubSpot/oauth-quickstart-nodejs.git
   ```
2. Create a **`.env`** file in the root of the repository with the ID and secret for your app (found on the app settings page), eg:
   ```
   CLIENT_ID='xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'
   CLIENT_SECRET='yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy'
   ```
3. From the root of the repository, run:
   ```bash
   $ yarn install
   $ yarn start
   ```
4. Open your browser to `http://localhost:3000/install` to kick off the OAuth 2.0 flow

## What the app does

1. **Redirect to HubSpot's OAuth 2.0 server**

   When you open your browser to `http://localhost:3000/install`, the app will redirect you to the authorization page on
   HubSpot's server. Here you will choose which portal you'd like to install the app in and give consent for it to act
   on your behalf. When this is complete, HubSpot will redirect you back to the app.

2. **Exchange an authorization code for access tokens**

   Now that you're back in the app, it will retrieve an access token and refresh token from HubSpot's server, using an
   authorization code that was supplied by HubSpot when you granted access to the app.

3. **Retrieve a contact**

   When the app has received an access token, it will redirect you to `http://localhost:3000/`. It will then use the access token to
   make a query to HubSpot's Contacts API, and display the retrieved contact's name on the page.
