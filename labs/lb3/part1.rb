#V2
BoolA, BoolB, BoolC  = true, true, false
RealX, RealY, RealZ = 12.0, 3.0, -2.0

puts "A = #{BoolA}, B = #{BoolB}, C = #{BoolC}"
puts "X = #{RealX}, Y = #{RealY}, Z = #{RealZ}\n\n"

puts "Task 1"
#a)
res = !(BoolA || BoolB) && (BoolA || !BoolB)
puts "a) ¬(A ∨ B) ∧ (A ∧ ¬B) = #{res}"

#b)
res = ((RealZ != RealY) ? 1 : 0) <= ((6 >= RealY) ? 1 : 0) && BoolA || BoolB && BoolC && RealX >= 1.5
puts "b) (Z ≠ Y) ⩽ (6 ⩾ Y) ∧ A ∨ B ∧ C ∧ X ⩾ 1.5 = #{res}"

#c)
res = (8 - RealX * 2 <= RealZ) && (RealX ** 2 <= RealY ** 2) || (RealZ >= 15)
puts "c) (8 - X * 2 ⩽ Z) ∧ (X^2 ⩾ Y^2) ∨ (Z ⩾ 15) = #{res}"

#d)
res = RealX > 0 && RealY < 0 || RealZ >= (RealX*RealY - RealY / RealX) - (-RealZ)
puts "d) X > 0 ∧ Y < 0 ∨ Z ⩾ (X*Y - Y/X) - (-Z) = #{res}"

#e)
res = !(BoolA || BoolB && !(BoolC || (!BoolA || BoolB)))
puts "e) ¬(A ∨ B ∧ ¬(C ∨ (¬A ∨ B)) = #{res}"

#f)
res = RealX ** 2 + RealY ** 2 >= 1 && RealX >= 0 && RealY >= 0
puts "f) X^2 + Y^2 ⩾ 1 ∧ X ⩾ 0 ∧ Y ⩾ 0 = #{res}"

#g)
res = (BoolA && (BoolC && BoolB != BoolB || BoolA) || BoolC) && BoolB
puts "g) A ∧ (C ∧ B <> B ∨ A) ∨ C) ∧ B = #{res}"

puts "\nTask 2"
IntX = 4
BoolP = false
puts "x = #{IntX}; P = #{BoolP}"
res = Math.log(IntX) < IntX && !BoolP && (Math.sqrt(IntX) > IntX*IntX) || (2*IntX == IntX)
puts "ln(x) < x и не P и (sqrt(x) > x*x) или (2*x=x) = #{res}"