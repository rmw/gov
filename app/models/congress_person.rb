class CongressPerson < ActiveRecord::Base
	has_many :article_congress_people
	has_many :articles, through: :article_congress_people
	belongs_to :state

	def is_republican?
		if self.party == "R"
			true
		end
	end

	def is_democrat?
		if self.party = "D"
			true
		end
	end

	def is_independent?
		if self.party = "I"
			true
		end
	end

end
