require 'spec_helper'
require './lib/table_generator'

describe ".TableGenerator" do
  let(:table) { TableGenerator.new([2, 3]).show }
  let(:correct_table) do
    "  | 2 3\n"\
    "--+----\n"\
    "2 | 4 6\n"\
    "3 | 6 9\n"\
  end  
  let(:incorrect_table) do
    "  2 3 \n"\
    "      \n"\
    "2 4 6 \n"\
    "3 5 8 \n"\
  end
    
  context "#show" do
    it "shows correct multiplied prime table" do
      expect(table).to eq correct_table
    end
    it "shows correctly formated table" do
      expect(table).not_to eq incorrect_table
    end
  end
end
