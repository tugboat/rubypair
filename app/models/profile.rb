class Profile
  include Mongoid::Document

  field :interested_in_remote, type: Boolean

  embedded_in :user
end
