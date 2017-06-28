def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, n=2)
	rep = str
	(n-1).times do
		rep += " " + str
	end
	rep
end

def start_of_word(word, n)
    n = n-1
    word[0..n]
end

def first_word(phrase)
	words = phrase.split(' ')
	words[0]
end

def titleize(title)
	words = title.split(' ')
	twords = []
    words.each do |w|
        if w == 'and' || w == 'over' || w == 'the'
        	twords.push(w)
        else
        	twords.push(w.capitalize)
        end
    end
    twords[0] = twords[0].capitalize
	title = twords.join(' ')
	
end
