require 'roman_numerals_converter'

describe RomanNumeralsConverter do
  subject(:roman) { described_class.new }

  context 'Understando one algarism' do

    it 'must understand the symbol I' do
      number = roman.convert('I')
      expect(number).to eq(1)
    end

    it 'must understand the symbol V' do
      number = roman.convert('V')
      expect(number).to eq(5)
    end

    it 'must understand the symbol X' do
      number = roman.convert('X')
      expect(number).to eq(10)
    end

    it 'must understand the symbol L' do
      number = roman.convert('L')
      expect(number).to eq(50)
    end

    it 'must understand the symbol C' do
      number = roman.convert('C')
      expect(number).to eq(100)
    end

    it 'must understand the symbol D' do
      number = roman.convert('D')
      expect(number).to eq(500)
    end

    it 'must understand the symbol M' do
      number = roman.convert('M')
      expect(number).to eq(1000)
    end
  end

  context 'Understands more than one digit with the same or greater value' do
    it 'must understand the symbol II' do
      number = roman.convert('II')
      expect(number).to eq(2)
    end

    it 'must understand the symbol LL' do
      number = roman.convert('LL')
      expect(number).to eq(100)
    end

    it 'must understand the symbol MM' do
      number = roman.convert('MM')
      expect(number).to eq(2000)
    end
  end

  context 'Understands four symbols two by two' do
    it 'must understand the symbol XXII' do
      number = roman.convert('XXII')
      expect(number).to eq(22)
    end

    it 'must understand the symbol MDLX' do
      number = roman.convert('MDLX')
      expect(number).to eq(1560)
    end

    it 'must understand the symbol DCXV' do
      number = roman.convert('DCXV')
      expect(number).to eq(615)
    end
  end

  context 'Understands more than one digit with the same or lesser value' do
    it 'must understand the symbol IX' do
      number = roman.convert('IX')
      expect(number).to eq(9)
    end

    it 'must understand the symbol VL' do
      number = roman.convert('VL')
      expect(number).to eq(45)
    end

    it 'must understand the symbol DM' do
      number = roman.convert('DM')
      expect(number).to eq(500)
    end
  end

  context 'Understand complex Roman numbers' do
    it 'must understand the symbol XXIV' do
      number = roman.convert('XXIV')
      expect(number).to eq(24)
    end

    it 'must understand the symbol MCMXCIX' do
      number = roman.convert('MCMXCIX')
      expect(number).to eq(1999)
    end

    it 'must understand the symbol MMCCDL' do
      number = roman.convert('MMCCDL')
      expect(number).to eq(2550)
    end
  end
end