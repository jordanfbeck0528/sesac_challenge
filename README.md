## Hacker Rank's "Bot Saves Princess challenge 1 & 2"

## Table of Contents

- [My Solutions](#my-solutions)
- [Local Install](#local-install)
- [Tech Used](#tech-used)
- [Prerequisites](#prerequisites)
- [Prerequisites](#prerequisites)
- [How it came together](#how-it-came-together)

### My solutions

- These are my solutions for the "Bot Saves Princess challenge 1 & 2". Navigate to the 2nd link on each challenge below, for a gist file, which you can copy/paste at the bottom of the Hacker Rank challenge page, located in the first link on each challenge below. Make sure to change the Hacker Rank submission setting to "Ruby".

  Challenge 1 - https://www.hackerrank.com/challenges/saveprincess  - https://gist.github.com/jordanfbeck0528/420d1dccce286f3d78cfe95e2b0f1ea3

  Challenge 2 - https://www.hackerrank.com/challenges/saveprincess2 - https://gist.github.com/jordanfbeck0528/185c9ad15f062ea1e9293674aa1d13f8

### Local Install

- If you would like to install and run tests locally run the instructions below, in your terminal.

  git@github.com:jordanfbeck0528/sesac_challenge.git
  cd sesac
  bundle install
  cd princess_1
  bundle exec rspec
  cd ..
  cd princess_2
  bundle exec rspec

### Testing Tech Used

- [RSpec] https://rspec.info/documentation/3.10/rspec-core/ 
- [pry] https://github.com/pry/pry
- [simplecov] https://github.com/simplecov-ruby/simplecov

### Prerequisites

* __Ruby__

  - The project is built with rubyonrails using __ruby version 2.5.3p105__, you must install ruby on your local machine first. Please visit the [ruby](https://www.ruby-lang.org/en/documentation/installation/) home page to get set up. _Please ensure you install the version of ruby noted above._

### How it came together

- Initially, my thoughts on the exercise were to create a few classes - Grid, Bot, Princess, and Path. I would run everthing through the Grid class, so that I could eventually use my Grid class for both exercises. Eventually, I realized that I was not taking input the way I was expected to, and rather I had created a system that could randomly produce valid locations for bot and princess(Again, with the hope that I could use the logic for both exercises). What I needed to do, rather than create, and place objects was actually much simpler. Taking the size, and grid input provided to me, I was able to slim down my code quite a bit, and not require the instantiation of any objects in my code. Ultimatley, I was able to make a module to share my Path logic, for both exercises in addition to completing both exercises, with 100% coverage and passing tests.
