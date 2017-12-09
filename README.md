# README

#### _Epicodus Friday Project in Rails (week 3)_

#### By Dan Nollette

## Description

_A Friday coding project exploring Rails._
_This is an existing codebase that I was assigned to fix up a bit _
_I implemented the following fixes: _

* Use ajax to update the number of order items in the cart.
* Add product detail show/hide capability.
* Instantly remove item from screen on delete without reloading page, using ajax
* Ensure that users can't order a negative number of items.
* Allow other than whole dollar amounts for admin product creation, and ensure that they are non-negative.
* Add product validations.
* Add flash messages for signing up, signing in and signing out.
* Add product update, delete functionality for admins.
* Add admin flash messages for adding, updating and deleting products.

## Setup/Installation Requirements

E-commerce site. Uses `bcrypt` and `materialize`.

To set up:

*  In the command line of your computer run `https://github.com/Dan-Nollette/went-to-bali-mwahaha`

* run `bundle install`

* `rake db:setup`

* `rails s`

* open http://localhost:3000/ in your browser


# Buon Appetizers

## Known Bugs

*  various bugs, for instance you can enter an order item without a quantity. While there are various fixes, more are needed before the site could be considered ready for prime time. It should be considered a work in progress.

## Support and contact details

_Please contact [nollette.dan@gmail.com](mailto:nollette.dan@gmail.com) with questions, comments, or issues, or to contribute to the code._

## Technologies Used

* Ruby
* Ruby on Rails
* Materialize


### License

Copyright (c) 2017 ** Dan Nollette **

*This software is licensed under the MIT license.*
