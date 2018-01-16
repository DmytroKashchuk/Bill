When("I change the {string} houre") do |string|
	fill_in 'Hourtariff', with: 20
end

When("I leave tarif blank") do
  fill_in 'Hourtariff', with: ""
end
