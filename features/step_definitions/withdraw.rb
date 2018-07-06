Given("that I am on the home page") do
  visit '/'
end

Then("I should see {string}") do |string|
  expect(response_body).to match(Regexp.new(Regexp.escape(string)))
end
