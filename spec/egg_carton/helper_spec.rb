require 'spec_helper'

class Test
  include EggCarton::Helper
end

module EggCarton

  describe "Helper" do
    let(:test) { Test.new }

    describe "#average" do
      it "should return 4" do
        test.average(40, 10).should == 4
      end

      it "should return 4.0" do
        test.average(40, 10, 1).should == 4.0
      end

      it "should return 0 if denominator is 0" do
        test.average(10, 0).should == 0
      end
    end

    describe "#conversion" do
      it "should return 20%" do
        test.conversion(2, 4).should == "50%"
      end

      it "should return 20.0%" do
        test.conversion(2, 4, 1).should == "50.0%"
      end

      it "should return 0 if denominator is 0" do
        test.conversion(10, 0).should == 0
      end

      it "should not calculate percentage" do
        test.conversion(2, 4, 4, :percentage => false).should_not include("%")
      end
    end
  end

end