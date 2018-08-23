defmodule FlattenTest do
  use ExUnit.Case
  doctest Flatten

  test "Checked of Flatten function case1" do
    case1= []
    assert Flatten.flat(case1) == List.flatten case1
  end
  
  test "Checked of Flatten function case2" do
    case2= [1]
    assert Flatten.flat(case2) == List.flatten case2
  end

  test "Checked of Flatten function case3" do
    case3= [1, 2, 3, 4]
    assert Flatten.flat(case3) == List.flatten case3
  end

  test "Checked of Flatten function case4" do
    case4= [[1, 2, 3]]
    assert Flatten.flat(case4) == List.flatten case4
  end


  test "Checked of Flatten function case5" do
    # Until case5 is all cases of the Flatten.flat/2
    case5= [[1, 2, 3], 4, 5]
    assert Flatten.flat(case5) == List.flatten case5
  end


  test "Checked of Flatten function case6" do
    # Now there are more random cases 
    case6= [1, 2, [3], 4]
    assert Flatten.flat(case6) == List.flatten case6
  end


  test "Checked of Flatten function case7" do
    case7= [[1, 2, [3]],4]
    assert Flatten.flat(case7) == List.flatten case7
  end


  test "Checked of Flatten function case8" do
    case8= [1, 2, 3, [4]]
    assert Flatten.flat(case8) == List.flatten case8
  end


  test "Checked of Flatten function case9" do
    case9= [[1], [[[[[], [], [], [[]]]]]], [2, [[3], 4]], 5, [[[6]]], 7, 8, []]
    assert Flatten.flat(case9) == List.flatten case9
  end

  test "Checked of Flatten function case10" do
    case10= [[1], [[[[[], [], [], [[]]]]]], [2, [[3], 4]], 5, [[[6]]], 7, 8, [], [9, 10]]
    assert Flatten.flat(case10) == List.flatten case10
  end

end
