module ActionView
	class PathSet		
		def find_all(*args)
			@cache ||= {}
			call_parent = false
			
			if args[1].is_a? String and args[1] =~ /^parent:/
				call_parent = true
				args[1] = args[1].gsub(/^parent:/, '')
			end

			if @cache.has_key? args.hash and call_parent
				list = @cache[args.hash] 
			else
	      list = map do |resolver|
	        templates = resolver.find_all(*args)        
	      end.reject {|templates| templates.empty? }
				@cache[args.hash] = list
			end
			list.empty? ? [] : list.shift
    end
	end
end