Given("I am on list {string}") do |string|
  visit clients_path
  expect(page).to have_content("Name")

end

Given("I click on {string}") do |string|
  click_link(string)
end

When("I fill Client name with {string}") do |string|
  fill_in 'Name', with: string
end

When("I click on {string}") do |string|
  click_on string
end

Then("I should see the page of {string}") do |string|
  expect(page).to have_content(string)
end

When("I leave name blank") do
  fill_in 'Name', with: ""
end

Then("I should see an error message") do
  expect(page).to have_content("error")
end

Given("I am on page of {string}") do |string|
  expect(page).to have_content(string)
end

Given("i see {string} on the page") do |string|
  expect(page).to have_content(string)
end

When("I confirm the popup") do
  click_on "ok"
end

Then("I am on the page of {string}") do |string|
  expect(page).to have_content(string)
end

Then("I should not see {string} on the page of {string}") do |string, string2|
  expect(page).to have_content(string)
end

Then("I am on the page {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should not see {string}Clients") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I change the {string} to {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I view a name {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end