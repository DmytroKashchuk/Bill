Given("there is a list of clients") do
  visit clients_path
end

Given("I am viewing the list of clients") do
  expect(page).to have_content("You are in BillingSysytem")
end

When("I click on {string}") do |string|
  click_on string
  expect(page).to have_content("New Client")
end

When("I insert the name {string}") do |string|
  @client = FactoryBot.create(:Client)
  @client.name = string
end

Then("I am on the page of clients") do
  visit clients_path
end

Then("there is a new client with name {string}") do |string|
  expect(page).to have_content(@client.name)
end

When("I insert the surname {string}") do |string|
  @client.surname = string
end

Then("there is a new client with surname {string}") do |string|
  expect(page).to have_content(@client.surname)
end
