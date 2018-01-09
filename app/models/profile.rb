class Profile < ApplicationRecord
  belongs_to :user
  has_many :articles, dependent: :destroy
  has_many :donations, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :askforrdvs, dependent: :destroy
  has_many :messages, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end

