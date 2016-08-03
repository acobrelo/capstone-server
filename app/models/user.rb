#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_one :profile

  before_create :build_default_profile

  private

  def build_default_profile
    build_profile
    true
  end
end
