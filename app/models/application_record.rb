class ApplicationRecord < ActiveRecord::Base
  include PgSearch::Model

  pg_search_scope :search_full_text,
  against: {
      username: 'A',
      description: 'B',
      id: 'C',
  },
  using: {
      tsearch: {
          prefix: true,
          dictionary: "spanish"
      }
  }
  
  primary_abstract_class

end
