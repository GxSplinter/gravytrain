class Provider < ActiveRecord::Base
  validates_acceptance_of :accepted_terms,
  allow_nil: false,
  accept: true
end
