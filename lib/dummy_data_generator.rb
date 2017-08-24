require 'faker'
require_relative '../app'

class DummyDataGenerator
  def self.generate
    cohort_names = %w(Alpha Beta Delta Gamma Epsilon Zeta Eta Theta Iota)

    cohort_ids = cohort_names.map do |name|
      Cohort.create(:name => name)[:id]
    end

    200.times do
      Student.create :first_name => Faker::Name.first_name,
                     :last_name  => Faker::Name.last_name,
                     :email      => Faker::Internet.email,
                     :birthdate  => Date.today - rand(15..40)*365,
                     :gender     => ['m', 'f'].sample,
                     :cohort_id  => cohort_ids.sample
    end
  end
end