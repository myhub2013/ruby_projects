class CartesianProduct
  include Enumerable
  def initialize(arr1, arr2)
    @arr1 = arr1
    @arr2 = arr2
  end
  def each
    @arr1.each do |a|
      @arr2.each do |b|
        yield [a, b]
      end
    end
  end
end

c = CartesianProduct.new([:a,:b], [4,5])
c.each { |elt| puts elt.inspect }
# [:a, 4]
# [:a, 5]
# [:b, 4]
# [:b, 5]

c = CartesianProduct.new([:a,:b], [])
c.each { |elt| puts elt.inspect }
# Nothing printed since Cartesian product of anything with an empty collection is empty