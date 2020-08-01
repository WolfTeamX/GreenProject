# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

path = Rails.root.join('app', 'assets', 'images', 'seed')

footer = Footer.create(description: "")
footer.image.attach(io: File.open(File.join(path, 'footer.jpg')), filename: 'footer.jpg', content_type: 'image/jpg')

contact = ContactInfo.create(address: "693  Wayback Lane Hicksville NY", phone: "+48 123 456 789", email: "hsnznhupca@temporary-mail.net")
contact.image.attach(io: File.open(File.join(path, 'contact-background.jpg')), filename: 'contact-background.jpg', content_type: 'image/jpg')

voivodeships = Voivodeship.create([{name: "Wielkopolska"}, {name: "Zachodniopomorskie"}, {name: "Pomorskie"}])
voivodeships[0].image.attach(io: File.open(File.join(path, 'greater-poland.jpg')), filename: 'greater-poland.jpg', content_type: 'image/jpg')
voivodeships[1].image.attach(io: File.open(File.join(path, 'east-pomerania.jpg')), filename: 'east-pomerania.jpg', content_type: 'image/jpg')
voivodeships[2].image.attach(io: File.open(File.join(path, 'pomerania.jpg')), filename: 'pomerania.jpg', content_type: 'image/jpg')

faq = FaqPage.create([{title: "Fotowoltaika"},
                       {title: "Pompa ciepła"},
                       {title: "Klimatyzacja"}])

sub_pages = SubPage.create([{title: "O nas"}, {title: "Nasza oferta"}, {title: "Portfolio"}, {title: "Kontakt"}, {title: "Certyfikaty"}])
sub_pages[0].image.attach(io: File.open(File.join(path, 'about-us-header.jpg')), filename: 'about-us-header.jpg', content_type: 'image/jpg')
sub_pages[1].image.attach(io: File.open(File.join(path, 'offer-page-header.jpg')), filename: 'offer-page-header.jpg', content_type: 'image/jpg')
sub_pages[2].image.attach(io: File.open(File.join(path, 'realizations-header.jpg')), filename: 'realizations-header.jpg', content_type: 'image/jpg')
sub_pages[3].image.attach(io: File.open(File.join(path, 'contact-header.jpg')), filename: 'contact-header.jpg', content_type: 'image/jpg')
sub_pages[4].image.attach(io: File.open(File.join(path, 'certificates.jpg')), filename: 'certificates.jpg', content_type: 'image/jpg')

offer_paragraphs = OfferParagraph.create([{header: "Energia z gwiazd", title: "Fotowoltaika",
                        content: "Instalacje fotowoltaiczne zamieniają energie słoneczną na prąd elektryczny,
                                 dostarczając energie tam, gdzie jej potrzebujesz."},
                       {header: "Korzystne ogrzewanie", title: "Pompy ciepła",
                        content: "Komfortowe i tanie w eksploatacji źródło ogrzewania.
                                 Jej długa żywotność zapewnia ocieplenie na wiele lat."},
                       {header: "Wysoka jakość", title: "Klimatyzacja",
                        content: "Stabilizuje temperatuje i wilgotność w otoczeniu,
                                  zapewniając komfort i zrównoważony bilans cieplny."}])
offer_paragraphs[0].image.attach(io: File.open(File.join(path, 'offer-page-photovoltaics.jpg')), filename: 'offer-page-photovoltaics.jpg', content_type: 'image/jpg')
offer_paragraphs[1].image.attach(io: File.open(File.join(path, 'offer-page-heat-pump.jpg')), filename: 'offer-page-heat-pump.jpg', content_type: 'image/jpg')
offer_paragraphs[2].image.attach(io: File.open(File.join(path, 'offer-page-air-conditioning.jpg')), filename: 'offer-page-air-conditioning.jpg', content_type: 'image/jpg')

main_offers = MainOffer.create([{ title: "Fotowoltaika",
                    description: "Praesent ullamcorper ligula id neque sollicitudin, a vulputate est aliquam.
                                  Convallis elit a."} ,
                  { title: "Pompy ciepła",
                    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."},
                  { title: "Klimatyzacja",
                    description: "Phasellus nec aliquet arcu, vel congue orci.
                                  Aenean pulvinar nisi posuere ante blandit dictum."}])
main_offers[0].image.attach(io: File.open(File.join(path, 'main-offer-photovoltaics.jpg')), filename: 'main-offer-photovoltaics.jpg', content_type: 'image/jpg')
main_offers[1].image.attach(io: File.open(File.join(path, 'main-offer-heat-pumps.jpg')), filename: 'main-offer-heat-pumps.jpg', content_type: 'image/jpg')
main_offers[2].image.attach(io: File.open(File.join(path, 'main-offer-air-conditioning.jpg')), filename: 'main-offer-air-conditioning.jpg', content_type: 'image/jpg')

designated_images = DesignatedCustomersImage.create([{text: "Dla domu"}, {text: "Dla firmy"}, {text: "Dla rolnictwa"}])
designated_images[0].image.attach(io: File.open(File.join(path, 'for-home.jpg')), filename: 'for-home.jpg', content_type: 'image/jpg')
designated_images[1].image.attach(io: File.open(File.join(path, 'for-company.jpg')), filename: 'for-company.jpg', content_type: 'image/jpg')
designated_images[2].image.attach(io: File.open(File.join(path, 'for-agriculture.jpg')), filename: 'for-agriculture.jpg', content_type: 'image/jpg')

icons = Icon.create([{title: "O nas", description: "Maecenas libero dolor, auctor eget lectus id.", link: "o-nas"},
             {title: "Certyfikaty i szkolenia", description: "Nam porttitor augue ac finibus consequat.", link: "certyfikaty"},
             {title: "Sprzedaż", description: "Etiam nisi diam, imperdiet a pulvinar vel. ", link: "kontakt"},
             {title: "Realizacje", description: "Proin purus augue, blandit vulputate tellus.", link: "realizacje"}])
icons[0].image.attach(io: File.open(File.join(path, 'about-us.svg')), filename: 'about-us.svg', content_type: 'image/svg+xml')
icons[1].image.attach(io: File.open(File.join(path, 'certificates.svg')), filename: 'certificates.svg', content_type: 'image/svg+xml')
icons[2].image.attach(io: File.open(File.join(path, 'sale.svg')), filename: 'sale.svg', content_type: 'image/svg+xml')
icons[3].image.attach(io: File.open(File.join(path, 'realizations.svg')), filename: 'realizations.svg', content_type: 'image/svg+xml')

about_paragraphs = AboutUsParagraph.create([{title: "Kim jesteśmy?"}, {title: "Co oferujemy?"}, {title: "Co gwarantujemy?"}])
about_paragraphs[0].image.attach(io: File.open(File.join(path, 'about-us-paragraph-1.jpg')), filename: 'about-us-paragraph-1.jpg', content_type: 'image/jpg')
about_paragraphs[1].image.attach(io: File.open(File.join(path, 'about-us-paragraph-2.jpg')), filename: 'about-us-paragraph-2.jpg', content_type: 'image/jpg')
about_paragraphs[2].image.attach(io: File.open(File.join(path, 'about-us-paragraph-3.jpg')), filename: 'about-us-paragraph-3.jpg', content_type: 'image/jpg')

User.create(email: "admin@admin.admin", password: "zaq1@WSX", password_confirmation: "zaq1@WSX")