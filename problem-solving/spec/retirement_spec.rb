require "rspec"
require "../lib/retirement"

RSpec.describe Retirement do

  it 'can tell me when I should retire' do
    retire = Retirement.new

    result = retire.calculate(25, 65)
    expected = "You have 40 years left until you can retire. It is 2022, so you can retire in 2062."

    expect(result).to eq(expected)
  end

  it 'tells me when to retire with different ages' do
    retire = Retirement.new

    result = retire.calculate(39, 70)
    expected = "You have 31 years left until you can retire. It is 2022, so you can retire in 2053."

    expect(result).to eq(expected)
  end

  it 'errors with a negative age' do
    retire = Retirement.new

    result = retire.calculate(-25, 65)
    expected = "Error. Age cannot be negative."

    expect(result).to eq(expected)
  end

  it 'errors with a negative retirement age' do
    retire = Retirement.new

    result = retire.calculate(64, 15)
    expected = "Error. Retirment age cannot be less than current age."

    expect(result).to eq(expected)
  end
end
