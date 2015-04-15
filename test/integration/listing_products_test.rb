require 'test_helper'

class ListingProductsTest < ActionDispatch::IntegrationTest

  def setup
    Product.create!(name: 'Ruby', price: 100)
    Product.create!(name: 'Opal', price: 250)
  end

  test 'listing products' do
    get '/products'

    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type

    assert_equal Product.count, json(response.body).size
  end

  test 'list top priced products' do
    get '/products?price=250'

    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type

    assert_equal 1, json(response.body).size
  end
end
