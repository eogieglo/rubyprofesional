require "test_helper"

class TodoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "title should not be empty" do
    todo = Todo.new
    todo.save
    puts todo.errors.full_messages
    #assert_not todo.persisted?
    assert todo.errors.any?, "No encontramos errores"
  end

  test "todo should be saved if title is present" do
    todo = Todo.new
    todo.title = "Hola mundo"
    todo.save
    puts todo.errors.full_messages
    #assert_not todo.persisted?
    assert todo.persisted?
  end
end
