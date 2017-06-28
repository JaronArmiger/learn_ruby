def translate(eng)
	words = eng.split(' ')
	words.map! { |w|
		
		
		if w[0] =~ /[aeiou]/
			w += 'ay'
			
		elsif w[0] =~ /[bcdfghjklmnprstvwy]/ && w[1] =~ /[aeiou]/
			w += w[0] + 'ay'
			w[0] = ''
			w
			#w[0] = ''
			#puts w
	        

	    elsif w[0] =~ /[bcdfghjklmnpqrstvwy]/ && w[1] =~ /[bcdfghjklmnprstvwy]/ && w[2] =~ /[aeiou]/
	    	w += w[0..1] + 'ay'
	    	w[0..1] = ''
	    	w
	    elsif w[0] =~ /[bcdfghjklmnpqrstvwy]/ && w[1] =~ /[bcdfghjklmnprstvwy]/ && w[2] =~ /[bcdfghjklmnpqrstvwy]/
		    w += w[0..2] + 'ay'
	    	w[0..2] = ''
	    	w
	    elsif w =~ /qu/
	    	u = w.index('u')
	    	w += w[0..u] + 'ay'
	    	w[0..u] = ''
	    	w
	    	
		end
		
	}
	words.join(' ')
	
end

#translate('square')



