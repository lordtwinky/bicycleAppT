class SearchSuggestion < ActiveRecord::Base
  attr_accessible :popularity, :term
  
  def self.terms_for(prefix)
    Rails.cache.fetch(["search-terms", prefix]) do
      suggestions = where("term like ?", "#{prefix}_%")
      suggestions.order("popularity desc").limit(10).pluck(:term)
    end
  end
  
  def self.index_bicycles
    Bicycle.find_each do |bicycle|
      index_term(bicycle.modelName)
    end
  end
  
  def self.index_term(term)
    where(term: term.downcase).first_or_initialize.tap do |suggestion|
      suggestion.increment! :popularity
    end
  end
end