require "pascals_triangle"

describe Triangle do

  describe "#print_triangle" do

    context "generating triangle when number of rows is 1" do
      it "returns triangle with one row" do
        triangle = Triangle.new(1)
        expect(triangle.print_triangle).to eql([1])
      end
    end

    context "generating triangle when number of rows is 2" do
      it "returns triangle with two rows" do
        triangle = Triangle.new(2)
        expect(triangle.print_triangle).to eql([[1], [1, 1]])
      end
    end

    context "generating triangle when number of rows is 3" do
      it "returns triangle with three rows" do
        triangle = Triangle.new(3)
        expect(triangle.print_triangle).to eql([[1], [1, 1], [1, 2, 1]])
      end
    end

    context "generating triangle when number of rows is 5" do
      it "returns triangle with five rows" do
        triangle = Triangle.new(5)
        expect(triangle.print_triangle).to eql([[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]])
      end
    end

    context "generating fifth row only" do
      it "returns fifth row" do
        triangle = Triangle.new(5)
        expect(triangle.print_triangle.last).to eql([1, 4, 6, 4, 1])
      end
    end

    context "generating sixth row only" do
      it "returns sixth row" do
        triangle = Triangle.new(6)
        expect(triangle.print_triangle.last).to eql([1, 5, 10, 10, 5, 1])
      end
    end

  end

end
