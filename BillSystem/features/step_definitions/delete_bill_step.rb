Given("There is client named {string}") do |string|
  FactoryBot.create(:client, name: string)
end

Then("I should not see {string}") do |string|
  expect(page).not_to have_content(string)
end


When("I on {string} Bills Page") do |string|
  client = Client.find_by name: string
  visit client_bills_path(client.id)

end

When("I see note {string}") do |string|
  expect(page).to have_content(string)
end