# Chatter

This is a basic chat client developed as a part of the code challenge for interviews with Guild Education.

## Getting started

1. Install prerequisites:
 - Ruby 2.5.3
 - Postgres (`brew install postgres`)
 - Bundler (`gem install bundler`)
2. Run `bin/setup`.
3. Start the app by running `bundle exec rails server`

Visit localhost:3000 in your browser!

## Technical overview

This is a straightforward app designed with traditional Rails practices. I picked the Rails framework with Postgres on the backend because it is easy to get up and running quickly with this stack.

We have three main models in the appplication:
- User
- Conversation
- Message

These models are self-explanatory and have been chosen to strike a balance between simplicity and extensibility. For example, I forsee the need to add group conversations in the future, so instead of including the columns `participant_1` and `participant_2` in the `conversations` table, I opted to implement a join table (`conversations_users`). This should make it easy to have a conversations with more than two participants without changing the model design.

## Future improvements

### Add authentication
Currently, there is no password-level authentication that keeps messages and conversations private to the conversation participants. As a user, this is a pretty darn important feature.

### Improve messaging auto-refresh
In order to automatically see what another user has sent without refreshing the screen manually, I implemented an automatic refresh every 20 seconds on the conversation view. This is annoying if you're in the middle of typing a long message when the refresh happens. Instead, I would use javascript to re-render the messages section of the page and increase the refresh rate. This would mean adding a GET /conversation/:id/messages endpoint as well as adding javascript.

### Add form validation
Due to time constraints, I only coded for a happy path on the front-end. I added model-level validations to prevent us from seeing PG-level validation errors during record saves, but you can still submit an empty message and see the exception that is raised in the back-end. A better user design would be to display the validation errors on the form itself and let the user try again.

### Add tests
Due to time constraints, I abandoned TDD and spiked out the functionality by loading the various views in my browser. There isn't much to test in the models currently, and the most interesting cases are in the controllers and views. Given more time, I would add controller-level testing and cucumber tests to mimic the manual testing I was doing while developing the initial version of the features.

### Add other linters
To help build quality software, I usually add rubocop, brakeman, and other code analyzers to a project.

### Make views easier to read
The views are probably difficult to parse through at the moment. I would break some of them down in the partials, extract out some view helpers, and play with other formatting options to make them easier to read.
