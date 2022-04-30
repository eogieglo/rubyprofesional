require "test_helper"

class TodoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "title should not be empty" do
    todo = Todo.new
    todo.save
    #assert_not todo.persisted?
    assert todo.errors.any?, "No encontramos errores"
  end
end
