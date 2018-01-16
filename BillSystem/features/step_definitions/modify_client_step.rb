When("I change the {string} to {string}") do |string, string2|
  fill_in 'name', with:string2
end

When("I leave name blank") do
  fill_in 'name', with:" "
end

Then("I should see {string}") do |string|
  expect(page).to have_content(string)
end
