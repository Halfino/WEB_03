# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

articleList = [["Hlídání dětí", "Vítejte na portále 'Hlídání dětí', jenž je míněn jako rozcestník pro rodiče, jenž
                potřebují pohlídat děti jak krátkodobě, tak i v dlouhodobém horizontu. Náš portál slouží pouze jako
                rozcestník, komunikujete tedy rovnou s osobou, jež Vám pro hlídání vašich dětí bude vyhovovat jak po
                osobní tak finanční stránce. Nikomu nic nenařizujeme. Chůvy si samy rozhodnou, jakou částku požadují
                za své služby, stejně tak si samy určí své časové možnosti. Použití našeho portálu je zcela zdarma..", "t", 1],
               ["Jak to funguje?", "Velmi jednoduše. Registrací na našem webu získáte přístup k databázi registrovaných a
                ověřeních osob, nabízejících hlídání dětí. Na Vás pak bude, koho si vyberete pro
                hlídání Vašich ratolestí.", "t", 1],
               ["Informace o práci", "Tato semstrální práce je variantou ze zelené louky. V momentálnínm stavu neni udělaná m:n
                asociace, jelikož sem nedostal žádný nápad, kam ji ve svém tématu udělat. Pokud mi dáté nějaký tip, tak
                tak ju dodělám do posledního kontrolního bodu. Ostatní drobné nedodělky jsou dané časovou indispozicí
                a bude snaha o optimalizaci během svátku při práci na backendu. ", "t", 2],
               ["Hurá", "Již u nás najdete celkem 5 osob, jež Vám pohlídají děti.", "t", 2]]


articleList.each do |title, text, published, category_id|
  Article.find_or_create_by!(title: title, text:text, published: published, category_id: category_id)
end
