def reverse_sentance(sentance)
  reversed = ""
  sentance.split.each {|word| reversed.prepend "#{word} " }

  #can link all of these calls
  reversed.gsub! ".", ""
  reversed[-1] = "."
  reversed.downcase!.capitalize!
end

def reverse_paragraph(paragraph)
  reversed = ""
  sentances = paragraph.split ". "
  sentances.each do |sentance|
    reversed.prepend "#{reverse_sentance(sentance)} "
  end

  reversed[-1] = ""
  reversed
end


p "Today you see to nice is it." == reverse_sentance("It is nice to see you today.")
p reverse_sentance("It is nice to see you today.")
p "Day nice a have. Today you see to nice is it." == reverse_paragraph("It is nice to see you today. Have a nice day.")
p reverse_paragraph("It is nice to see you today. Have a nice day.")
