class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :name, presence: {message: "Toto pole nemuze byt prazdne"}
  validates :username, presence: {message: "Toto pole nemuze byt prazdne"}, length: 3..20,
            uniqueness: {message: "Toto uzivatelske jmeno jiz existuje"}
  validates :age, presence: {message: "Toto pole nemuze byt prazdne"}, length:1..2,
            format: {with: /\A(\d[8-9])|\A([2-9]\d)/, message: "Vek musi byt v rozmezi 18 - 99 let"}
  validates :description, presence: {message: "Toto pole nemuze byt prazdne."}, length: 1..500
  validates :city, presence: {message: "Toto pole nemuze byt prazdne"}
  validates :phone, presence: {message: "Toto pole nemuze byt prazdne"}, format: {with: /\A([+][4][2][0]([6]|[7])
            (\d{8}))|([6]|[7])(\d{8})/, message: "Spatny format telefonniho cisla. Spravny format je +420(7/6)xxxxxxxx
             nebo (7/6)xxxxxxxx "}
  validates :email, presence: {message: "Toto pole nemuze byt prazdne"},
            format: {with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+(\w{2,3})\z/i, message: "Neplatny email"}
  devise :database_authenticatable, :registerable,:authentication_keys => [:username]
  mount_uploader :image, ImageUploader

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
