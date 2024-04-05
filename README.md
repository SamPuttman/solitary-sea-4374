# The Last Airbender - 2308

### Background

The Last Airbender is an animated series that ran from 2005 to 2008. Some people can manipulate classical elements (wind, water, fire, earth) with psychokinetic variants of the Chinese martial arts known as "bending". One individual, the Avatar, is capable of bending all four elements and is responsible for maintaining harmony between the world's four nations.

The four nations are: the "Water Tribes", the "Earth Kingdom", the "Fire Nation", and the "Air Nomads".

### Instructions

Using an Airbender API provided to you by your instructors, retrieve a subset of information, and display the relevant information per the instructions from your instructor.

### Versions

Rails 7.0.x

Ruby 3.2.2

### Setup

- Clone this repo
- `bundle install`
- `rails db:{create,migrate}`
- `rails s`

As a user,
When I visit "/"
And I Select "Fire Nation" from the select field
(Note: Use the existing select field)
And I click "Search For Members"
Then I should be on page "/search"
Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
And I should see a list with the detailed information for the first 25 members of the Fire Nation.

And for each of the members I should see:
- The name of the member (and their photo, if they have one)
- The list of allies or "None"
- The list of enemies or "None"
- Any affiliations that the member has