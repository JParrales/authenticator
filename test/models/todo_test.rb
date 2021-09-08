# == Schema Information
#
# Table name: todos
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  due_date    :datetime
#  priority    :integer
#
require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  test "title should no be empty" do
    todo = Todo.new
    todo.save
    # assert_not todo.persisted?
    #puts todo.errors.full_messages
    assert todo.errors.any?, "No encontramos errores"
  end

  test "title should be saved if tite is present" do
    todo = Todo.new
    todo.title = "Hola mundo"
    todo.save
    assert todo.persisted?
  end
end
