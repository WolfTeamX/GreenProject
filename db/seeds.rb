# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

path = Rails.root.join('app', 'assets', 'images', 'seed')

footer = Footer.create(description: "Green Evolution to firma zajmująca się sprzedażą i instalacją systemów energetycznych, klimatyzacji oraz systemów grzewczych.")
footer.image.attach(io: File.open(File.join(path, 'footer.jpg')), filename: 'footer.jpg', content_type: 'image/jpg')

contact = ContactInfo.create(address: "693  Wayback Lane Hicksville NY", phone: "+48 123 456 789", email: "hsnznhupca@temporary-mail.net")
contact.image.attach(io: File.open(File.join(path, 'contact-background.jpg')), filename: 'contact-background.jpg', content_type: 'image/jpg')

voivodeships = Voivodeship.create([{name: "Wielkopolska"}, {name: "Zachodniopomorskie"}, {name: "Pomorskie"}])
voivodeships[0].image.attach(io: File.open(File.join(path, 'greater-poland.jpg')), filename: 'greater-poland.jpg', content_type: 'image/jpg')
voivodeships[1].image.attach(io: File.open(File.join(path, 'east-pomerania.jpg')), filename: 'east-pomerania.jpg', content_type: 'image/jpg')
voivodeships[2].image.attach(io: File.open(File.join(path, 'pomerania.jpg')), filename: 'pomerania.jpg', content_type: 'image/jpg')

faqs = FaqPage.create([{title: "Fotowoltaika"},
                       {title: "Pompa ciepła"},
                       {title: "Klimatyzacja"}])
faqs[0].image.attach(io: File.open(File.join(path, 'faq-header-photovoltaics.jpg')), filename: 'faq-header-photovoltaics.jpg', content_type: 'image/jpg')
faqs[1].image.attach(io: File.open(File.join(path, 'faq-header-heat-pump.jpg')), filename: 'faq-header-heat-pump.jpg', content_type: 'image/jpg')
faqs[2].image.attach(io: File.open(File.join(path, 'faq-header-air-conditioning.jpg')), filename: 'faq-header-air-conditioning.jpg', content_type: 'image/jpg')

