FactoryBot.define do
  factory :bill do
    note 'KPI'
    Data Date.new(2001,2,3) 
    totalHour 1955
    totalEuro 25
    client
  end
end