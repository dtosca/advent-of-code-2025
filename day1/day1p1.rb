

$position = 50
$pw = 0
lines = File.readlines("input.txt")

def rotateRight(startingPosition, rotationAmount)
  newPosition = startingPosition + rotationAmount
  if newPosition > 100
    newPosition = newPosition - 100
  end
  puts "end position = "+newPosition.to_s
  $position = newPosition
  if $position == 0 or $position == 100
    $pw += 1
  end
  puts $pw
end

def rotateLeft(startingPosition, rotationAmount)
  newPosition = startingPosition - rotationAmount
  if newPosition < 0
    newPosition = newPosition + 100
  end
  puts "end position = "+newPosition.to_s
  $position = newPosition
  if $position == 0 or $position == 100
    $pw += 1
  end
  puts $pw
end



lines.each do |line|
  rotationNum = line.scan(/\d+/).map(&:to_i).first.to_i
  puts "original rotationNum is..."+line
  rotationNum = rotationNum % 100
  puts "rotationNum is..."+rotationNum.to_s
  if line.include? "R"
    value = rotateRight($position, rotationNum)
  elsif line.include? "L"
    value = rotateLeft($position, rotationNum)
  end

end

