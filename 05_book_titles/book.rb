class Book
  def initialize(title=nil)
  	@title = title
  end
  
  def title=(new_title)
  	words = new_title.split(' ')
	twords = []
    words.each do |w|
        if w == 'and' || w == 'over' || w == 'the' || w == 'in' || w == 'of' || w == 'a' || w == 'an'
        	twords.push(w)
        else
        	twords.push(w.capitalize)
        end
    end
    twords[0] = twords[0].capitalize
	@title = twords.join(' ')
	
  end

  def title
  	@title
  end
end