FaqQuestion.create([{title: "O INSTALACJACH FOTOWOLTAICZNYCH", answer: "Pod tą pozornie trudną nazwą kryje się bardzo prosty proces pozyskiwania energii elektrycznej ze słońca. Panele fotowoltaiczne, czyli inaczej panele słoneczne, to krzemowe płyty, które coraz częściej możemy zauważyć na dachach domów czy też budynkach nowoczesnych firm. Rosnącą popularność fotowoltaika zawdzięcza połączeniu ekologii z ekonomią, ponieważ jest ona rozwiązaniem zapewniającym zwrot części lub nawet całości kosztów za wykorzystanie energii elektrycznej, nie szkodząc przy tym środowisku. Chociaż zdaje się to być niemożliwe w dobie rosnących rachunków za prąd, warto poświęcić chwilę i dowiedzieć się, jak korzystnym i przyszłościowym rozwiązaniem są panele fotowoltaiczne.", faq_page_id: 1},
                    {title: "Jak działają ogniwa?", answer: "Zasada działania paneli fotowoltaicznych polega na tym, że ogniwa fotowoltaiczne, z których złożone są panele zamieniają energię słoneczną w energię elektryczną. W tym celu foton (czyli minimalna jednostka światła) pada na płytkę krzemową, z której zbudowane jest ogniwo fotowoltaiczne. Jednostka światła jest pochłaniana przez krzem i wybija elektron ze swojej pozycji zmuszając go do ruchu. Ten ruch to właśnie przepływ prądu elektrycznego. Dzięki zastosowaniu złącza półprzewodnikowego typu p-n możliwe jest połączenie tego procesu z obiegiem elektronów w sieci energetycznej, w ten sposób energia świetlna zostaje przekształcona w elektryczną.", faq_page_id: 1},
                    {title: "Ile energi wytwarza instalacja fotowoltaniczna?", answer: "W zależności od wielkości instalacji fotowoltaicznej, ilość energii elektrycznej wyprodukowanej przez panele fotowoltaiczne będzie różna. Nie bez znaczenia jest też miejsce umieszczenia instalacji PV. Przyjmuje się, że panel skierowany na południe, mający 1 kWp wyprodukuje w ciągu roku ok. 900-1100 kWh energii elektrycznej. Produkcja energii jest większa latem przy pełnym słońcu, bez zacienienia paneli. Panele fotowoltaiczne zbudowane z krzemu działają najsprawniej w temperaturze ok. 25°C. Im niższa jest temperatura tym mniej fotonów dociera do ogniw, im wyższa temperatura tym moc paneli spada - wiąże się to z przegrzaniem paneli i przy długotrwałej pracy w bardzo wysokiej temperaturze może dojść do spalenia ogniw fotowoltaicznych. W polskich warunkach jest to zjawisko niespotykane - biorąc pod uwagę klimat, ale pojedyncze przypadki potwierdzają teorię związaną z przepaleniem. Wówczas należy pamiętać, że panele fotowoltaiczne to połączone ze sobą ogniwa fotowoltaiczne. Wszystkie ogniwa połączone szeregowo i/lub równolegle tworzą całość.", faq_page_id: 1},
                    {title: "Co dzieje się z niewykorzystaną energią?", answer: "Każdy system Instalacji fotowoltaicznej działa w taki sposób, że produkując własny prąd za pomocą promieni słonecznych przeznacza go głównie na własne potrzeby. Natomiast po zaspokojeniu potrzeb gospodarstwa, energia jest przekazywana do sieci publicznej. Następnie ilość energii oddawanej do sieci jest zliczana przez specjalny licznik montowany przez Zakład Energetyczny.", faq_page_id: 1},
                    {title: "O POMPACH CIEPŁA", answer: "Pompa ciepła pobiera ciepło z dolnego źródła ciepła, czyli źródła o niższej temperaturze. Tym źródłem może być zarówno ziemia, skała, zbiornik wodny jak i powietrze na zewnątrz budynku. Wykonując pracę sprężania i skraplania podobnie jak praca lodówki, oddaje czynnik w postaci wody lub powietrza do źródła o wyższej temperaturze. Pompę ciepła można stosować do ogrzewania jak i chłodzenia budynku. Czynnikiem roboczym może być woda lub powietrze - w zależności od rodzaju pompy. Każda ma inna budowę i inną zasadę działania ale efekt pracy mają ten sam czyli podgrzanie wody użytkowej (c.w.u), ogrzewanie domu (c.o.) lub wykorzystanie w klimatyzacji. Obsługa pompy jest bardzo prosta. Zainstalowana pompa wyposażona jest w panel kontrolny, którego obsługi możesz nauczyć się w parę chwil. Zawsze można poprosić o pomoc instalatora. Rozważając opłacalność instalacji należy pamiętać, że w ten sposób znacznie zmniejszamy wysokość swoich rachunków!", faq_page_id: 2},
                    {title: "Jak działa pompa ciepła?", answer: "Zasada działania polega na tym, że zimny płyn przepływa w rurach o wysokim przewodnictwie cieplnym (np. miedzianych) przez ciepłe, dolne źródło ciepła (grunt, woda, powietrze), nagrzewając się. Przepływa do sprężarki, w której podwyższa się ciśnienie i temperaturę płynu (przemiana adiabatyczna). Ciepło jest oddawane do górnego źródła ciepła (systemu grzewczego budynku). Następnie ciśnienie jest obniżane w zaworze rozprężnym dzięki czemu wraca on do pierwotnej bardzo niskiej temperatury. Proces trwa stale dzięki dostarczaniu niewielkiej ilości energii elektrycznej.", faq_page_id: 2},
                    {title: "Czy inwestycja w pompę jest opłacalna?", answer: "Opłacalność inwestycji będzie stale rosnąć. Z roku na rok instalacje są coraz tańsze ze względu na większy popyt, a cena energii elektrycznej będzie stale rosnąć. Coraz więcej osób inwestuje w urządzenia bezobsługowe i bezawaryjne takie jak pompy. Opracowywane są też nowsze modele pomp aby wpłynąć korzystnie na efektywność i sprawność. Na dzień dzisiejszy wykorzystując instalację zmniejszamy koszty ciepła o 15-50%. Izolacja budynku korzystnie wpływa na pracę i efektywność. W nowym budownictwie jeśli chcemy ograniczyć koszty ogrzewania to pompa ciepła jest bardzo dobrym rozwiązaniem pozwalającym, nawet w porównaniu do ogrzewania gazowego, zmniejszyć koszty o 15-30%.", faq_page_id: 2},
                    {title: "Jakie korzyści płyną z instalacji pompy ciepła?", answer: "Do głównych zalet należy ochrona środowiska i zmniejszenie kosztów ogrzewania. Inwestując w instalację przyczyniamy się do zmniejszenia emisji zanieczyszczeń. Wszystkie urządzenia poprawiające gospodarkę energetyczną budynku podnoszą wartość nieruchomości. Bezpośrednio po instalacji pompy, wartość nieruchomości wzrasta o koszt urządzenia i instalacji, dodatkowo doskonale komponuje się z instalacjami pozyskującymi energię elektryczną ze źródeł odnawialnych. Połączenie pompy ciepła z wiatrakiem lub fotowoltaiką prowadzi do dalszego obniżenia kosztów utrzymania budynku. Sam system jest całkowicie bezpieczny, nie powoduje zagrożenia dla mieszkańców, nie osiąga temperatur mogących spowodować pożar. Praca pompy nie emituje żadnych tlenków węgla.", faq_page_id: 2},
                    {title: "O KLIMATYZACJI", answer: "Jeżeli dokuczliwy upał daje się coraz mocniej we znaki, a włączony wentylatorek nie poprawia sytuacji, to może nadchodzi właściwy czas, by podjąć decyzję o zakupie i montażu klimatyzacji. Pamiętajmy, że o naszym samopoczuciu decyduje jednocześnie kilka czynników, takich jak temperatura wnętrza, wilgotność, prędkość powietrza, jego zanieczyszczenie oraz ilość świeżego powietrza na danej przestrzeni. W konkretnym, pojedynczym pomieszczeniu klimatyzacja może być realizowana za pomocą urządzeń indywidualnych, które zwykle schładzają pomieszczenie oraz usuwają z niego nadmiar wilgoci. Takie urządzenie doskonale zdaje egzamin w przypadku, gdy chcemy zapewnić sobie świeże, chłodne powietrze. Jednak przed podjęciem ostatecznej decyzji o jego zakupie, warto poznać budowę i zasady działania popularnych systemów klimatyzacji.", faq_page_id: 3},
                    {title: "Jak działa klimatyzacja?", answer: "Klimatyzacja, w zależności od typu urządzenia, zastosowanego w instalacji klimatyzacyjnej, reguluje temperaturę pomieszczenia (chłodzi lub grzeje) i wilgotność powietrza. Urządzenia klimatyzacyjne usuwają wodę z powietrza znajdującego się w pomieszczeniu. Przy wilgotności powietrza równej 25-40% człowiek ma wrażenie, że w pomieszczeniu jest chłodniej. Przy wilgotności 60% i tej samej temperaturze odczuwalna jest wyższa temperatura.<br><br>Nowoczesne klimatyzatory potrafią również filtrować powietrze, pozbywając się z niego zanieczyszczeń, pyłków, kurzu czy dymu.", faq_page_id: 3},
                    {title: "Jaka wilgotność i temperatura są najkorzystniejsze dla człowieka?", answer: "Dla organizmu człowieka najkorzystniej jest, gdy temperatura w pomieszczeniu wynosi 18-20°C, względna wilgotność 40-60%.Takie warunki są najbardziej optymalne do pracy. Od temperatury 20°C ciało zaczyna się schładzać w sposób naturalny - gdy jest za gorąco, człowiek poci się, a pot znajdujący się na skórze odparowuje i likwidowany jest nadmiar ciepła z ciała. Jedynym problemem, jaki może zakłócić obieg jest fakt, iż wysoka wilgotność powietrza utrudnia to odparowywanie.", faq_page_id: 3},
                    {title: "Jak wylicza się moc instalacji klimatyzacyjnej w projekcie?", answer: "Moc chłodnicza klimatyzacji powinna pokryć ciepło, jakie zostanie dostarczone lub wytworzone w klimatyzowanym pomieszczeniu. Przed przystąpieniem do projektowania klimatyzacji należy zrobić bilans cieplny pomieszczenia. Od jego wyników zależy dobór mocy urządzeń. Obliczeń tych można dokonać, w przybliżeniu biorąc pod uwagę np. powierzchnię lub kubaturę pomieszczenia oraz jego przeznaczenie. Przykładowo dla pomieszczeń mieszkalnych przyjmuje się 100 W/m2 biorąc pod uwagę powierzchnię lub 30 W/m3 w przypadku kubatury.", faq_page_id: 3},
                    {title: "Jakie są czynniki chłodzące w klimatyzacji?", answer: "Czynnikami chłodzącymi są najczęściej substancje o niskiej temperaturze wrzenia, które umożliwiają odebranie ciepła z pomieszczenia. Zaleca się stosowanie czynników R407C lub R410A. Substancje chłodnicze są silnie higroskopijne, dlatego należy zadbać o to, aby podczas napełniania instalacja była sucha. W czynniku chłodniczym klimatyzatorów jest rozpuszczony olej, który służy do smarowania sprężarki. W zależności od rodzaju czynnika chłodniczego stosowane są oleje o różnej temperaturze gęstnienia. W niskiej temperaturze następuje wytrącanie oleju, który zbiera się w postaci korków uniemożliwiających przepływ czynnika. Brak przepływu czynnika chłodniczego może doprowadzić do uszkodzenia sprężarki pozbawionej smarowania.", faq_page_id: 3}])

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

