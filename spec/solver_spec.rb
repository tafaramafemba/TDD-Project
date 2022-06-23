require_relative 'spec_helper'

RSpec.describe Solver do
  # context 'checks to make sure that Solver is initialized' do

  # end
  context 'Testing the factorial method' do
    it 'Checks that the factorial method can receive a value' do
      mock = double('solver')
      allow(mock).to receive(:factorial).with(0)

      solver = Solver.new
      solver.factorial(1)
    end

    it 'Checks that the factorial method only works with positive numbers including 0' do
      solver = Solver.new
      expect(solver.factorial(-1)).to eql 'invalid number'
    end

    it 'Checks that the factorial method identifies 0 as an argument and returns 1' do
      solver = Solver.new
      expect(solver.factorial(0)).to eql 1
    end

    it 'Checks that the factorial method returns the correct factorial' do
      solver = Solver.new
      expect(solver.factorial(2)).to eql 2
    end
  end

  context 'Testing reverse method' do
    it 'Checks that the reverse method can receive a value' do
      mock = double('solver')
      allow(mock).to receive(:reverse).with('hello')

      solver = Solver.new
      solver.reverse('Tafara')
    end

    it 'Checks that the reverse method returns a reversed string' do
      solver = Solver.new
      expect(solver.reverse('tafara')).to eql('arafat')
    end
  end

  context 'Testing the fizzbuzz method' do
    it 'Checks that the fizzbuzz method can receive a value' do
      mock = double('solver')
      allow(mock).to receive(:fizzbuzz).with(8)

      solver = Solver.new
      solver.fizzbuzz(10)
    end

    it 'returns "Fizz" for multiples of 3' do
      solver = Solver.new
      expect(solver.fizzbuzz(3)).to eq('Fizz')
    end

    it 'returns "Buzz" for multiples of 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(5)).to eq('Buzz')
    end

    it 'returns "FizzBuzz" for multiples of 3 and 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(15)).to eq('FizzBuzz')
    end

    it 'returns the number coherced to string for non-multiples of 3 or 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(1)).to eq('1')
    end
  end
end
