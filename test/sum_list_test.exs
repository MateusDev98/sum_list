defmodule SumListTest do
  use ExUnit.Case

  describe("call/1") do
    test "sum of empty list is 0" do
      list = []

      response = SumList.call(list)

      exepected_response = 0

      assert response == exepected_response
    end

    test "sum of [1, 2, 3] is 6" do
      list = [1, 2, 3]

      response = SumList.call(list)

      exepected_response = 6

      assert response == exepected_response
    end

    test "sum of [1, 2, 3, 4, 5] is 15" do
      list = [1, 2, 3, 4, 5]

      response = SumList.call(list)

      exepected_response = 15

      assert response == exepected_response
    end
  end
end