main_offers = MainOffer.create([{title: "Fotowoltaika",
                                 description: "Zastąp konwencjonalne źródła energii innowacyjnymi rozwiązaniami."},
                                {title: "Pompy ciepła",
                                 description: "Ogrzej siebie i swoich bliskich."},
                                {title: "Klimatyzacja",
                                 description: "Skuteczne chłodzenie na każdą kieszeń."}])
main_offers[0].image.attach(io: File.open(File.join(path, 'main-offer-photovoltaics.jpg')), filename: 'main-offer-photovoltaics.jpg', content_type: 'image/jpg')
main_offers[1].image.attach(io: File.open(File.join(path, 'main-offer-heat-pumps.jpg')), filename: 'main-offer-heat-pumps.jpg', content_type: 'image/jpg')
main_offers[2].image.attach(io: File.open(File.join(path, 'main-offer-air-conditioning.jpg')), filename: 'main-offer-air-conditioning.jpg', content_type: 'image/jpg')

designated_images = DesignatedCustomersImage.create([{text: "Dla domu"}, {text: "Dla firmy"}, {text: "Dla rolnictwa"}])
designated_images[0].image.attach(io: File.open(File.join(path, 'for-home.jpg')), filename: 'for-home.jpg', content_type: 'image/jpg')
designated_images[1].image.attach(io: File.open(File.join(path, 'for-company.jpg')), filename: 'for-company.jpg', content_type: 'image/jpg')
designated_images[2].image.attach(io: File.open(File.join(path, 'for-agriculture.jpg')), filename: 'for-agriculture.jpg', content_type: 'image/jpg')

