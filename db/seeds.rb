# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

[
  {
    body: "Power concedes nothing without a demand. It never did and it never will.",
    author: "Frederick Douglass",
    order: 1
  },
  {
    body: "The way to right wrongs is to turn the light of truth upon them.",
    author: "Ida B. Wells",
    order: 2
  },
  {
    body: "I am sick and tired of being sick and tired.",
    author: "Fannie Lou Hamer",
    context: "From one of her most famous speeches in 1964 which she gave at " +
      "a church in Harlem. In that speech, she described the injustices and " +
      "violence faced during her attempts to vote. The quote is on her tombstone.",
    order: 3
  },
  {
    body: "Injustice anywhere is a threat to justice everywhere.",
    author: "Martin Luther King Jr.",
    context: "From “Letter from Birmingham Jail,” which he wrote in 1963 " +
      "after being arrested for nonviolent demonstrations against segregation.",
    order: 4
  },
  {
    body: "To deny people their human rights is to challenge their very humanity.",
    author: "Nelson Mandela",
    order: 5
  },
  {
    body: "Activism works. So what I’m telling you to do now, is to act. " +
      "Because no one is too small to make a difference.",
    author: "Greta Thunberg",
    order: 6
  },
  {
    body: "You can only protect your liberties in this world by protecting " +
      "the other man's freedom. You can only be free if I am free.",
    author: "Clarence Darrow",
    order: 7
  },
  {
    body: "There's an old saying in Tennessee — I know it's in Texas, " +
      "probably in Tennessee — that says, fool me once, shame on — shame on " +
      "you. Fool me — you can't get fooled again.",
    author: "George W. Bush",
    order: 8
  },
  {
    body: "*liberal tears commence*",
    author: "Lauren Bobert",
    context: "Tweeting about a photo showing herself and other elected " +
      "Republicans fetishizing impracticaly large assault weapons.",
    order: 9
  },
  {
    body: "You must be the change you wish to see in the world.",
    author: "Mahatma Gandhi",
    order: 10
  },
  {
    body: "The only thing we have to fear is fear itself.",
    author: "Franklin D. Roosevelt",
    order: 11
  },
  {
    body: "I love California, I practically grew up in Phoenix.",
    author: "Dan Quayle",
    order: 12
  }
].each do |quote_attrs|
  Quote.find_or_initialize_by(order: quote_attrs[:order]).update!(quote_attrs)
end
