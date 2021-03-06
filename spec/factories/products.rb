FactoryBot.define do
  factory :product do
    name               { "test" }
    explain            { "test" }
    condition_id       { 1 }
    costburden_id      { 1 }
    shippingorigin_id  { 1 }
    shippingperiod_id  { 1 }
    price              { 500 }
    seller             { create(:seller, nickname: Faker::Name.name, email: Faker::Internet.email) }
    buyer              { create(:buyer,  nickname: Faker::Name.name, email: Faker::Internet.email) }
    category
    brand

    before(:create) do |product|
      product.images << create(:image)
    end
  end

  factory :redshirt, class: Product do
    name               { "redshirt" }
    explain            { "test" }
    condition_id       { 1 }
    costburden_id      { 1 }
    shippingorigin_id  { 1 }
    shippingperiod_id  { 1 }
    price              { 2500 }
    seller
    buyer
    category
    brand

    before(:create) do |product|
      product.images << create(:image)
    end
  end

  factory :blueshirt, class: Product do
    name               { "blueshirt" }
    explain            { "test" }
    condition_id       { 1 }
    costburden_id      { 1 }
    shippingorigin_id  { 1 }
    shippingperiod_id  { 1 }
    price              { 1500 }
    seller
    buyer
    category
    brand

    before(:create) do |product|
      product.images << create(:image)
    end
  end
end
