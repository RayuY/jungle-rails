# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

## Feature Implementations
1. User-authentication - Use has_secure_password and bcyrpt, checks if user is "unique" before registering to database.
2. Admin-categories - Allow admin to create categories and add new products.
3. Admin-basic-authentication - Use http_basic_authenticate_with/.evn to perform a simple Admin login check.
4. Dashboard(for Admin) - Add a count table for the number of categories and products in the app.
5. Order-details - Add an order summary page upon successful transaction.
6. Sold-out-badge - Add sold out icon and shows if product inventory is 0.

## Bugs fixes
1. Empty-cart-UI - Add UI for empty cart and redirect link to home page.
2. Money-formatting - Add method to show "$"sign in front of signumeric values which reflect prices.

## Testing Practice
- Rspec, Cypress

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe

## Screenshots

Home Page

![Alt text](/docs/homepage_1.PNG "Optional Title")
![Alt text](/docs/homepage_2.PNG "Optional Title")

Product Page

![Alt text](/docs/order_summary_page.PNG "Optional Title")

Order Summary

![Alt text](/docs/product_page.PNG "Optional Title")