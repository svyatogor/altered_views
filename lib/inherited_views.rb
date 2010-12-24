require "inherited_views/path_set_extension"

module InheriteddViews
	def inherit_view(name, &block)
		content = capture {render(:template => name) }
		@doc = Nokogiri::HTML content
		yield
		raw @doc.css("body > *").to_s
	end	

private	
	def content(selector, &block)
		find_node(selector).each {|node| node.inner_html = capture(&block)}
		""
	end

	def before(selector, &block)
		find_node(selector).each {|node| node.before capture(&block)}
		""
	end

	def after(selector, &block)
		find_node(selector).each {|node| node.after capture(&block)}
		""
	end	

	def append(selector, &block)
		find_node(selector).each {|node| node.add_child capture(&block)}
		""
	end		

	def prepend(selector, &block)
		find_node(selector).each do |node| 
			c = node.children; 
			node.inner_html = capture(&block); node.add_child c
		end
		""
	end	

	def find_node(selector)
		els = @doc.css selector
		if els.empty?
			raise "Selector \"#{selector}\" not found in the view."
		else
			return els
		end
	end
end

ActionController::Base.send :add_template_helper, InheriteddViews