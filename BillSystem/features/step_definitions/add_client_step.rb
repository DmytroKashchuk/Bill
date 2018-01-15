Given("I am on {string} page") do |string|
  visit clients_path
end

When("I click on {string}") do |string|
  click_on string
end

When("I fill in the client name {string}") do |string|
  fill_in 'Name', with: string
  fill_in 'Surename', with: "Dima"
  fill_in 'Fiscalcode', with: "dfdfdsfs"
  fill_in 'Hourtariff', with: 12

end

Then("I should see the client {string} in the list") do |string|
  visit clients_path
  expect(page).to have_content(string)
end

Then("I should see an error") do
expect(page).to have_css('#error_explanation')
end

When("I fill in the invalid client name {string}") do |string|
  fill_in 'Name', with: ''
end
 