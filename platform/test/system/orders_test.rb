require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
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

    fill_in "Client", with: @order.client
    fill_in "Comment", with: @order.comment
    fill_in "Date order", with: @order.date_order
    fill_in "Employee", with: @order.employee
    fill_in "Order", with: @order.order_id
    fill_in "Price", with: @order.price
    fill_in "Service", with: @order.service
    fill_in "Status", with: @order.status
    fill_in "Urgency", with: @order.urgency
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "should update Order" do
    visit order_url(@order)
    click_on "Edit this order", match: :first

    fill_in "Client", with: @order.client
    fill_in "Comment", with: @order.comment
    fill_in "Date order", with: @order.date_order
    fill_in "Employee", with: @order.employee
    fill_in "Order", with: @order.order_id
    fill_in "Price", with: @order.price
    fill_in "Service", with: @order.service
    fill_in "Status", with: @order.status
    fill_in "Urgency", with: @order.urgency
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "should destroy Order" do
    visit order_url(@order)
    click_on "Destroy this order", match: :first

    assert_text "Order was successfully destroyed"
  end
end
