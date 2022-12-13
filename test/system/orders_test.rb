require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  include ActiveJob::TestHelper

  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "should create order" do
    visit orders_url
    click_on "New order"

    fill_in "Address", with: @order.address
    fill_in "Email", with: @order.email
    fill_in "Name", with: @order.name
    fill_in "Pay type", with: @order.pay_type
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "should update Order" do
    visit order_url(@order)
    click_on "Edit this order", match: :first

    fill_in "Address", with: @order.address
    fill_in "Email", with: @order.email
    fill_in "Name", with: @order.name
    fill_in "Pay type", with: @order.pay_type
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "should destroy Order" do
    visit order_url(@order)
    click_on "Destroy this order", match: :first

    assert_text "Order was successfully destroyed"
  end

  test "check routing number" do
    LineItem.delete_all
    Order.delete_all

    visit store_index_url

    click_on 'Add to Cart', match: :first
    
    click_on 'Checkout'

    visit order_index_url

    fill_in 'order_name', with: 'Dave Thomas'
    fill_in 'order_address', with: '123 Main'
    fill_in 'order_email', with: 'yorkgood@gmail.com'

    assert_no_selector "#order_routing_number"

    select 'Check', from: 'Pay type'

    assert_selector "#order_routing_number"

    fill_in "Routing #", with: "123456"
    fill_in "Account #", with: "987654"

    perform_enqueued_jobs do
      click_button "Place Order"
    end

    orders = Order.all
    assert_equal 1, orders.size

    order = orders.first

    assert_equal "Andrii Thomas", order.name
    assert_equal "123 Main Street", order.address
    assert_equal "yorkgood@gmail.com", order.email
    assert_equal "Check", order.pay_type

    assert_equal 1, order.line_items.size

    mail = ActionMailer::Base.deliveries.last
    assert_equal ["yorkgood6@gmail.com"], mail.to
    assert_equal 'Vegetables Shop <yorkgood4@gmail.com>', mail[:from].value
    assert_equal 'Vegetables Store Order Confirmation', mail.subject
  end


end

