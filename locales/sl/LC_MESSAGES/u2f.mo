��    d      <              \     ]     y     �  3   �  7   �          9     R  	   r  5   |  G   �  �   �  ]   �  {   	     �	     �	     �	    �	  
   �
     �
            6   -  +   d  �   �  
   ,  �   7  b    �   q  �   :  A  �  �   (  �   �  �   <  �   �  N   �  i   #     �     �  �   �  �   Y     8     J     g     �  �   �  �   1  Z     �   w  D     )   R  �   |  �   >  P   �     :  �   F     2  )   ?  L   i  �   �  ;   C  ;     �   �  2   c  >   �    �  d   �   �   X!  �   �!  �  �"    Y$  Q   w%  �   �%  �   �&  �   j'  =  �'  �   0)  M   �)     D*     T*  /   t*  (   �*  :   �*     +  C   +  �   R+  &   ,  �   ?,  o   �,  �   `-  ~   �-  �   o.  -   �.  C  ,/  �   p0  �   K1    2  }   '3  �   �3    y4     �6     �6     �6  H   �6  >   *7     i7     �7  )   �7     �7  :   �7  P   8  �   d8  R   9  i   e9     �9  '   �9  &   :    <:  
   K;     V;     s;     �;  2   �;  =   �;  �   <     �<    �<  h  �=  �   =?  �   
@  D  �@  �   �B  �   }C  �   D  �   �D  @   �E  g   �E     EF     NF  �   SF  �    G     �G     H  1   H     OH  �   iH  �   �H  T   �I  �   3J  J   �J  $   K  �   BK  �   L  V   �L  
   �L  �   M     �M  1   �M  I   N  �   fN  @   �N  B   ?O  �   �O  '   1P  @   YP    �P  �   �Q  �   ;R  �   �R  �  �S  &  QU  R   xV  �   �V  �   �W  �   gX  <  �X  �   .Z  V   [     ^[  0   r[  A   �[  %   �[  6   \     B\  D   J\  �   �\     `]  �   ]  m   !^  �   �^  �   +_  �   �_  -   F`  n  t`  �   �a  �   �b  �   kc  ~   hd  �   �d   (Nitrokey FIDO U2F - Linux) (Nitrokey FIDO U2F - Windows) (Nitrokey FIDO U2F - macOS) 1. Create a backup user and give it root privileges 2. Set up the ``rules`` to recognize the Nitrokey FIDO2 3. Install ``libpam-u2f`` 4. Prepare the Directory 5. Generate the U2F config file 6. Backup 7. Modify the Pluggable Authentication Module ``PAM`` After copying the file, restart udev via ``sudo service udev restart``. After the PAM module modification, you will be able to test your configuration right away, but it is recommended to reboot your computer, and unplug/replug the Nitrokey FIDO2. Alternatively you can build ``libpam-u2f`` from `Git <https://github.com/phoeagon/pam-u2f>`_. Alternatively you can just modify the ``/etc/pam.d/sudo`` file if you wish to use FIDO U2F when using the ``sudo`` command. And add the following lines: And plug your Nitrokey FIDO2. And restart ``udev`` service By modifying ``/etc/pam.d/common-auth`` file, you will be able to use you Nitrokey FIDO for 2nd factor authentication for graphic login and ``sudo``. Note: ``common-auth`` should be modified by adding the additional configuration line at the end of the file. CLI method Choose your operating system: Click for more options Control flags Create ``.config/Nitrokey/`` under your home directory Desktop Login and Linux User Authentication For individual user configuration you should point to the home directory in the next step, or not include the ``authfile`` option in the PAM configuration. GUI method If ``required`` or ``requisite`` is set, the failure of U2F authentication will cause a failure of the overall authentication. Failure will occur when the configured Nitrokey FIDO is not plugged, lost or destroyed. If the Nitrokey is not accepted immediately, you may need to copy this file `41-nitrokey.rules <https://www.nitrokey.com/sites/default/files/41-nitrokey.rules>`_ to ``etc/udev/rules.d/``. In very rare cases, the system will need the `older version <https://raw.githubusercontent.com/Nitrokey/libnitrokey/master/data/41-nitrokey_old.rules>`_ of this file. If you need more information about Control Flags in the ``PAM`` configuration line, you may see the last section of this guide to understand the difference, and the implications of using each of them. If you often forget to insert the key, ``prompt`` option make ``pam_u2f`` print ``Insert your U2F device, then press ENTER.`` and give you a chance to insert the Nitrokey. If you want to login to you computer using `Nitrokey Pro 2, <https://shop.nitrokey.com/shop/product/nk-pro-2-nitrokey-pro-2-3>`_ `Nitrokey Storage 2 <https://shop.nitrokey.com/shop/product/nitrokey-storage-2-56>`_ and `Nitrokey Start <https://shop.nitrokey.com/shop/product/nk-sta-nitrokey-start-6>`_ you can visit the instructions for Windows available `here <https://www.nitrokey.com/documentation/applications#p:nitrokey-pro&a:computer-login&os:windows>`_, and for Linux `here <https://www.nitrokey.com/documentation/applications#p:nitrokey-pro&a:computer-login&os:linux>`_. If you wish to use FIDO U2F authentication solely for Gnome’s graphic login, you might prefer to modify the\ ``/etc/pam.d/gdm-password`` If you would like to be prompted to touch the Nitrokey, ``cue`` option will make ``pam_u2f`` print ``Please touch the device.`` message. In case you prefer to setup U2F for a single user, and are locked out of your user session, you would still be able to login with the ``<backup_user>``, and proceed with the maintenance. In step 7 we have used the ``sufficient`` control flag to determine the behavior of the PAM module when the Nitrokey is plugged or not. However it is possible to change this behavior by using the following control flags: In the left corner click on ``Unlock`` and that would prompt for your password In the lower left corner click on ``Show Applications`` and type settings in the search bar as following: Instructions Introduction It is recommended to first test the instructions with a single user. For this purpose the previous command takes the ``-u`` option, to specify a user, like in the example below: Log in to the website and enable two-factor authentication in your account settings. (In most cases you will find a link to the documentation of the supported web service at `dongleauth.com <https://www.dongleauth.com/>`_) Nitrokey FIDO U2F Nitrokey FIDO U2F with Linux Nitrokey FIDO U2F with Windows Nitrokey FIDO U2F with macOS Nitrokey FIDO2 configured following `these instructions <https://www.nitrokey.com/documentation/installation#p:nitrokey-fido-u2f&os:linux>`_. Note, the output will be much longer, but sensitive parts have been removed here. For better security, and once the config file generated, we will move the ``.config/Nitrokey`` directory under the ``etc/`` directory with this command: On Ubuntu 20.04 it is possible to download directly ``libpam-u2f`` from the official repos Once done with the preparation, we can start to configure the computer to use the Nitrokey FIDO2 for 2nd factor authentication at login and ``sudo``. Once we modified the ``common-auth``, we can save and exit the file. Once you finish Step 4 you should be done Once you have properly tested the instructions in this guide (and set up a backup), it is recommended to use either the ``required`` or the ``requisite`` control flag instead of ``sufficient``. Once you run the command above, you will need to touch the key while it flashes. Once done, ``pamu2fcfg`` will append its output the ``u2f_keys`` in the following format: Open one of the `websites that support FIDO U2F <https://www.dongleauth.com/>`_. PAM modules Register your Nitrokey FIDO U2F in the account settings by touching the button to activate the Nitrokey FIDO U2F. After you have successfully configured the device, you must activate the Nitrokey FIDO U2F this way each time you log in. Requirements Scroll down in the right bar to ``Users`` Select ``Administrator`` and enter the user name and password of your choice Since we are using Central Authentication Mapping, we need to tell ``pam_u2f`` the location of the file to use with the ``authfile`` option. The Nitrokey App can not be used for the Nitrokey FIDO U2F. The Nitrokey FIDO U2F can be used with any current browser. The Nitrokey FIDO U2F supports **two-factor authentication (2FA)**. With two-factor authentication (2FA), the Nitrokey FIDO U2F is checked in addition to the password. The Output should be something like the following: The file under ``.config/Nitrokey`` must be named ``u2f_keys`` The final step is configure the PAM module files under ``/etc/pam.d/``. In this guide we will modify the ``common-auth`` file as it handles the authentication settings which are common to all services, but other options are possible. You can modify the file with the following command: The first time you plug in the Nitrokey FIDO U2F Windows may need some time to configure the device. The flags ``required`` and ``requisite`` provide a tighter access control, and will make the Nitrokey FIDO2 necessary to login, and/or use the configured service. The following guide can potentially lock you out of your computer. You should be aware of these risks, as it is recommended to first use the instructions below on a secondary computer, or after a full backup. The secure access to such a central software is especially important and can now be realized with the Nitrokey. For this purpose, access is protected by two-factor authentication (2FA) and critical users are given a Nitrokey. From now on the Nitrokey will be checked during user login in addition to the user password. Phishing attacks are thus foiled and your critical company data is protected. The two-factor authentication can be carried out using one-time passwords (TOTP, RFC 6238) and FIDO U2F, thus enabling Nitrokey Pro, Nitrokey Storage and Nitrokey FIDO U2F to be used. It is also possible to configure authentication centrally and to activate it only for selected users. There are several PAM modules files that can be modified according to your needs: This guide will walk you through the configuration of Linux to use FIDO Universal 2nd Factor, i.e. FIDO U2F with ``libpam-u2f`` and `Nitrokey FIDO2 <https://shop.nitrokey.com/shop/product/nk-fi2-nitrokey-fido2-55>`_. This solution was developed together with our partner `initOS <https://www.initos.com/>`_, who are specialized in the development and customization of Odoo. If you are interested, please contact us. This step is optional, however it is advised to have a backup Nitrokey in the case of loss, theft or destruction of your Nitrokey FIDO. To generate the configuration file we will use the ``pamu2fcfg`` utility that comes with the ``libpam-u2f``. For convenience, we will directly write the output of the utility to the ``u2f_keys`` file under ``.config/Nitrokey``. First plug your Nitrokey FIDO2 (if you did not already), and enter the following command: To set up a backup key, repeat the procedure above, and use ``pamu2fcfg -n``. This will omit the ``<username>`` field, and the output can be appended to the line with your ``<username>`` like this: To verify that the library is properly installed enter the following command: Troubleshooting Two-Factor Authentication (2FA) Two-factor authentication for ERP software Odoo Ubuntu 20.04 with Gnome Display Manager. Under ``/etc/udev/rules.d`` download ``41-nitrokey.rules`` Usage Video: Two-Factor-Authentication with the Nitrokey FIDO U2F in Odoo You can also test your configuration by logging out of the user session and logging back. A similar screen should be displayed once you you unplug/replug yout Nitrokey FIDO2 and type your password: You can do so by using these commands: You can test the configuration by typing ``sudo ls`` in the terminal. You should be prompted the message ``Please touch the device.`` and have a similar output on the terminal: You might lose access to your data after configuring `PAM modules <http://www.linux-pam.org/Linux-PAM-html/>`_. You will also lose the ability to use ``sudo`` if you set up Central Authentication Mapping *and* used the ``required`` or ``requisite`` flags. You will lose access to your computer if you mis-configured the PAM module *and* used the ``required`` or ``requisite`` flags. `Checkout <https://www.nitrokey.com/documentation/applications#p:nitrokey-fido-u2f&os:all>`_ the various use cases and supported applications. `Contact <https://www.nitrokey.com/contact>`_ `Odoo <https://www.odoo.com/>`_ is a powerful ERP (Enterprise Resource Planning) software for companies of all sizes. Odoo is available as open source and contains modules for CRM, website/e-commerce, accounting, financial accounting, production, warehouse management, project management, document management, among others. ``optional``: The success or failure of this module is only important if it is the only module in the stack associated with this service+type. The ``optional`` flag is considered to be safe to use for testing purposes. ``required``: This is the most critical flag. The module result must be successful for authentication to continue. This flag can lock you out of your computer if you do not have access to the Nitrokey. ``requisite``: Similar to ``required`` however, in the case where a specific module returns a failure, control is directly returned to the application, or to the superior PAM stack. This flag can also lock you out of your computer if you do not have access to the Nitrokey. ``sufficient``: The module result is ignored if it fails. The ``sufficient`` flag considered to be safe for testing purposes. `nouserok` will ensure that you can still login using the username and password, you might want to remove this at some point once the setup is working and you don't want regular username & password based logins. Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-01-17 14:16+0100
PO-Revision-Date: 2022-01-17 15:11+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: sl
Language-Team: Slovenian <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-u2f/sl/>
Plural-Forms: nplurals=4; plural=n%100==1 ? 0 : n%100==2 ? 1 : n%100==3 || n%100==4 ? 2 : 3
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 (Nitrokey FIDO U2F - Linux) (Nitrokey FIDO U2F - Windows) (Nitrokey FIDO U2F - macOS) 1. Ustvarite uporabnika za varnostno kopiranje in mu dajte pravice root. 2. Nastavite ``rules`` za prepoznavanje naprave Nitrokey FIDO2 3. Namestitev ``libpam-u2f`` 4. Priprava imenika 5. Ustvarite konfiguracijsko datoteko U2F 6. Varnostna kopija 7. Spreminjanje vtičnega avtentikacijskega modula ``PAM`` Po kopiranju datoteke ponovno zaženite udev prek ``sudo service udev restart``. Po spremembi modula PAM boste lahko takoj preizkusili konfiguracijo, vendar je priporočljivo, da znova zaženete računalnik in odklopite/vključite napravo Nitrokey FIDO2. Lahko pa sestavite ``libpam-u2f`` iz `Git <https://github.com/phoeagon/pam-u2f>`_. Če želite pri uporabi ukaza ``/etc/pam.d/sudo`` uporabiti FIDO U2F, lahko spremenite datoteko ``sudo``. In dodajte naslednje vrstice: In priključite napravo Nitrokey FIDO2. In ponovno zaženite ``udev`` storitev S spremembo datoteke ``/etc/pam.d/common-auth`` boste lahko uporabljali Nitrokey FIDO za preverjanje pristnosti drugega faktorja za grafično prijavo in ``sudo``. Opomba: ``common-auth`` je treba spremeniti z dodajanjem dodatne konfiguracijske vrstice na koncu datoteke. Metoda CLI Izberite operacijski sistem: Kliknite za več možnosti Kontrolne oznake Ustvarite ``.config/Nitrokey/`` v domačem imeniku Prijava v namizje in preverjanje pristnosti uporabnika Linuxa Za konfiguracijo posameznega uporabnika morate v naslednjem koraku pokazati na domači imenik ali pa v konfiguracijo PAM ne vključite možnosti ``authfile``. Metoda grafičnega vmesnika Če je nastavljena vrednost ``required`` ali ``requisite``, bo neuspešno preverjanje pristnosti U2F povzročilo neuspešno celotno preverjanje pristnosti. Do neuspeha bo prišlo, če konfiguriranega ključa Nitrokey FIDO ne priključite, ga izgubite ali uničite. Če ključ Nitrokey ni sprejet takoj, boste morda morali to datoteko `41-nitrokey.rules <https://www.nitrokey.com/sites/default/files/41-nitrokey.rules>`_ kopirati v ``etc/udev/rules.d/``. V zelo redkih primerih bo sistem potreboval `starejšo različico <https://raw.githubusercontent.com/Nitrokey/libnitrokey/master/data/41-nitrokey_old.rules>`_ te datoteke. Če potrebujete več informacij o kontrolnih zastavicah v konfiguracijski vrstici ``PAM``, si lahko ogledate zadnji razdelek tega priročnika, da boste razumeli razliko in posledice uporabe vsake od njih. Če pogosto pozabite vstaviti ključ, ``prompt`` možnost ``pam_u2f`` izpiše ``Insert your U2F device, then press ENTER.`` in vam da možnost vstaviti Nitrokey. Če se želite v računalnik prijaviti z `Nitrokey Pro 2, <https://shop.nitrokey.com/shop/product/nk-pro-2-nitrokey-pro-2-3>`_ `Nitrokey Storage 2 <https://shop.nitrokey.com/shop/product/nitrokey-storage-2-56>`_ in `Nitrokey Start <https://shop.nitrokey.com/shop/product/nk-sta-nitrokey-start-6>`_ si lahko ogledate navodila za sistem Windows, ki so na voljo `tudi <https://www.nitrokey.com/documentation/applications#p:nitrokey-pro&a:computer-login&os:windows>`_, in za Linux `tudi <https://www.nitrokey.com/documentation/applications#p:nitrokey-pro&a:computer-login&os:linux>`_. Če želite avtentikacijo FIDO U2F uporabljati samo za grafično prijavo v okolju Gnome, morda raje spremenite\ ``/etc/pam.d/gdm-password`` Če želite, da se vam prikaže poziv za dotik tipke Nitrokey, ``cue`` možnost bo ``pam_u2f`` natisnila ``Please touch the device.`` sporočilo. Če želite nastaviti U2F za posameznega uporabnika in ste zaklenjeni iz uporabniške seje, se lahko še vedno prijavite z ``<backup_user>`` in nadaljujete z vzdrževanjem. V koraku 7 smo uporabili kontrolno zastavico ``sufficient`` za določitev obnašanja modula PAM, ko je ključ Nitrokey priključen ali ne. Vendar je to obnašanje mogoče spremeniti z uporabo naslednjih kontrolnih zastavic: V levem kotu kliknite ``Unlock`` in to bo zahtevalo vaše geslo. V spodnjem levem kotu kliknite ``Show Applications`` in v iskalno vrstico vnesite naslednje nastavitve: Navodila Uvod Priporočljivo je, da navodila najprej preizkusite z enim uporabnikom. V ta namen prejšnji ukaz uporablja možnost ``-u`` za določitev uporabnika, kot v spodnjem primeru: Prijavite se v spletno mesto in v nastavitvah računa omogočite dvostopenjsko preverjanje pristnosti. (V večini primerov boste povezavo do dokumentacije podprte spletne storitve našli na `dongleauth.com <https://www.dongleauth.com/>`_) Nitrokey FIDO U2F Nitrokey FIDO U2F z Linuxom Nitrokey FIDO U2F z operacijskim sistemom Windows Nitrokey FIDO U2F z macOS Nitrokey FIDO2 konfiguriran po `teh navodilih <https://www.nitrokey.com/documentation/installation#p:nitrokey-fido-u2f&os:linux>`_. Upoštevajte, da bo rezultat veliko daljši, vendar so bili občutljivi deli tukaj odstranjeni. Zaradi boljše varnosti in po generiranju konfiguracijske datoteke bomo imenik ``.config/Nitrokey`` s tem ukazom premaknili pod imenik ``etc/``: V Ubuntuju 20.04 je mogoče prenesti neposredno ``libpam-u2f`` iz uradnih skladišč Ko končamo s pripravo, lahko začnemo konfigurirati računalnik za uporabo Nitrokey FIDO2 za preverjanje pristnosti drugega dejavnika ob prijavi in ``sudo``. Ko smo spremenili ``common-auth``, lahko shranimo in zaključimo datoteko. Ko končate korak 4, morate končati Ko ste pravilno preizkusili navodila v tem priročniku (in ustvarili varnostno kopijo), je priporočljivo, da namesto ``required`` ali ``requisite`` uporabite kontrolno zastavico ``sufficient``. Ko zaženete zgornji ukaz, se morate dotakniti tipke, medtem ko utripa. Ko to storite, bo ``pamu2fcfg`` dodal svoj izpis ``u2f_keys`` v naslednji obliki: Odprite eno od ` spletnih mest, ki podpirajo FIDO U2F <https://www.dongleauth.com/>`_. Moduli PAM V nastavitvah računa registrirajte Nitrokey FIDO U2F tako, da se dotaknete gumba za aktivacijo Nitrokey FIDO U2F. Ko napravo uspešno konfigurirate, morate napravo Nitrokey FIDO U2F na ta način aktivirati ob vsaki prijavi. Zahteve V desni vrstici se pomaknite navzdol do ``Users`` Izberite ``Administrator`` ter vnesite izbrano uporabniško ime in geslo. Ker uporabljamo centralno kartiranje avtentikacije, moramo ``pam_u2f`` sporočiti lokacijo datoteke, ki jo želimo uporabiti z možnostjo ``authfile``. Aplikacije Nitrokey ni mogoče uporabljati za Nitrokey FIDO U2F. Nitrokey FIDO U2F lahko uporabljate z vsemi trenutnimi brskalniki. Nitrokey FIDO U2F podpira **dvofaktorsko preverjanje pristnosti (2FA)**. Pri dvofaktorskem preverjanju pristnosti (2FA) se poleg gesla preverja tudi ključ Nitrokey FIDO U2F. Rezultat mora biti podoben naslednjemu: Datoteka pod ``.config/Nitrokey`` se mora imenovati ``u2f_keys`` Zadnji korak je konfiguriranje datotek modula PAM pod ``/etc/pam.d/``. V tem vodniku bomo spremenili datoteko ``common-auth``, saj obdeluje nastavitve avtentikacije, ki so skupne vsem storitvam, vendar so mogoče tudi druge možnosti. Datoteko lahko spremenite z naslednjim ukazom: Ko prvič priključite napravo Nitrokey FIDO U2F, bo operacijski sistem Windows morda potreboval nekaj časa za konfiguracijo naprave. Zastavi ``required`` in ``requisite`` omogočata strožji nadzor dostopa in za prijavo in/ali uporabo konfigurirane storitve je potreben Nitrokey FIDO2. Naslednji vodnik vas lahko zaklene iz računalnika. Teh tveganj se morate zavedati, saj je priporočljivo, da spodnja navodila najprej uporabite na sekundarnem računalniku ali po popolni varnostni kopiji. Varen dostop do takšne osrednje programske opreme je še posebej pomemben in zdaj ga lahko uresničite z Nitrokey. V ta namen je dostop zaščiten z dvofaktorskim preverjanjem pristnosti (2FA), kritični uporabniki pa dobijo ključ Nitrokey. Odslej se bo poleg uporabniškega gesla med prijavo uporabnika preverjal tudi ključ Nitrokey. S tem so preprečeni napadi ribarjenja, vaši ključni podatki o podjetju pa so zaščiteni. Dvostopenjsko preverjanje pristnosti je mogoče izvajati z enkratnimi gesli (TOTP, RFC 6238) in FIDO U2F, kar omogoča uporabo naprav Nitrokey Pro, Nitrokey Storage in Nitrokey FIDO U2F. Preverjanje pristnosti je mogoče konfigurirati tudi centralno in ga aktivirati samo za izbrane uporabnike. Obstaja več datotek z moduli PAM, ki jih lahko spremenite glede na svoje potrebe: Ta vodnik vas bo popeljal skozi konfiguracijo sistema Linux za uporabo univerzalnega drugega faktorja FIDO, tj. FIDO U2F z ``libpam-u2f`` in `Nitrokey FIDO2 <https://shop.nitrokey.com/shop/product/nk-fi2-nitrokey-fido2-55>`_. To rešitev smo razvili skupaj z našim partnerjem `initOS <https://www.initos.com/>`_, ki je specializiran za razvoj in prilagoditev sistema Odoo. Če vas to zanima, se obrnite na nas. Ta korak ni obvezen, vendar je priporočljivo imeti rezervni ključ Nitrokey za primer izgube, kraje ali uničenja ključa Nitrokey FIDO. Za ustvarjanje konfiguracijske datoteke bomo uporabili ``pamu2fcfg`` pripomoček, ki je priložen ``libpam-u2f``. Zaradi priročnosti bomo izhod pripomočka neposredno zapisali v datoteko ``u2f_keys`` pod ``.config/Nitrokey``. Najprej priključite napravo Nitrokey FIDO2 (če je še niste) in vnesite naslednji ukaz: Če želite nastaviti rezervni ključ, ponovite zgornji postopek in uporabite ``pamu2fcfg -n``. Pri tem boste izpustili polje ``<username>``, izhod pa lahko dodate vrstici z vašim ``<username>`` na naslednji način: Če želite preveriti, ali je knjižnica pravilno nameščena, vnesite naslednji ukaz: Odpravljanje težav Preverjanje pristnosti z dvema dejavnikoma (2FA) Dvofaktorsko preverjanje pristnosti za programsko opremo ERP Odoo Ubuntu 20.04 z Gnome Display Manager. Pod ``/etc/udev/rules.d`` prenos ``41-nitrokey.rules`` Uporaba Videoposnetek: Dvofaktorska avtentikacija z Nitrokey FIDO U2F v Odoo Konfiguracijo lahko preizkusite tudi tako, da se odjavite iz uporabniške seje in se ponovno prijavite. Podoben zaslon bi se moral prikazati, ko odklopite/priključite napravo Nitrokey FIDO2 in vnesete geslo: To lahko storite s temi ukazi: Konfiguracijo lahko preizkusite tako, da v terminal vnesete ``sudo ls``. Prikazati se mora sporočilo ``Please touch the device.`` in podoben izpis na terminalu: Po konfiguraciji modulov `PAM <http://www.linux-pam.org/Linux-PAM-html/>`_ lahko izgubite dostop do podatkov. Prav tako boste izgubili možnost uporabe ``sudo``, če nastavite centralno kartiranje avtentikacije. *in* uporabili oznake ``required`` ali ``requisite``. Če ste napačno konfigurirali modul PAM *in* uporabili oznake ``required`` ali ``requisite``, boste izgubili dostop do računalnika. `Prijavite se <https://www.nitrokey.com/documentation/applications#p:nitrokey-fido-u2f&os:all>`_ na različne primere uporabe in podprte aplikacije. `Kontakt <https://www.nitrokey.com/contact>`_ `Odoo <https://www.odoo.com/>`_ je zmogljiva programska oprema ERP (Enterprise Resource Planning) za podjetja vseh velikosti. Odoo je na voljo kot odprtokodni program in med drugim vsebuje module za CRM, spletno mesto/elektronsko trgovino, računovodstvo, finančno računovodstvo, proizvodnjo, upravljanje skladišča, upravljanje projektov, upravljanje dokumentov. ``optional``: Uspeh ali neuspeh tega modula je pomemben le, če je to edini modul v nizu, povezan s tem tipom storitve+. Oznaka ``optional`` velja za varno za uporabo v namene testiranja. ``required``: To je najbolj kritična zastavica. Rezultat modula mora biti uspešen, da se avtentikacija nadaljuje. Ta zastavica vas lahko zaklene iz računalnika, če nimate dostopa do ključa Nitrokey. ``requisite``: Podobno kot pri ``required``, vendar se v primeru, ko določen modul vrne neuspeh, nadzor neposredno vrne aplikaciji ali nadrejenemu skladu PAM. Ta zastavica vas lahko tudi zaklene iz računalnika, če nimate dostopa do ključa Nitrokey. ``sufficient``: Rezultat modula se ne upošteva, če je neuspešen. Oznaka ``sufficient`` velja za varno za namene testiranja. `nouserok` bo zagotovil, da se lahko še vedno prijavite z uporabniškim imenom in geslom, kar boste morda želeli odstraniti, ko bo nastavitev delovala in ne boste želeli rednih prijav z uporabniškim imenom in geslom. 