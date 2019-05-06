# Welcome to Zoodopt!

Zoodopt is an animal adoption site for building and managing your own virtual zoo.

## Getting Started

Clone down the repo here:
After cloning down run this in your terminal.

```
1. bundle install
2. rails db:migrate
3. rails db: seed

```
## Start up the server!

In your terminal type:

```
rails s

```

## Models

- User has many animals through pets.
- User and Pet has many posts (comments).
- Animals can be endangered or not endangered.

## Features

### User Authentication
- Users can sign up and log in.
- Error messages are indicated for failed log ins and signups
- User password is encrypted with BCrypt Gem.

### Adoption
- Users can adopt existing pets.
- User profile page displays graph of animal count with Google charts and visualization.

### Animal Creation
- scraped Instagram images on specific pages with Python and BeautifulSoup4
- animal names and sizes seeded with Faker Gem

### Comments
- Users can write comments/posts on animal show pages.
- Users can delete only their own posts.

## Built With

* Ruby on Rails
* Bootstrap CSS

## Contributors

Jonathan Chan github.com/ParmeJon
Norbert Lam github.com/NorbertLam
