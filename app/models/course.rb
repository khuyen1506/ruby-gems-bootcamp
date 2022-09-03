class Course < ApplicationRecord
  # them gem friendly_id, sua name thanh title
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, :short_description, :language, :level, :price,  presence: true
  validates :description, presence: true, length: { :minimum => 5 }

  # tao moi quan he 1 course co nhieu user
  belongs_to :user

  def to_s
    title
  end

  LANGUAGES = [:"English",:"Polish",:"Russian"]
  def self.languages
    LANGUAGES.map { |language| [language, language]}
  end

  LEVELS = [:"Beginner",:"Imediate",:"Advanced"]
  def self.levels
    LEVELS.map { |level|[level, level]}
  end 
  # tao form rich text action
  has_rich_text :description

  #  them gem public 
  include PublicActivity::Model
  tracked owner: Proc.new{|controller, model| controller.current_user}
end
