# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
TweetPost.destroy_all

TweetPost.create(body: "I learned how to build an ORM and use a database with a mix of SQL and Ruby")
TweetPost.create(body: "Now I know how to build a full stack application using Rails for backend and React for the frontend")
TweetPost.create(body: "Today I am learning how to deploy an application to the web")
