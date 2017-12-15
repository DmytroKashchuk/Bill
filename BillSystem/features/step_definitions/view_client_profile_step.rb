Then("I view a name") do
  @client = FactoryBot.create(:client)
  visit client_path(@client)
  expect(page).to have_content(@client.name)
end

Then("I view a surname") do
  expect(page).to have_content(@client.surname)
end

Then("I view a fiscalcode") do
  expect(page).to have_content(@client.fiscalcode)
end

Then("I view a Hourtariff") do
  expect(page).to have_content(@client.Hourtariff)
end

Then("I view a Note") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I view a Date") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I view a Totalhour") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I view a totalEuro") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I view a Earn") do
  pending # Write code here that turns the phrase above into concrete actions
end
