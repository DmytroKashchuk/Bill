Given("there is a list of clients") do
  visit clients_path
end

Given("I am viewing the list of clients") do
  expect(page).to have_content("You are in BillingSysytem")
end

When("I click on {string}") do |string|
  click_on 'New client'
  expect(page).to have_content("New Client")
end

When("I insert the name {string}") do |string|
  @c = Client.new()
  @c.name = "Mario"
end

Then("I am on the page of clients") do
  visit clients_path
end

Then("there is a new client with name {string}") do |string|
  expect(page).to have_content("Mario")
end

When("I insert the surname {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("there is a new client with surname {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
