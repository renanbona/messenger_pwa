FactoryBot.define do
  factory :message do
    content { 'MyText' }
    sender
    receiver
  end
end
