class User < ActiveRecord::Base
  include Mongoid::Document
  field :first_name
  field :last_name
  # t.string   "email",                                 :default => "", :null => false
  # t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
  # t.string   "reset_password_token"
  # t.datetime "reset_password_sent_at"
  # t.datetime "remember_created_at"
  # t.integer  "sign_in_count",                         :default => 0
  # t.datetime "current_sign_in_at"
  # t.datetime "last_sign_in_at"
  # t.string   "current_sign_in_ip"
  # t.string   "last_sign_in_ip"
  # t.datetime "created_at"
  # t.datetime "updated_at"
  # t.string   "first_name"
  # t.string   "last_name"


  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name

  has_many :comments

  def name
    "#{first_name} #{last_name}".strip
  end

end
