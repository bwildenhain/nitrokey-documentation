��    \      �              �  2  �  !     9   2  @  l     �  �   �    �	  d  �
     J     �  K   �  *   "  5   M  3   �  )   �  '   �  !   	     +  5   G  &   }     �     �  &   �  '   �  !   &      H  -   i  4   �  -   �  =   �  �   8  2        7  �   N  �   K     3     A     S     e     {     �     �     �     �     �     �  �     �  �  �   �  
   L  
   W     b  <   q  �   �  �   �  �   n  _     �   v  d   T    �     �     �  <   �       ;   5     q     �    �  �   �    m   #  q!  �   �"  N  [#    �$  �   �%  |   �&  "   '  d   ;'     �'  D   �'     (     (  
   8(     C(     K(     S(     [(     c(     k(     s(     {(    (  :  �*  +   �+  R    ,  �  S,  !   �-  �   �-  &  �.  %  �/  �   �0     �1  I   �1  5   �1  9   2  2   H2  /   {2  $   �2  %   �2     �2  <   3  1   M3     3     �3      �3  /   �3  /   4  1   14  .   c4  4   �4  -   �4  A   �4  �   75  2   6     86  $  W6  �   |7     T8     b8     t8     �8     �8     �8  '   �8     �8     9     /9     39  �   89  �  :  �   �;  
   �<  
   �<     �<  R   �<  �   �<  �   �=  �   �>  c   ?  �   �?  p   �@  �   HA     EB     XB  =   oB     �B  Z   �B  (   %C     NC  �  WC  �   >E    F  6  -G  �   dH  `  .I    �J  �   �K  �   �L     *M  t   JM     �M  I   �M     %N      >N     _N     mN     uN     }N     �N     �N     �N     �N     �N   **Admin PIN:** The admin PIN is at least 8-digits long and is used to change contents/settings of the Nitrokey. That is to say after initializing the Nitrokey you probably won't need this PIN too often (e.g. if you want to add another password to the password safe of the Nitrokey Pro or Nitrokey Storage). **Administrator PIN:** "12345678" **Firmware Password** (Nitrokey Storage only): "12345678" **Firmware password:** The firmware password should meet general password recommandations (e.g. use alphabetic characters, digits and special characters or use a usfficiently long password). The firmware password is needed to update the firmware of the Nitrokey Storage. See further instructions for update process here. **Letter and Registered Mail**: **Nitrokey HSM2:** The security controler's hardware and operating system are Common Criteria certified (`Security Target`_; `HSM2 Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP JCOP 3 P60"). **Nitrokey HSM:** The security controler's hardware and operating system are Common Criteria certified (`HSM Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP J3A080 v2.4.1 Secure Smart Card Controller (JCOP v2.4.1)"). **Nitrokey Pro 1+2:** The security controler's hardware is Common Criteria certified (`Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP Smart Card Controller P5CD081V1A and its major configurations P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A and P5CD016V1A each with IC dedicated Software"). **Nitrokey Storage 1+2:** `Cure53`_ has performed an `independent security audit`_ of the hardware, firmware, and Nitrokey App. **Parcel**: **Q:** Do Nitrokeys contain a secure chip or just a normal microcontroller? **Q:** How fast is encryption and signing? **Q:** How good is the Random Number Generator (RNG)? **Q:** How is the Bitcoin exchange rate calculated? **Q:** How large is the storage capacity? **Q:** How long does the shipping take? **Q:** How many keys can I store? **Q:** How to return goods? **Q:** Is Nitrokey Common Criteria or FIPS certified? **Q:** Is there a Right of Withdrawal? **Q:** Is there a warranty? **Q:** Pricing and VAT **Q:** What are the default passwords? **Q:** What can I use the Nitrokey for? **Q:** What is the Admin PIN for? **Q:** What is the User PIN for? **Q:** What is the maximum length of the PIN? **Q:** What is user/admin/firmware PIN/password for? **Q:** Which Operating Systems are supported? **Q:** Which algorithms and maximum key length are supported? **SO PIN:** The SO PIN is used in the Nitrokey HSM only and is something like a "master" PIN with special properties. Please read this instructions carefully to understand the SO PIN of the Nitrokey HSM. **SO-PIN** (Nitrokey HSM only): "3537363231383830" **User PIN:** "123456" **User PIN:** The user PIN is at least 6-digits long and is used to get access to the contect of the Nitrokey. This is the PIN you will use a lot in every day use e.g. for decrypting messages, for unlocking your encrypted storage (NK Storage only) etc. At the time of ordering, our system takes the exchange rate from blockchain.info and adds 10% on top of it. The 10% are for our handling fees (exchanging Bitcoins back to Euro) and for the risk implicated by floating exchange rate. Brainpool 192 Brainpool 256-320 Brainpool 384-521 EU: 2-5 business days EU: 5-10 business days Frequently Asked Questions Generic Nitrokeys FAQ Germany: 1-3 business days Germany: 2-5 business days HSM HSM2 If you want to have a backup of your keys, you need to think about it when creating the keys. More information and options for the key creation can be found in our :doc:`documentation <../pro/linux/openpgp>`. In case of a hardware defect, you can contact us and we will send you a shipping label. Pack the device in an air cushion envelope (not in an ordinary envelope!). Include the delivery slip or printout of the invoice with the shipment. Add a note of the reason for the return, e.g. "Withdrawal of the purchase" or "Exchange due to defect". It is sufficient to note the reason in handwriting on the enclosed invoice or delivery note. Address the mailing to our address. It depends. No one can copy the keys which are stored on the Nitrokey. But depending on the key creation process you can still store a backup of the keys elsewhere. NIST-P 192 NIST-P 256 NIST-P 384-521 Nitrokey HSM can store 20 RSA-2048 and 31 ECC-256 key pairs. Nitrokey Pro's and Storage's PINs can be up to 20 digits long and can consist of numbers, characters and special characters. Note: When using GnuPG or OpenSC, 32 character long PINs can be used but aren't supported by Nitrokey App. Nitrokey Pro, Nitrokey HSM and Nitrokey Storage contain a tamper resistant smart card. To some extent this also applies to Nitrokey U2F but it's of lower quality. Nitrokey Start is implemented in the microprocessor. Nitrokey Pro, Nitrokey Start, Nitrokey HSM and Nitrokey U2F don't contain storage capability for ordinary data (it can only store cryptographic keys and certificates). Nitrokey Storage can store and encrypt 8, 32, or 64 GB of data (depending on particular model). Nitrokey Storage's PINs can be up to 20 digits long and can consist of numbers, characters and special characters. Note: When using GnuPG or OpenSC, 32 character long PINs can be used but aren't supported by Nitrokey App. Nitrokey U2F stores a single ECC key pair but can be used with an unlimited amount of user accounts. Nitrokey uses PINs instead of passwords. The main difference is that the hardware limits the amount of tries to three while a limit doesn't exist for passwords. Because of this, a short PIN is still secure and there is not need to choose a long and complex PIN. Pro + Storage Pro 2 + Storage 2 See the `frontpage`_ for an overview of supported use cases. See the following table: See the relevant product faq for details: (@todo add links) Shop and Delivery FAQ Start The Nitrokey GmbH has a heterogeneous customer base, private and enterprise customers, from Germany as well as inside and outside of the EU. With the pricing we want to ensure that all customers pay a uniform rate. For example, a large international corporation should pay just as much as a German private customer. Accordingly, the gross price (incl. VAT) for German private customers equals the net price (excluding VAT) for EU enterprise customers and all customers outside of the EU. This approach has been audited and is legally correct. The Nitrokey Pro, Nitrokey Start and Nitrokey Storage can store three RSA key pairs. All keys use the same identity but are used for different purposes: authentication, encryption and signing. The admin PIN can have up to 20 digits and other characters (e.g. alphabetic and special characters). But as the admin PIN is blocked as soon three wrong PIN attempts were done, it is sufficiently secure to only have 8 digits PIN. The default PIN is 12345678. The admin PIN is at least 8-digits long and is used to change contents/settings of the Nitrokey. That is to say after initializing the Nitrokey you probably won't need this PIN too often (e.g. if you want to add another password to the password safe of the Nitrokey Pro or Nitrokey Storage). The firmware password is never blocked. An attacker could try to guess the password and would have unlimited attempts. Therefore you must choose a strong password. The default password is 12345678. The security controler's hardware is Common Criteria certified (`Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP Smart Card Controller P5CD081V1A and its major configurations P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A and P5CD016V1A each with IC dedicated Software"). The user PIN can have up to 20 digits and other characters (e.g. alphabetic and special characters). But as the user PIN is blocked as soon three wrong PIN attempts were done, it is sufficiently secure to only have a 6 digits PIN. The default PIN is 123456. The user PIN is at least 6-digits long and is used to get access to the contect of the Nitrokey. This is the PIN you will use a lot in every day use e.g. for decrypting messages, for unlocking your encrypted storage (NK Storage only) etc. There is a Right for most customers. Further details can be found here (https://www.nitrokey.com/right-withdrawal-consumers) To return a goods (e.g. Nitrokey): We strongly recommend to change these PINs/password to user-chosen values before using the Nitrokey. Windows, Linux, and Mac OS X. Windows, Linux, and Mac OS X. Also some support (FIDO2) for Android. World wide: 2-3 weeks World wide: 5-10 business days curve25519 rsa1024 rsa2048 rsa3072 rsa4096 secp192 secp256 secp521 ✓ Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-10-06 01:52+0200
PO-Revision-Date: 2022-01-15 15:10+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: sl
Language-Team: Slovenian <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-shared-faqs/sl/>
Plural-Forms: nplurals=4; plural=n%100==1 ? 0 : n%100==2 ? 1 : n%100==3 || n%100==4 ? 2 : 3
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 **Admin PIN:** Admin PIN je dolg vsaj 8 številk in se uporablja za spreminjanje vsebine/nastavitev naprave Nitrokey. To pomeni, da po inicializaciji ključa Nitrokey tega PIN-a verjetno ne boste prepogosto potrebovali (npr. če želite dodati drugo geslo v sef za gesla ključa Nitrokey Pro ali Nitrokey Storage). **Koda PIN za administratorja:** "12345678" **Geslo za osnovno programsko opremo** (samo za shranjevanje Nitrokey): "12345678" **Geslo za vdelano programsko opremo:** Geslo za vdelano programsko opremo mora ustrezati splošnim priporočilom za gesla (npr. uporabite abecedne znake, številke in posebne znake ali uporabite dovolj dolgo geslo). Geslo za vdelano programsko opremo je potrebno za posodobitev vdelane programske opreme naprave Nitrokey Storage. Dodatna navodila za postopek posodobitve si oglejte tukaj. **Pismo in priporočena pošta**: **Nitrokey HSM2:`Security Target`_; `HSM2 Report`_; Glej `zgoraj`_, klikni "ICs, Smart Cards and Smart Card-Related Devices and Systems" in poišči "NXP JCOP 3 P60"). **Nitrokey HSM:** Strojna oprema in operacijski sistem varnostnega krmilnika sta certificirana po skupnih merilih (`HSM Report`_; Glej `tukaj`_, kliknite "ICs, Smart Cards and Smart Card-Related Devices and Systems" in poiščite "NXP J3A080 v2.4.1 Secure Smart Card Controller (JCOP v2.4.1)"). **Nitrokey Pro 1+2:** Glej `zgoraj`_, klikni "ICs, Smart Cards and Smart Card-Related Devices and Systems" in poiščite "NXP Smart Card Controller P5CD081V1A in njegove glavne konfiguracije P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A in P5CD016V1A, vsaka z IC namensko programsko opremo"). **Hramba Nitrokey 1+2:** `Cure53`_ je opravila `neodvisno varnostno revizijo`_ strojne opreme, vdelane programske opreme in aplikacije Nitrokey. **Parcela**: **Q:** Ali Nitrokeys vsebujejo varen čip ali le običajen mikrokrmilnik? **Q:** Kako hitro poteka šifriranje in podpisovanje? **Q:** Kako dober je generator naključnih števil (RNG)? **Q:** Kako se izračuna menjalni tečaj Bitcoina? **Q:** Kako velika je zmogljivost shranjevanja? **Q:** Kako dolgo traja pošiljanje? **Q:** Koliko ključev lahko shranim? **Q:** Kako vrniti blago? **Q:** Ali ima Nitrokey certifikat Common Criteria ali FIPS? **V:** Ali obstaja pravica do odstopa od pogodbe? **Q:** Ali obstaja garancija? **Q:** Cene in DDV **Q:** Katera so privzeta gesla? **Q:** Za kaj lahko uporabljam ključ Nitrokey? **Q:** Za kaj je potreben administratorski PIN? **Q:** Za kaj je namenjena uporabniška koda PIN? **Q:** Kakšna je največja dolžina kode PIN? **Q:** Za kaj je uporabnik/admin/firmware PIN/geslo? **Q:** Kateri operacijski sistemi so podprti? **Q:** Kateri algoritmi in največja dolžina ključa so podprti? **SO PIN:** SO PIN se uporablja samo v sistemu Nitrokey HSM in je nekaj podobnega kot "glavni" PIN s posebnimi lastnostmi. Pozorno preberite ta navodila, da boste razumeli kodo SO PIN naprave Nitrokey HSM. **SO-PIN** (samo Nitrokey HSM): "3537363231383830" **Uporabniški PIN:** "123456" **Uporabniška koda PIN:** Uporabniška koda PIN je dolga najmanj 6 številk in se uporablja za dostop do vsebine ključa Nitrokey. To je PIN, ki ga boste pogosto uporabljali pri vsakodnevni uporabi, npr. za dešifriranje sporočil, odklepanje šifriranega pomnilnika (samo pomnilnik NK) itd. Ob naročilu naš sistem vzame menjalni tečaj iz blockchain.info in mu doda 10% o. Teh 10% aje za naše stroške obdelave (menjava bitcoinov nazaj v evre) in za tveganje, ki ga prinaša spremenljiv menjalni tečaj. Brainpool 192 Brainpool 256-320 Brainpool 384-521 EU: 2-5 delovnih dni EU: 5-10 delovnih dni Pogosto zastavljena vprašanja Generični Nitrokeys Pogosta vprašanja Nemčija: 1-3 delovni dnevi Nemčija: 2-5 delovnih dni HSM HSM2 Če želite imeti varnostno kopijo ključev, morate na to pomisliti že pri ustvarjanju ključev. Več informacij in možnosti za ustvarjanje ključev najdete v naši :doc:`dokumentaciji <../pro/linux/openpgp>`. V primeru okvare strojne opreme se lahko obrnete na nas in poslali vam bomo nalepko za pošiljanje. Napravo zapakirajte v ovojnico z zračno blazino (ne v navadno ovojnico!). Pošiljki priložite potrdilo o dostavi ali izpis računa. Dodajte opombo o razlogu za vračilo, npr. "Umik od nakupa" ali "Zamenjava zaradi napake". Zadostuje, da razlog zapišete z roko na priloženi račun ali dobavnico. Pošiljko pošljite na naš naslov. Odvisno od tega. Nihče ne more kopirati ključev, ki so shranjeni v ključu Nitrokey. Vendar pa lahko glede na postopek ustvarjanja ključev še vedno shranite varnostno kopijo ključev drugje. NIST-P 192 NIST-P 256 NIST-P 384-521 Nitrokey HSM lahko shrani 20 parov ključev RSA-2048 in 31 parov ključev ECC-256. PIN-i Nitrokey Pro in Storage so lahko dolgi do 20 številk in so lahko sestavljeni iz številk, znakov in posebnih znakov. Opomba: Če uporabljate GnuPG ali OpenSC, lahko uporabite 32 znakov dolge kode PIN, vendar jih aplikacija Nitrokey ne podpira. Nitrokey Pro, Nitrokey HSM in Nitrokey Storage vsebujejo pametno kartico, ki je odporna proti ponarejanju. Do neke mere to velja tudi za Nitrokey U2F, vendar je slabše kakovosti. Sistem Nitrokey Start je vgrajen v mikroprocesor. Nitrokey Pro, Nitrokey Start, Nitrokey HSM in Nitrokey U2F ne omogočajo shranjevanja običajnih podatkov (shranjujejo lahko le kriptografske ključe in potrdila). Nitrokey Storage lahko shrani in šifrira 8, 32 ali 64 GB podatkov (odvisno od posameznega modela). PIN-i Nitrokey Storage so lahko dolgi do 20 številk in so lahko sestavljeni iz številk, znakov in posebnih znakov. Opomba: Če uporabljate GnuPG ali OpenSC, lahko uporabite 32 znakov dolge kode PIN, vendar jih aplikacija Nitrokey ne podpira. Nitrokey U2F hrani en par ključev ECC, vendar se lahko uporablja z neomejenim številom uporabniških računov. Nitrokey namesto gesel uporablja kode PIN. Glavna razlika je v tem, da strojna oprema omejuje število poskusov na tri, medtem ko pri geslih te omejitve ni. Zaradi tega je kratka koda PIN še vedno varna in ni treba izbrati dolge in zapletene kode PIN. Pro + shranjevanje Pro 2 + shranjevanje 2 Za pregled podprtih primerov uporabe glejte `prednjo stran`_. Oglejte si naslednjo tabelo: Za podrobnosti glejte ustrezen pojasnjevalni vprašalnik o izdelku: (@todo dodaj povezave) Pogosta vprašanja o trgovini in dostavi Začetek Podjetje Nitrokey GmbH ima heterogeno bazo strank, tako zasebnih kot poslovnih, iz Nemčije ter znotraj in zunaj EU. S cenami želimo zagotoviti, da bodo vse stranke plačevale enotno ceno. Na primer, velika mednarodna korporacija bi morala plačati prav toliko kot nemška zasebna stranka. V skladu s tem je bruto cena (z DDV) za nemške zasebne stranke enaka neto ceni (brez DDV) za podjetniške stranke v EU in vse stranke zunaj EU. Ta pristop je bil revidiran in je pravno pravilen. Nitrokey Pro, Nitrokey Start in Nitrokey Storage lahko shranijo tri pare ključev RSA. Vsi ključi uporabljajo isto identiteto, vendar se uporabljajo za različne namene: preverjanje pristnosti, šifriranje in podpisovanje. Administratorski PIN ima lahko do 20 številk in drugih znakov (npr. abecednih in posebnih znakov). Ker pa se administratorjev PIN blokira takoj, ko so bili opravljeni trije napačni poskusi PIN, je dovolj varno, če ima samo 8-mestni PIN. Privzeta koda PIN je 12345678. Administratorski PIN je dolg vsaj 8 številk in se uporablja za spreminjanje vsebine/nastavitev naprave Nitrokey. To pomeni, da po inicializaciji ključa Nitrokey tega PIN-a verjetno ne boste prepogosto potrebovali (npr. če želite dodati drugo geslo v sef za gesla ključa Nitrokey Pro ali Nitrokey Storage). Geslo za vdelano programsko opremo ni nikoli blokirano. Napadalec lahko poskuša uganiti geslo in ima na voljo neomejeno število poskusov. Zato morate izbrati močno geslo. Privzeto geslo je 12345678. Strojna oprema varnostnega krmilnika ima certifikat Common Criteria (`Poročilo`_; glej `tu`_, kliknite "ICs, Smart Cards and Smart Card-Related Devices and Systems" in poiščite "NXP Smart Card Controller P5CD081V1A in njegove glavne konfiguracije P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A in P5CD016V1A, vsaka z IC namensko programsko opremo"). Uporabniška koda PIN ima lahko do 20 številk in drugih znakov (npr. abecednih in posebnih znakov). Ker pa se uporabniška koda PIN blokira takoj, ko so bili opravljeni trije napačni poskusi koda PIN, je dovolj varno, če ima le šestmestno kodo PIN. Privzeta koda PIN je 123456. Uporabniška koda PIN je dolga vsaj 6 številk in se uporablja za dostop do vsebine ključa Nitrokey. To je PIN, ki ga boste pogosto uporabljali pri vsakodnevni uporabi, npr. za dešifriranje sporočil, odklepanje šifrirane shrambe (samo shramba NK) itd. Za večino strank je na voljo pravica. Več podrobnosti je na voljo tukaj (https://www.nitrokey.com/right-withdrawal-consumers). Vračilo blaga (npr. Nitrokey): Priporočamo, da pred uporabo ključa Nitrokey te kode PIN/gesla spremenite v vrednosti, ki jih je izbral uporabnik. Windows, Linux in Mac OS X. Windows, Linux in Mac OS X. Nekaj podpore (FIDO2) tudi za sistem Android. Po vsem svetu: 2-3 tedni Po vsem svetu: 5-10 delovnih dni krivulja25519 rsa1024 rsa2048 rsa3072 rsa4096 secp192 secp256 secp521 ✓ 