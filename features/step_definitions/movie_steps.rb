Given(/^the following movies exist:$/) do |table|
    table.hashes.each do |movie|
        Movie.create! movie
    end
  # table is a Cucumber::Ast::Table
  #pending # express the regexp above with the code you wish you had
end

Then(/^the director of "(.*?)" should be "(.*?)"$/) do |title, director|
   @movie = Movie.find_by_title(title)
   @movie.director.should == director
  #pending # express the regexp above with the code you wish you had
end