
def zyanken
  zyanken_command = ["グー", "チョキ", "パー"]
  puts "じゃんけん..."
  puts "0:(グー), 1:(チョキ), 2:(パー), 3:(戦わない)"
  my_command = gets.chomp.to_i
  case my_command
  when 0,1,2 then
    your_command = zyanken_command.sample
    puts "ほいっ"
    puts "----------------------"
    puts "あなた:#{zyanken_command[my_command]}を出しました。"
    puts "相手:#{your_command}を出しました。"
    puts "----------------------"
    while your_command == zyanken_command[my_command] do
      your_command = zyanken_command.sample
      puts "あいこでっ"
      puts "0:(グー), 1:(チョキ), 2:(パー), 3:(戦わない)"
      my_command = gets.chomp.to_i
      case my_command
      when 0,1,2 then
        puts "しょっ！"
        puts "----------------------"
        puts "あなた:#{zyanken_command[my_command]}を出しました。"
        puts "相手:#{your_command}を出しました。"
        puts "----------------------"
      when 3 then
        puts "戦いません。"
        exit
      else
        puts "0:(グー), 1:(チョキ), 2:(パー), 3:(戦わない)のうちいずれかの数字を入力してください。"
        exit
      end
    end
    case my_command
    when 0 then
      if your_command == "チョキ"
        return "勝ち"
      elsif your_command == "パー"
        return "負け"
      end
    when 1 then
      if your_command == "グー"
        return "負け"
      elsif your_command == "パー"
        return "勝ち"
      end
    when 2 then
      if your_command == "グー"
        return "勝ち"
      elsif your_command == "チョキ"
        return "負け"
      end
    end
  when 3 then
    puts "戦いません。"
    exit
  else
    puts "0:(グー), 1:(チョキ), 2:(パー), 3:(戦わない)のうちいずれかの数字を入力してください。"
    exit
  end
end

def attimuitehoi(result)
  direction_command = ["上", "下", "左", "右"]
  if result == "勝ち"
    puts "あっち向いて〜"
    puts "0:(上), 1:(下), 2:(左), 3:(右)"
    finger_direction = gets.chomp.to_i
    case finger_direction
    when 0,1,2,3 then
      face_direction = direction_command.sample
      puts "ほいっ"
      puts "----------------------"
      puts "あなた:#{direction_command[finger_direction]}"
      puts "相手:#{face_direction}"
      puts "----------------------"
      if face_direction == direction_command[finger_direction]
        return "勝ち"
      else
        return "じゃんけんに戻る"
      end
    else
      puts "0:(上), 1:(下), 2:(左), 3:(右)のいずれかで入力してください。"
      exit
    end
  elsif result == "負け"
    puts "あっち向いて〜"
    puts "0:(上), 1:(下), 2:(左), 3:(右)"
    face_direction = gets.chomp.to_i
    case face_direction
    when 0,1,2,3 then
      finger_direction = direction_command.sample
      puts "ほいっ"
      puts "----------------------"
      puts "あなた:#{direction_command[face_direction]}"
      puts "相手:#{finger_direction}"
      puts "----------------------"
      if finger_direction == direction_command[face_direction]
        return "負け"
      else
        return "じゃんけんに戻る"
      end
    else
      puts "0:(上), 1:(下), 2:(左), 3:(右)のいずれかで入力してください。"
      exit
    end
  end
end

z_result = zyanken
a_result = attimuitehoi(z_result)
while a_result == "じゃんけんに戻る"
  z_result = zyanken
  a_result = attimuitehoi(z_result)
end
if z_result == "勝ち" && a_result == "勝ち"
  puts "あなたの勝ちです！"
else 
  puts "あなたの負けです...。"
end
