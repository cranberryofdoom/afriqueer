
class Post < ActiveRecord::Base

before_save :compile_content


	def compile_content
		self.html_content = BlueCloth.new(self.markdown_content).to_html 
	end 
	def compile_content!
		self.html_content = BlueCloth.new(self.markdown_content).to_html 
		self.save
	end

end
