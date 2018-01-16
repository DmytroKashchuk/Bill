FactoryBot.define do
  factory :book do
    note 'KPI'
    date Date.new(2001,2,3) 
    totalHour 1955
    totalEuro 25
    client
  end
end