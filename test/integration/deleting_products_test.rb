require 'test_helper'

class DeletingProductsTest < ActionDispatch::IntegrationTest
  def setup
    @product = Product.create!(name: 'Ruby')
  end

  test 'delete products' do
    delete "/products/#{@product.id}"

    assert_equal 204, response.status
  end
end
