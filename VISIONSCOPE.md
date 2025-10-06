# Sýn og Afmörkun 

## Númer teymis og höfundar
[Setjið inn númer teymis og fullt nafn höfunda verkefnis]

## Heiti kerfis
[Tími]


## Efnisyfirlit 
- [Breytingasaga](#revision-history)
- [1. Viðskiptakröfur](#1-business-requirements)
    - [1.1 Bakgrunnur](#11-background)
    - [1.2 Viðskiptatækifæri](#12-business-opportunity)
    - [1.3 Viðskiptamarkmið](#13-business-objectives)
    - [1.4 Árangursmælikvarðar ](#14-success-metrics)
    - [1.5 Sýn](#15-vision-statement)
    - [1.6 Viðskiptaáhætta](#16-business-risks)
    - [1.7 Viðskiptaforsendur og háðleiki](#17-business-assumptions-and-dependencies)
- [2. Umfang og takmarkanir](#2-scope-and-limitations)
    - [2.1 Helstu fídusar](#21-major-features)
    - [2.2 Umfang fyrstu útgáfu](#22-scope-of-initial-and-subsequent-releases)
    - [2.3 Takmarkanir og útilokanir](#23-limitations-and-exclusions)
- [3. Samhengi viðskipta](#3-business-context)
    - [3.1 Prófílar hagsmunaaðila](#31-stakeholder-profiles)
    - [3.2 Forgangsröðun verkefnis](#32-project-priorities)
    - [3.3 Innleiðingarsjónarmið](#33-deployment-considerations)

---
> Hver kafli á að vera um það bil hálf síða að lengd.
> 
## 1. Viðskiptakröfur
### 1.1 Bakgrunnur


### 1.2 Viðskiptatækifæri


### 1.3 Viðskiptamarkmið

BO-1:Stytta tíma sem starfsmaður eyðir í skráningu um 25%, 6 mánuðum eftir fyrstu útgáfu.
BO-2:Nákvæmari útreikningur á eldsneytiskostnaði, gert er ráð fyrir að hægt sé að minnka eldneytiskostnað um 5% ári eftir fyrstu útgáfu, 
BO-3:Minnka villur í skráningu kostnaðar og launaútreikningi um 90%, 4 mánuðum eftir fyrstu útgáfu.
BO-4:Stytta þann tíma sem tekur að fá endurgreiðslu á aukakostnaði um 20%, 6 mánuðum eftir fyrstu útgáfu.
BO-5:Styttri tími þar til stjórnendur fá yfirlit yfir vinnutíma, akstur og endurgreiðslur um 10%, 6 mánuðum eftir fyrstu útgáfu.
BO-6:Sleppa tvískráningu á upplýsingum, starfsmaður launadeildar þarf ekki að slá inn upplýsingar, aðeins að yfirfara. 90%, 6 mánuðum eftir fyrstu útgáfu.

### 1.4 Árangurs mælikvarðar


### 1.5 Framtíðarsýn

Tími er farsímaforrit fyrir starfsfólk liðveislu sem þurfa einfalda, örugga og áreiðanlega leið til þess að skrá vinnutíma, akstur og annan kostnað á fljótlegan hátt. Með Tíma getur notandinn skráð sig inn í kerfið þegar hann byrjar að vinna, og skráð sig út þegar vinnu líkur. Tíminn sem hann vinnur skráist sjálfkrafa í kerfið og sendir upplýsingar í miðlægt launakerfi þar sem laun starfsmannsins eru reiknuð. Kerfið getur einnig haldið um akstur á vinnutíma, ef notandinn skráir upphaf og lok aksturs. Upplýsingar um heildarakstur og eldsneytiskostnað eru einnig sendar í miðlægt launakerfi til vinnslu. Kerfið nýtir sér GPS við reikning á akstri. Einnig á notandinn að geta skráð aukakostnað vegna matar og afþreyingar til endurgreiðslu og geta tekið myndir af tengdum kvittunum.  Starfsfólk fær strax yfirsýn yfir unnar klukkustundir og uppsafnaðan akstur og stöðu á endurgreiðslu aukakostnaðar. Viðmótið er hannað fyrir notendur með mismunandi tæknikunnáttu og virkar án nettengingar. Nýja lausnin leysir af hólmi mjög handvirkt ferli. Í dag skráir starfsfólk ferðir, vinnutíma og aukakostnað í mismunandi kerfi eða í dagbók og skilar inn. Starfsmaður launadeildar slær þessar upplýsingar inn í kerfið til þess að reikna laun og endurgreiða kostnað. Kerfið mun gera ferlið mun skilvirkara og minnka villuhættu í innslætti.

### 1.6 Viðskiptaáhætta


### 1.7 Viðskiptaforsendur og háðleiki


---

## 2. Umfang  og takmarkanir 
### 2.1 Helstu fídusar

- FE-1: Stimpla sig inn/út úr vinnu.
- FE-2: Merkja byrjun og lok aksturs.
- FE-3: Sjálfvirk skráning aksturslengdar og hraða.
- FE-4: Útreikningur eldsneytiskostnaðar.
- FE-5: Skráning aukakostnaðar með mynd af kvittun.
- FE-6: Samþætting við launakerfi; allur vinnutími, akstur og aukakostnaður flyst sjálfvirkt í launakerfi.
- FE-7: Yfirlit yfir vinnutíma, akstur og aukakostnað fyrir starfsmenn og yfirmenn.
- FE-8: Yfirlit yfir stöðu aukakostnaðar.
- FE-9: Forritið virkar án nettengingar.

### 2.2 Umfang fyrstu útgáfu

| Feature | Release 1 | Release 2 | Release 3 |
|---|---|---|---|
| FE-1: Stimpla inn/út | Einföld stimplun inn/út í síma. Hægt að leiðrétta ef gleymist. | Áminning og sjálfvirk stimplun út í lok dags og stillanlegar vaktir. | Lausn fullgerð |
| FE-2: Akstur byrja/lok | Byrja/lok hnappur. Handvirk leiðrétting leyfð. | Áminning um að ljúka ferð. | Lausn fullgerð |
| FE-3: Sjálfvirk skráning aksturslengdar og hraða | Grunn útreikningur úr GPS. | Nákvæmari mæling. | Lausn fullgerð |
| FE-4: Útreikningur eldsneytiskostnaðar | Ekki þróað í útgáfu 1 | Reiknað út frá stöðlum. | Lausn fullgerð |
| FE-5: Skráning aukakostnaðar | Ekki þróað í útgáfu 1 | Skrifað er inn dags., verð og útskýring. Tekin er mynd af kvittun. | Útskýring slegin inn. Tekin er mynd af kvittun og dags. og verð fer sjálfkrafa inn. |
| FE-6: Samþætting við launakerfi | Stuðningur við mest notaða launakerfið. | Ekkert | Stuðningur við fleiri launakerfi. |
| FE-7: Yfirlit yfir vinnutíma, akstur og aukakostnað | Yfirlit yfir akstur og vinnutíma. | Ítarlegri skýrslugerð. | Lausn fullgerð |
| FE-8: Yfirlit yfir stöðu aukakostnaðar | Ekki þróað í útgáfu 1 | Sýnileg staða sent / samþykkt / hafnað | Tilkynningar |
| FE-9: Án nettengingar / samstilling | Ekki þróað í útgáfu 1 | Hægt að skrá án nets. Appið geymir gögn og sendir þau sjálfkrafa þegar síminn tengist Wi-Fi. | Lausn fullgerð |

### 2.3 Takmarkanir og útilokanir


---

## 3. Samhengi viðskipta
### 3.1 Prófílar forgangs hagsmunaaðila 
*(Skrifaðu þennan kafla )*

| **Hagsmunaaðili**                         | **Lýsing / Hlutverk**                                                       | **Helstu markmið og væntingar**                                                         | **Ávinningur / Gildi**                                                             | **Viðhorf til kerfisins**                                | **Takmarkanir eða þarfir**                                                                 |
| ----------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | -------------------------------------------------------- | ------------------------------------------------------------------------------------------ |
| **Starfsfólk / launagreiðendur (endanotendur)**             | Starfsfólk sem notar kerfið til að skrá vinnu, keyrslur og senda kvittanir. | Vill að skráning taki stuttan tíma og sé einföld, örugg og áreiðanleg.                  | Sparar tíma, dregur úr mistökum, tryggir rétta launaútreikninga og endurgreiðslur. | Jákvætt ef kerfið er notendavænt og minnkar skrifræði.   | Þarf einfalt og skýrt viðmót, stuðning á síma (iOS/Android) og möguleika á notkun án nets. |
| **Yfirmenn / Umsjónarmenn liðveislu**     | Samþykkja tímaskráningar, akstur og kvittanir starfsfólks.                  | Vill auðvelt yfirlit yfir skráningar og möguleika til að samþykkja eða hafna kvittunum. | Betri yfirsýn, aukin skilvirkni og minni pappírsnotkun.                            | Jákvætt ef kerfið sparar tíma og einfaldar stjórnun.     | Þarf aðgengi að rauntímagögnum og samræmdar skýrslur.                                      |
| **Bókhald / Fjármáladeild**               | Tekur við skýrslum og gögnum fyrir launagreiðslur og endurgreiðslur.        | Vill fá rafrænar, stöðluð gögn sem hægt er að flytja inn í launakerfi.                  | Sparar tíma, minnkar handvirka vinnu og tryggir nákvæma bókhaldsfærslu.            | Jákvætt ef kerfið dregur úr villum og eykur gagnsæi.     | Þarf örugga gagnaskráningu, samhæfni við bókhaldskerfi og GDPR-samræmi.                    |
| **Kerfisstjóri / Tækniaðili**             | Ber ábyrgð á viðhaldi, öryggi og tæknilegri uppfærslu kerfisins.            | Vill að kerfið sé stöðugt, öruggt og auðvelt í viðhaldi.                                | Minni bilanir, stöðugur rekstur og einfalt eftirlit.                               | Jákvætt ef kóðinn er skjalfestur og öruggur.             | Þarf góða skjölun, öryggisafrit og GDPR-samræmi.                                           |
| **Þróunarteymi**                          | Hópur forritara og hönnuða sem sjá um að smíða og uppfæra kerfið.           | Vill skýrar kröfur og reglulegt notendamat til að bæta virkni.                          | Lærdómur, skýr markmið og vönduð lausn.                                            | Jákvætt ef verkefnið er vel skilgreint og viðhaldanlegt. | Takmarkaður tími og fjárhagsrammi, þarf endurgjöf frá notendum.                            |
| **Sveitarfélag / Launagreiðandi stofnun** | Ber ábyrgð á greiðslu launa og endurgreiðslu kostnaðar til starfsfólks.     | Vill fá örugg og rétt gögn frá kerfinu.                                                 | Bætt ferlavinna, minni pappírsnotkun og tryggari launaútreikningar.                | Jákvætt ef kerfið sparar tíma og minnkar villur.         | Þarf samþættingu við launakerfi og rekjanleika gagna.                                      |

]
Setjið gjarnan upp í töflu sbr námsefnið 


### 3.2 Forgangsröðun verkefnis 


### 3.3 Innleiðingarsjónarmið 


## Breytingasaga
<!--
Í stað þess að halda utan um alla commit-sögu er aðeins skráð formleg útgáfa (milestones) með Git tags (merkjum).  
Hver lína í töflunni samsvarar tag (merki) sem hefur verið sett í Git repositoryið.
> 🔖 Revision History er viðhaldið með **Git tags**.  
> Þegar ný útgáfa (t.d. drög eða baseline) er tilbúin, búið til tag í Git (`git tag -a vX.Y -m "message" && git push origin vX.Y`)  
> sem bætir einni línu við í töfluna hér að neðan.
-->
> 🔖 Taflan hér á eftir er búin til með því að keyra shell skrána `updatevisionhistory.sh` í bash terminal
> 
>  `chmod +x updatevisionhistory.sh`
> 
>  `./updatevisionhistory.sh`
> 
>  Ef þú vilt skoða töfluna fyrst til að sjá hvernig hún kemur út geturðu gert eftirfarandi beint úr skelinni 
> `git log -n 5 --pretty=format:"| %an | %ad | %s | %h |" --date=short -n 10 -- VISIONSCOPE.md`


<!-- GIT_HISTORY_START -->
| Author | Date       | Message | Commit |
|--------|------------|---------|--------|
| Ebba Þóra Hvannberg | 2025-09-08 | fyrsta útgáfa og Revision history gert sjálfvirkt | 5b39409 |

<!-- GIT_HISTORY_END -->

> Skoða allt: `git log -- "VISIONSCOPE.md" `