icons = Icon.create([{title: "O nas", description: "Poznaj nas od środka i dowiedz się jak działamy.", link: "o-nas"},
                     {title: "Certyfikaty i szkolenia", description: "Nasze doświadczenia i praca.", link: "certyfikaty"},
                     {title: "Sprzedaż", description: "Skontaktuj się z nami, a znajdziemy to czego potrzebujesz.", link: "kontakt"},
                     {title: "Realizacje", description: "Pomogliśmy innym, teraz pora na ciebie!", link: "realizacje"}])
icons[0].image.attach(io: File.open(File.join(path, 'about-us.svg')), filename: 'about-us.svg', content_type: 'image/svg+xml')
icons[1].image.attach(io: File.open(File.join(path, 'certificates.svg')), filename: 'certificates.svg', content_type: 'image/svg+xml')
icons[2].image.attach(io: File.open(File.join(path, 'sale.svg')), filename: 'sale.svg', content_type: 'image/svg+xml')
icons[3].image.attach(io: File.open(File.join(path, 'realizations.svg')), filename: 'realizations.svg', content_type: 'image/svg+xml')

about_paragraphs = AboutUsParagraph.create([{title: "Kim jesteśmy?",
                                             content: "Green Evolution to firma zajmująca się sprzedażą i instalacją systemów energetycznych,klimatyzacji oraz systemów grzewczych.<br><br>
                                             Lata doświadczeń w branży dało nam możliwość specjalizacji w urządzeniach wykorzystujących odnawialne źródła energii.<br><br>
                                             Proponujemy ekologiczne pompy ciepła, klimatyzacje, urządzenia chłodnicze oraz instalacje fotowoltaiczne."},
                                            {title: "Co oferujemy?",
                                             content: "Naszym Klientom gwarantujemy kompleksową obsługę każdej inwestycji w zakresie doboru odpowiednich rozwiązań przynoszących znaczne oszczędności z użytkowania energii odnawialnej.<br><br<
                                                       W ramach naszych usług dokonujemy uruchomienia zamontowanego systemu wraz ze szczegółowym instruktarzem użytkownika dotyczący bezpiecznego i prawidłowego korzystania."},
                                            {title: "Co gwarantujemy?",
                                             content: "Współdziałamy tylko ze znanymi i cenionymi producentami oferowanych urządzeń.<br><br>
                                                       Naszym klientom zapewniamy także serwis gwarancyjny i pogwarancyjny."}])
about_paragraphs[0].image.attach(io: File.open(File.join(path, 'about-us-paragraph-1.jpg')), filename: 'about-us-paragraph-1.jpg', content_type: 'image/jpg')
about_paragraphs[1].image.attach(io: File.open(File.join(path, 'about-us-paragraph-2.jpg')), filename: 'about-us-paragraph-2.jpg', content_type: 'image/jpg')
about_paragraphs[2].image.attach(io: File.open(File.join(path, 'about-us-paragraph-3.jpg')), filename: 'about-us-paragraph-3.jpg', content_type: 'image/jpg')

slides = Slide.create([{title: "W trosce o naturę",
                        content: "Odnawialne źródła energii to niepodważalne korzyści dla środowiska. Dzięki nim dom pozytywniej oddziałuje na środowisko, a życie w okolicy staje się przyjemniejsze i zdrowsze."},
                       {title: "Inwestycja w przyszłość", content: "Zadbaj o przyszłość swoją i swoich bliskich. Nasze nowoczesne rozwiązania ci w tym pomogą!"},
                       {title: "Oszczędzaj na rachunkach", content: "Odnawialne Źródła Energii pozwolą ci zmniejszyć koszty i zapewnią długoterminowe zyski."},])
slides[0].image.attach(io: File.open(File.join(path, 'slides-1.jpg')), filename: 'slides-1.jpg', content_type: 'image/jpg')
slides[1].image.attach(io: File.open(File.join(path, 'slides-2.jpg')), filename: 'slides-2.jpg', content_type: 'image/jpg')
slides[2].image.attach(io: File.open(File.join(path, 'slides-3.jpg')), filename: 'slides-3.jpg', content_type: 'image/jpg')

7.times do |i|
  name = i + 1
  realization = Realization.new
  realization.save
  realization.image.attach(io: File.open(File.join(path, 'certificates', name.to_s + ".jpg")), filename: name.to_s + ".jpg", content_type: 'image/jpg')
  certificate = Certificate.new
  certificate.save
  certificate.image.attach(io: File.open(File.join(path, 'certificates', name.to_s + ".jpg")), filename: name.to_s + ".jpg", content_type: 'image/jpg')
end

User.create(email: "admin@admin.admin", password: "zaq1@WSX", password_confirmation: "zaq1@WSX")