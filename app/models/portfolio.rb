class Portfolio < ApplicationRecord
  include Placeholder

  has_many :technologies
  accepts_nested_attributes_for :technologies
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
  end

  scope :rubu_on_rails_portfolio_items, ->{ where(subtitle: 'Ruby on Rails') }

end