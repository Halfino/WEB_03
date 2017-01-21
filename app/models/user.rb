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
  validates :phone, presence: {message: "Toto pole nemuze byt prazdne"},
            format: {with: /(\A([+][4][2][0](([6][0][1-8])|([7][2-5]{7}))([0-9]{6}))$)|(\A((([6][0])|([7][2-5]))([0-9]{7})$))/x,
                     message: "Spatny format telefonniho cisla. Mozno pouzit pouze ceske mobilni cislo.
                    Spravny format je (+420)tel.c."}
  validates :email, presence: {message: "Toto pole nemuze byt prazdne"},length: 1..254,
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
