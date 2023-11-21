class String
  def adress?
    self =~ /^((25[0-5]|(2[0-4]|1\d|[1-9]|)\d)\.?\b){4}$/
  end
end

if __FILE__ == $0
  loop do
    puts "Enter string or 'exit'"
    text = gets.chomp
    break if text == "exit"
    puts "Result:"
    if text.adress?
      puts "Its ipv4 adress"
    else
      puts "Its not ipv4 adress"
    end
  end
end