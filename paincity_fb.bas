




'DRUECKE F5 UM ZU STARTEN !!!






SOUND$ = "1"
h:
CLS
COLOR 18
LOCATE 2, 23
PRINT "* Mathias Holzer's PAIN - CITY *"
LOCATE 3, 35
PRINT DATE$
COLOR 15
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "             H |                                               | H"
PRINT "             A |                                               | A"
PRINT "             U |            (1) Neues Spiel starten            | U"
PRINT "             P |            (2) Intro abspielen                | P"
PRINT "             T |            (3) Passwort eingeben              | T"
PRINT "             M |            (4) Optionen                       | M"
PRINT "             E |            (5) Ende =>                        | E"
PRINT "             N |                                               | N"
PRINT "             Ü |                                               | Ü"
PRINT
PRINT
PRINT
PRINT
INPUT "           W  A  S      W  I  L  L  S  T      D  U      T  U  N    "; Haupt$
IF Haupt$ = "5" THEN GOTO credits
IF Haupt$ = "1" THEN GOTO level1
IF Haupt$ = "2" THEN GOTO intro
IF Haupt$ = "3" THEN GOTO passwort
IF Haupt$ = "4" THEN GOTO options
GOTO h
options:
CLS
PRINT
PRINT
PRINT
PRINT
PRINT
COLOR 15
PRINT "                                   OPTIONEN:"
COLOR 19
PRINT "                                  ***********"
PRINT
COLOR 15
PRINT "                                      --"
COLOR 4
PRINT "                            (0) Sound ausgeschaltet"
COLOR 9
PRINT "                            (1) Sound eingeschaltet"
COLOR 17
PRINT "                            Aktuelle Einstellung: "; SOUND$
COLOR 15
PRINT "                                      --"
COLOR 2
PRINT "                                 (9) Abrechen"
COLOR 15
PRINT "                                      --"
PRINT
INPUT "                                Ihre Wahl: ", opt$
IF opt$ = "0" THEN SOUND$ = "0"
IF opt$ = "1" THEN SOUND$ = "1"
IF opt$ = "9" THEN GOTO h ELSE GOTO options
intro:
CLS
SCREEN 12
COLOR 9
FOR col = 0 TO 639 STEP 3
  FOR row = 0 TO 479 STEP 2
   PSET (col, row)
  NEXT row
NEXT col
CLS
COLOR 9
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "                               * PAIN - CITY *"
COLOR 7
PRINT
PRINT "                               * PAIN - CITY *"
COLOR 9
PRINT
PRINT "                               * PAIN - CITY *"
CLS
COLOR 15
LOCATE 13, 14
PRINT "C r e a t e d   b y :    M A T H I A S   H O L Z E R"
FOR col = 0 TO 639 STEP 3
  FOR row = 0 TO 479 STEP 2
   PRESET (col, row)
  NEXT row
NEXT col
SCREEN 0
GOTO h
passwort:
'
CLS
COLOR 15
PRINT
PRINT "                       P A S S W O R T - E I N G A B E"
COLOR 4
PRINT "================================================================================"
COLOR 15
PRINT
PRINT "  GIB  HIER  DAS  PASSWORT  EIN :"
PRINT "  ('H' zur Rückkehr zum Hauptmenü)"
INPUT "   ", passwort$
IF passwort$ = "h" OR passwort$ = "H" THEN GOTO h
IF passwort$ = "horr 2000" OR passwort$ = "HORR 2000" THEN 3
IF passwort$ = "BUNNY" OR passwort$ = "bunny" OR passwort$ = "Bunny" THEN GOTO level2
IF passwort$ = "WUFF" OR passwort$ = "Wuff" OR passwort$ = "wuff" THEN 76
IF passwort$ = "SUPERRAKETE" OR passwort$ = "superrakete" OR passwort$ = "Superrakete" THEN GOTO level3
IF passwort$ = "DRECKSMUSCHI" OR passwort$ = "drecksmuschi" OR passwort$ = "Drecksmuschi" THEN 144
IF passwort$ = "GITZ" OR passwort$ = "gitz" OR passwort$ = "Gitz" THEN GOTO level4
GOTO passwort
level1:
CLS
PRINT
COLOR 6
PRINT " =========== "
PRINT " = LEVEL 1 = "
PRINT " =========== "
COLOR 2
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "                               ********************* "
PRINT "                               ********************* "
PRINT "                               ***   DIE STADT   *** "
PRINT "                               ********************* "
PRINT "                               ********************* "
s1:
SLEEP 3
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
COLOR 15
PRINT
PRINT " Um 19:40 Uhr fährst du mit deinem giftgrünen Ferrari "
PRINT " auf der Landstraße in Richtung Lunix, als plötzlich "
PRINT " einer der Reifen platzt. Du hast dein Auto nicht mehr "
PRINT " unter Kontrolle und knallst gegen einen Baum. Dann "
PRINT " wird es plötzlich schwarz vor deinen Augen... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
PRINT
PRINT " Als du wieder aufwachst, liegst du vor einem "
PRINT " vergammelten Ortsschild auf dem in kaum lesbaren "
PRINT " Buchstaben steht: "
PRINT "            PAIN - CITY "
PRINT "    Bürgermeister: Gill Bates"
PRINT " Du siehst auf deine Uhr und bemerkst das es schon "
PRINT " 23:40 Uhr ist. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
1
CLS
PRINT
PRINT " Hier schon mal eine kleine Rechenaufgabe: "
PRINT
PRINT " Du warst also wie viele Minuten "
PRINT " bewusstlos (Bsp: '23' oder '360')? "
INPUT " ", a$
IF a$ = "" THEN 1
IF a$ = "240" THEN 2
GOTO 999
2
CLS
PRINT
PRINT " Na, ja. So schwer war die "
PRINT " Aufgabe ja nun nicht. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
PRINT
PRINT " Nachdem du wieder einigermaßen in Ordnung "
PRINT " bist und dir klar geworden ist, wie lange du "
PRINT " bewusstlos warst, machst du dich auf die Suche "
PRINT " nach dem Rathaus, um nach einer Übernachtungs= "
PRINT " möglichkeit und einer Autowerkstatt zu fragen. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
COLOR 3
PRINT
PRINT " Hier schon mal ein kleines "
PRINT " Passwort (bitte notieren): "
PRINT
PRINT " HORR 2000 "
PRINT
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
GOTO 3
3
CLS
COLOR 15
PRINT
PRINT " Du bewegst dich zur Straße hin und gehst in "
PRINT " Richtung Ortsmitte. Dann stehst du vor einer "
PRINT " Kreuzung. An der Straße nach links steht ein "
PRINT " Schild mit der Aufschrift: 'Hospital', rechts "
PRINT " ein Schild mit der Aufschrift: 'Polizei'. "
PRINT " An der Straße gegenüber von dir steht ein Schild "
PRINT " mit einer nicht indentifizierbaren Aufschrift. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
4
CLS
PRINT
PRINT " Tja, wo hin nu ??? "
PRINT
PRINT " (1) nach links, Richtung Hospital "
PRINT " (2) gerade aus "
PRINT " (3) nach rechts, Richtung Polizei "
PRINT
INPUT "  ", a$
IF a$ = "1" THEN 5
IF a$ = "2" THEN 6
IF a$ = "3" THEN 16
GOTO 4
5
CLS
PRINT
PRINT " Als du um die Ecke gehst, stehst "
PRINT " du plötzlich vor einer riesen Horde "
PRINT " von Zombies, die vom Hospital kommen..."
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
PRINT
PRINT " Was nun? "
PRINT " Ja was denn wohl?! "
PRINT
PRINT " Zwei der Zombies spucken dich an, "
PRINT " du verspührst einen schrecklichen "
PRINT " Schmerz und fällst tot um. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
GOTO 999
6
CLS
PRINT
PRINT " Du gehst also gerade aus. Du "
PRINT " siehst eine Reihe von zerfallenen "
PRINT " Häusern. In einem Haus entdeckst du "
PRINT " einen Dolch, und da du alle Arten "
PRINT " von Messern sammelst und du keinen "
PRINT " Menschen weit und breit sieht, nimmst "
PRINT " du den Dolch mit. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
7
CLS
PRINT
PRINT " Plötzlich springt ein hasen-ähnliches "
PRINT " Zombie auf dich zu und es scheint dich "
PRINT " angreifen zu wollen."
PRINT
PRINT
PRINT " Was willst du jetzt tun? "
PRINT
PRINT " (1) Weglaufen (Achtung: Rutschgefahr) "
PRINT " (2) Mit dem Dolch angreifen "
PRINT " (3) Dein Laserschwert aus der Tasche "
PRINT "     holen und das Zombie zerstückeln "
PRINT
INPUT "  ", a$
IF a$ = "1" THEN 8
IF a$ = "3" THEN 9
IF a$ = "2" THEN 10
GOTO 7
8
CLS
PRINT
PRINT " Tja, ich hab' dich gewarnt, "
PRINT " aber du wolltest ja nicht auf "
PRINT " mich hören. "
PRINT
PRINT " Du rutschst auf einem Haufen "
PRINT " Hundekot aus, und brichst dir "
PRINT " dein Genick. "
PRINT
PRINT " Na dann, asta la vista, baby !!! "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
GOTO 999
9
CLS
PRINT
PRINT " Bist du blöd oder was ??? "
PRINT
PRINT " Denkst du wirklich, du hättest "
PRINT " ein Laserschwert ??? "
PRINT " Das Hasen-Zombie beisst dir ins "
PRINT " Bein und vergiftet dich dabei. "
PRINT " Du spürst wie sich ein schreck= "
PRINT " licher Schmerz langsam von deinem "
PRINT " Bein zum Herzen hochzieht. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
GOTO 999
10
CLS
PRINT
PRINT " Du wedelst ein bisschen mit"
PRINT " dem Dolch in der Luft herum, "
PRINT " um das Hasen-Zombie abzulenken, "
PRINT " und stichst zu. Mitten ins Herz. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
PRINT
PRINT " Puuuuuhhhhh, "
PRINT " nochmal Glück gehabt. "
PRINT
PRINT " Da du das Zombie ins Herz "
PRINT " getroffen hast, fällt es tot "
PRINT " um. "
PRINT " Wozu so ein kleiner Dolch "
PRINT " alles gut sein kann !!! "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
PRINT
PRINT " Als du gerade aus weiter gehst, "
PRINT " triffst du einen total vergammel= "
PRINT " ten, alten Mann, der kurz vor dem "
PRINT " Tod steht. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
PRINT
PRINT " Der alte Mann fängt an, "
PRINT " mit dir zu reden: "
PRINT
PRINT " Er: Verschwinde aus dieser Stadt "
PRINT "     und rette dein leben !!! "
PRINT " Du: Wieso? Was ist hier passiert? "
PRINT " Er: Der Chemie-Professor Dr. Wittlich "
PRINT "     hat ausversehen eine giftige Substanz "
PRINT "     verschüttet, die ins Grundwasse... "
PRINT " Du: Die was? Was ist mit der giftigen "
PRINT "     Substanz passiert? Sagen Sie doch! "
PRINT
PRINT " Doch der alte Mann kann dir schon keine "
PRINT " Antwort mehr geben, da er gerade gestorben"
PRINT " ist... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
11
CLS
PRINT
PRINT " Der alte Mann wollte dir wahr= "
PRINT " scheinlich sagen, dass diese giftige "
PRINT " Substanz ins Grundwasser geraten ist. "
PRINT " Er ist höchst wahrscheinlich auch mit "
PRINT " dieser Substanz in Berührung gekommen. "
PRINT
PRINT
PRINT " Nun, was nun (hups, Wiederholung)... ? "
PRINT
PRINT " (1) Ich hab' keine Lust mehr und höre auf "
PRINT " (2) Ich geh' gerade aus weiter "
PRINT " (3) Ich geh' zurück zur Kreuzung "
PRINT
INPUT "  ", a$
IF a$ = "1" THEN GOTO h
IF a$ = "2" THEN 12
IF a$ = "3" THEN 14
GOTO 11
12
CLS
PRINT
PRINT " Du gehst, und gehst und gehst... "
PRINT " Aber du siehst nichts auffälliges. "
PRINT " Dann stehst du vor einer Mauer, "
PRINT " über die du nicht hinaus kommst. "
PRINT " War wohl 'ne Sackgasse !!! "
PRINT
PRINT
PRINT " Watt jetz??? "
PRINT
PRINT " (1) Zurück zur Kreuzung "
PRINT " (2) Ich hör' auf "
PRINT
INPUT "  ", a$
IF a$ = "2" THEN 13
IF a$ = "1" THEN 14
GOTO 12
13
CLS
GOTO h
14
CLS
PRINT
PRINT " Tja, wo hin nu ??? "
PRINT
PRINT " (1) nach links, Richtung Hospital "
PRINT " (2) nach rechts, Richtung Polizei "
PRINT
INPUT "  ", a$
IF a$ = "1" THEN 5
IF a$ = "2" THEN 16
GOTO 14
16
CLS
PRINT
PRINT " Nach ein paar Hundert Metern "
PRINT " kommst du zum Polizeirevier. "
PRINT " Da du so schnell wie möglich von "
PRINT " hier weg willst, betrittst du das "
PRINT " Gebäude, um nach einem Autoverleih "
PRINT " oder etwas ähnlichem zu fragen. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
PRINT
PRINT " Als du in das Polizeigebäude eintrittst, "
PRINT " fliegt plötzlich etwas auf dich zu und "
PRINT " trifft dich hart am Kopf. "
PRINT " Was dann passiert kannst du dir ja denken. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
PRINT
PRINT " Nein! Tot bist du nicht !!! "
PRINT " Du warst nur wieder bewusstlos. "
PRINT
PRINT " Als du aufwachst, liegst du neben "
PRINT " einem Polizisten, der gerade gegen "
PRINT " einen tollwütigen Hund kämpft. "
PRINT " Der Hund zerfleischt den Polizisten "
PRINT " total und will jetzt dich angreifen. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
17
CLS
PRINT
PRINT " What do you want to do today? "
PRINT " ... 'Tschuldigung, ich meine natürlich: "
PRINT " Was machst du jetzt? "
PRINT
PRINT " (1) Zu dem Hund sagen, er soll sitz machen "
PRINT " (2) Die Knarre vom Polizisten nehmen "
PRINT "     und wild um dich ballern "
PRINT " (3) Mit dem guten alten Dolch angreifen "
PRINT
INPUT "  ", a$
IF a$ = "1" THEN 18
IF a$ = "2" THEN 19
IF a$ = "3" THEN 20
GOTO 17
18
CLS
PRINT
PRINT " Denkst du ein tollwütiger "
PRINT " Hund hört auf dich wenn du 'sitz' "
PRINT " sagst?! Oh Mann, oh Mann... "
PRINT " Was jetzt passiert kannst du dir "
PRINT " wohl selbst denken... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
GOTO 999
19
CLS
PRINT
PRINT " Tut mir leid, aber in der "
PRINT " Knarre ist keine Munition mehr! "
PRINT
PRINT " Der Hund springt dich an und zerfetzt "
PRINT " dich in (warte mal... 1, 2, 3, 4...) 27 "
PRINT " Stücke... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
GOTO 999
20
CLS
PRINT
PRINT " Du streifst den Hund nur gerade "
PRINT " mal so, doch er läuft seltsamer Weise "
PRINT " davon. Also aufgepasst, er könnte wieder "
PRINT " kommen... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
21
CLS
COLOR 15
PRINT
PRINT " Hier nochmal zwei Fragen: "
PRINT
PRINT " (1) Wieder zurück auf die Straße? "
PRINT "     O D E R : "
PRINT " (2) Gebäude untersuchen?"
PRINT
INPUT "  ", a$
IF a$ = "2" THEN 22
IF a$ = "1" THEN 32
GOTO 21
22
CLS
PRINT
PRINT " Du entdeckst nichts außergewöhliches, "
PRINT " nur massig Akten, ein paar Uniformen... "
PRINT " Oder doch: Ein Teil der Wand gegenüber "
PRINT " der Tür ist wahrscheinlich hohl. "
PRINT " Neben der hohlen Wand hängt ein Kerzen= "
PRINT " ständer... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
23
CLS
PRINT
PRINT " Was willst du nun tun? (COOL: Ein Reim) "
PRINT
PRINT " (1) Den Kerzenständer um 90° nach rechts drehen "
PRINT " (2) Den Kerzenständer um 90° nach links drehen "
PRINT " (3) Wieder zurück zur Straße gehen "
PRINT
INPUT "  ", a$
IF a$ = "1" OR a$ = "2" THEN 24
IF a$ = "3" THEN 32
GOTO 23
24
CLS
PRINT
PRINT " Es fängt an zu knarren und die "
PRINT " Wand dreht sich um 45° nach links. "
PRINT " Vor dir steht ein kleines, friedlich "
PRINT " aussehendes Alien... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
SCREEN 12
COLOR 4
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "                                        ### "
PRINT "                                     ##     ## "
PRINT "                                    ##  * *  ## "
PRINT "                                    ##       ## "
PRINT "                                    ##   +   ## "
PRINT "                                    ## `---ï ## "
PRINT "                                     ##     ## "
PRINT "                                        ###      `   ï"
PRINT "                                         #        ` ï"
PRINT "                                       #####       | "
PRINT "                                     ##     ##    - "
PRINT "                                  ###         #--- "
PRINT "                                 ##             ## "
PRINT "                                 ##             ## "
PRINT "                                 ##      *      ## "
PRINT "                                  ##           ## "
PRINT "                                     ##     ## "
PRINT "                                       ##### "
PRINT "                                       #   # "
PRINT "                                      ##   ## "
SLEEP 3
25
SCREEN 0
CLS
COLOR 15
PRINT
PRINT " Watt willste mache? "
PRINT
PRINT " (1) Mit dem Alien reden "
PRINT " (2) Das Alien angreifen "
PRINT " (3) Zurück zur Straße gehen "
PRINT
INPUT "  ", a$
IF a$ = "2" THEN 26
IF a$ = "1" THEN 28
IF a$ = "3" THEN 32
GOTO 25
26
CLS
PRINT
PRINT " Du zückst deinen Dolch "
PRINT " und stichst zu... "
PRINT " Doch der Dolch geht durch "
PRINT " das Alien hindurch und dieses "
PRINT " wird ganz langsam unsichtbar. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
27
CLS
PRINT
PRINT " Pech gehabt! "
PRINT " Das Alien ist jetzt unsichtbar. "
PRINT " Was machst du jetzt? "
PRINT
PRINT " (1) Zurück zur Straße gehen "
PRINT " (2) Zurück zum Hauptmenü "
PRINT
INPUT "  ", a$
IF a$ = "1" THEN 32
IF a$ = "2" THEN GOTO h
GOTO 27
28
CLS
PRINT
PRINT " Du sprichst also mit dem Alien: "
PRINT
PRINT " DU: Was machst du hier? Wie "
PRINT "     bist du hier her gekommen? "
PRINT " ES: Peace! Peace, peace! "
PRINT " DU: Was? Was meinst du? "
PRINT " ES: Peace! Peace! Peace! "
PRINT " DU: Kannst du nur 'Peace' sagen? "
PRINT " ES: Pea... "
PRINT
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
29
CLS
PRINT
PRINT " Tja, das Alien löst sich "
PRINT " in Luft auf. "
PRINT
PRINT " Was jetzt? "
PRINT
PRINT " (1) Aufhören (zurück zum Hauptmenü) "
PRINT " (2) Zurück zur Straße "
PRINT
INPUT "  ", a$
IF a$ = "1" THEN GOTO h
IF a$ = "2" THEN 32
GOTO 29
32
CLS
PRINT
PRINT " Du gehst gerade aus weiter "
PRINT " und gelangst zu einem großen, "
PRINT " aus rotem Gestein gebauten "
PRINT " Gebäude. Du denkst es könnte "
PRINT " das Rathaus sein und betrittst "
PRINT " das unheimliche Gebäude... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
PRINT
PRINT " An der Wand gegenüber von "
PRINT " dir befindet sich eine Tür, "
PRINT " sonst entdeckst du nichts in "
PRINT " dem kleinen Vorraum... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
33
CLS
PRINT
PRINT " Was du wollen tun jetzt??? "
PRINT
PRINT " (1) Die Tür öffnen und den Raum "
PRINT "     betreten "
PRINT " (2) Ich hab' die Hosen voll und "
PRINT "     verpiss' mich "
PRINT
INPUT "  ", a$
IF a$ = "2" THEN GOTO h
IF a$ = "1" THEN 34
GOTO 33
34
CLS
PRINT
PRINT " Du öffnest vorsichtig die Tür "
PRINT " und betrittst das Zimmer. "
PRINT " Vor dir steht ein Schreibtisch "
PRINT " neben dem ein bibbernder Mann "
PRINT " liegt... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
PRINT
PRINT " 'Bitte, bitte tu mir nichts', "
PRINT " wimmert der Mann. "
PRINT " 'Wer sind Sie?', fragst du ihn. "
PRINT " 'Gill Bates, der Bürgermeister.' "
PRINT " 'Können Sie mir helfen aus der Stadt "
PRINT " zu kommen?' "
PRINT " Der Bürgermeister rappelt sich auf, "
PRINT " und antwortet dir: 'Natürlich. Aber "
PRINT " nur wenn Sie mich vor diesen Zombies "
PRINT " beschützen.' "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
COLOR 3
PRINT
PRINT "   H E R Z L I C H E N   G L Ü C K W U N S C H !!! "
PRINT
PRINT "  Du hast den ersten Level von *Pain-City* geschafft!!! "
PRINT "  Hier noch ein Passwort: "
PRINT
PRINT "  BUNNY "
PRINT
PRINT "  So, und nun auf zum zweiten Level... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
level2:
CLS
COLOR 7
PRINT
PRINT " =========== "
PRINT " = LEVEL 2 = "
PRINT " =========== "
COLOR 2
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "                               ********************* "
PRINT "                               ********************* "
PRINT "                               ***   DIE HÖHLE   *** "
PRINT "                               ********************* "
PRINT "                               ********************* "
s3:
SLEEP 3
IF INKEY$ = CHR$(27) THEN GOTO h
40
CLS
COLOR 15
PRINT
PRINT " Der Brgermeister fhrt dich zu einem Geheimgang der an- "
PRINT " geblich zu einer H”hle fhrt, welche in einen Wald mndet. "
PRINT " Doch der Gang ist so dunkel, dass ihr berhauptnichts seht. "
PRINT
PRINT " Was macht ihr jetzt? "
PRINT
PRINT " (1) Euch langsam im Dunkeln vorantasten "
PRINT " (2) Ich h”r' auf (zurck zum Hauptmen) "
PRINT
INPUT "  ", a$
IF a$ = "2" THEN GOTO h
IF a$ = "1" THEN 41
GOTO 40
41
CLS
COLOR 1
PRINT
PRINT " Ihr tastet euch langsam voran und kommt "
PRINT " nach einiger Zeit zu einer Kreuzung des "
PRINT " Weges. "
PRINT " Da es so dunkel ist, kann der Brgermeister "
PRINT " nicht mit Sicherheit sagen welchen Weg ihr "
PRINT " entlang gehen msst. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
42
CLS
COLOR 1
PRINT
PRINT " Welchen Weg willst du nehmen? "
PRINT
PRINT " (1) Nach links "
PRINT " (2) Nach rechts "
PRINT
INPUT "  ", a$
IF a$ = "2" THEN 43
IF a$ = "1" THEN 44
GOTO 42
43
CLS
COLOR 1
PRINT
PRINT " Ihr geht also nach rechts. "
PRINT " Pl”tzlich, nach ein paar Metern, "
PRINT " macht es 'plumps' und ihr fallt in "
PRINT " ein tiefes Loch... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
GOTO 999
44
CLS
COLOR 1
PRINT
PRINT " Als ihr ein paar hundert Meter nach "
PRINT " links gegangen seit, seht ihr ein grelles "
PRINT " Licht hinter einer Ecke. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
COLOR 15
PRINT
PRINT " Um der Ecke herum steht ihr pl”tzlich "
PRINT " vor zirka 13 kleinen Kobolden. "
PRINT " Der Brgermeister versucht mit ihnen "
PRINT " zu reden, doch drei der Kobolde springen "
PRINT " auf euch und schlagen euch zusammen. "
PRINT " Halb tot kriegst du nur noch mit, dass "
PRINT " sie euch wegschleppen. "
PRINT " Dann wirst du ohnm„chtig... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
PRINT
PRINT " Nach einiger Zeit wacht ihr auf. "
PRINT " Du siehst dich um und bemerkst, "
PRINT " dass ihr euch in einer kleinen Bambus- "
PRINT " htte befindet, vor der zwei Kobolde auf "
PRINT " und ab laufen... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
45
CLS
PRINT
PRINT " Was nun? "
PRINT
PRINT " (1) Erstmal 'ne Runde schlafen "
PRINT " (2) Eine Rauchen (HINWEIS: Rauchen "
PRINT "     gef„hrdet die Gesundheit) "
PRINT " (3) Hinausgehen und die Wache abmetzeln "
PRINT
INPUT "  ", a$
IF a$ = "2" THEN 46
IF a$ = "1" THEN 48
IF a$ = "3" THEN 49
GOTO 45
46
CLS
PRINT
PRINT " Sorry, aber was willst du mitten "
PRINT " in der Wildnis rauchen? "
PRINT " Schlieálich seit ihr beide, der Brger- "
PRINT " meister von Pain-City und du Nichtraucher! "
PRINT " SATZ MIT X: "
PRINT " WAR WOHL NIX! "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
47
CLS
PRINT
PRINT " WHAT NOW? "
PRINT " (fr Dummies: Was jetzt?) "
PRINT
PRINT " (1) Erstmal 'ne Runde schlafen "
PRINT " (2) Hinausgehen und die Wache abmetzeln "
PRINT
INPUT "  ", a$
IF a$ = "1" THEN 48
IF a$ = "2" THEN 49
GOTO 47
48
CLS
PRINT
PRINT " Ihr schlaft seelenruhig ein, "
PRINT " doch ... irgendwie ... wacht "
PRINT " ihr nie wieder auf... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
GOTO 999
49
CLS
PRINT
PRINT " Ihr geht hinaus und du strzt dich "
PRINT " von hinten (!!!) auf die Kobolde "
PRINT " und stichst sie mit deinem Dolch ab. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
COLOR 4
PRINT
PRINT " Da ihr von Blut bers„ht seit, bergibt "
PRINT " sich der Brgermeister und er kotzt ge- "
PRINT " nau auf dich. "
PRINT " Iiiiiihhhh, pfui !!! "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
50
CLS
COLOR 15
PRINT
PRINT " Von der Ferne seht ihr wie eine Meute "
PRINT " Kobolde und andere komische Wesen angerannt "
PRINT " kommen. "
PRINT
PRINT " Watt machste jetz? "
PRINT
PRINT " (1) Aufh”ren (zurck zum Hauptmen) "
PRINT " (2) Wegrennen "
PRINT " (3) Mit der Meute reden "
PRINT
INPUT "  ", a$
IF a$ = "1" THEN GOTO h
IF a$ = "3" THEN 51
IF a$ = "2" THEN 52
GOTO 50
51
CLS
COLOR 4
PRINT
PRINT " Die ganze Meute strzt sich auf euch "
PRINT " und schl„gt euch eure K”pfe ab. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
GOTO 999
52
CLS
PRINT
PRINT " Ihr lauft und lauft und lauft, "
PRINT " und kommt schlieálich zum Eingang "
PRINT " einer zweiten H”hle... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
53
CLS
PRINT
PRINT " Was jetzt? "
PRINT
PRINT " (1) Nicht noch 'ne H”hle, dass "
PRINT "     ist zuviel (Ende) "
PRINT " (2) Umdrehen und dich mit den "
PRINT "     Kobolden unterhalten "
PRINT " (3) Die H”hle betreten "
PRINT
INPUT "  ", a$
IF a$ = "1" THEN GOTO h
IF a$ = "2" THEN 51
IF a$ = "3" THEN 54
GOTO 53
54
CLS
PRINT
PRINT " Ihr geht in die H”hle und dreht "
PRINT " euch um. Dabei entdeckt ihr, dass "
PRINT " die Kobolde ganz pl”tzlich vor der "
PRINT " H”hle stehen bleiben, auf die Knie "
PRINT " fallen und anfangen zu beten. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
55
CLS
PRINT
PRINT " What now? "
PRINT
PRINT " (1) Das wird mir zu gruselig, "
PRINT "     ich h”r' auf "
PRINT " (2) Die Kobolde fragen, was in "
PRINT "     der H”hle ist "
PRINT " (3) Weiter in die H”hle hinein- "
PRINT "     schreiten "
PRINT
INPUT "  ", a$
IF a$ = "1" THEN GOTO h
IF a$ = "2" THEN 56
IF a$ = "3" THEN 58
GOTO 55
56
CLS
PRINT
PRINT " Ihr fragt die Kobolde, was "
PRINT " in der H”hle ist, und warum "
PRINT " sie auf die Knie gefallen sind, "
PRINT " doch sie antworten euch nicht, "
PRINT " sondern beten weiter. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
57
CLS
PRINT
PRINT " What now? "
PRINT
PRINT " (1) Das wird mir zu gruselig, "
PRINT "     ich h”r' auf "
PRINT " (2) Weiter in die H”hle hinein- "
PRINT "     schreiten "
PRINT
INPUT "  ", a$
IF a$ = "1" THEN GOTO h
IF a$ = "2" THEN 58
GOTO 57
58
CLS
PRINT
PRINT " Nach ein paar Metern findest du "
PRINT " in einer Ecke auf dem Boden eine merk- "
PRINT " wrdig aussehende Schriftrolle. Du "
PRINT " denkst es k”nnten Zaubersprche sein, "
PRINT " und nimmst die Schriftrolle vorsichts- "
PRINT " halber mit... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
PRINT
PRINT " Pl”tzlich steht ihr vor einem riesen- "
PRINT " groáen Drachen, doch er scheint zu schlafen. "
PRINT " Hinter dem Drachen entdeckt ihr eine Art "
PRINT " Tr... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
60
CLS
PRINT
PRINT " Was willst du jetzt tun??? "
PRINT
PRINT " (1) Auf dem Drachen reiten "
PRINT " (2) Den groáen Drachen mit dem "
PRINT "     kleinen Dolch angreifen "
PRINT " (3) Die Zauberformeln ausprechen "
PRINT
INPUT "  ", a$
IF a$ = "1" THEN 61
IF a$ = "2" THEN 62
IF a$ = "3" THEN 64
GOTO 60
61
CLS
PRINT
PRINT " Jiihaaa!!! "
PRINT
PRINT " Der Drache wacht auf, "
PRINT " brutzelt euch und ladet "
PRINT " euch zum Abendessen ein. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
GOTO 999
62
CLS
PRINT
PRINT " Du stichst zu, doch der "
PRINT " Dolch bricht auseinander, "
PRINT " der Drache wacht auf und "
PRINT " brutzelt euch... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
GOTO 999
64
CLS
PRINT
PRINT " Du laberst das Zeug, das auf "
PRINT " der Schriftrolle steht und der "
PRINT " Drache explodiert... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
PRINT
PRINT " ... nur leider ist dein "
PRINT " Dolch auch weg! Ab jetzt "
PRINT " muát du dich mit H„nden und "
PRINT " Fáen verteidigen, und der "
PRINT " Brgermeister auch. "
PRINT " Jetzt seid ihr so gut wie "
PRINT " verloren!!! "
PRINT " Ha ha ha!!!... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
PRINT
PRINT " Ihr geht zur Tr am anderen "
PRINT " Ende des Raumes, doch ihr k”nnt "
PRINT " sie nicht ”ffnen, da sie von so "
PRINT " einer Art Zahlenschloss versperrt "
PRINT " wird... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
65
CLS
COLOR 2
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "                                   34 57 91 "
SLEEP 2
IF INKEY$ = CHR$(27) THEN GOTO h
66
COLOR 15
CLS
PRINT
PRINT " Na, hast du dir die Zahlen gemerkt??? "
PRINT
PRINT " Dann gib sie mal hier ein: "
INPUT " ", a$
IF a$ = "34 57 91" OR a$ = "345791" THEN 70
IF a$ = "" THEN 66 ELSE GOTO 67
67
CLS
PRINT
PRINT " Tut mir leid aber diese "
PRINT " Kombination ist falsch! "
PRINT " Ausnahmsweise kriegst du "
PRINT " noch 'ne Chance... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
GOTO 65
70
CLS
PRINT
PRINT " Die Tr ”ffnet sich langsam, "
PRINT " und ihr geht hindurch. "
PRINT " Ihr gelangt in einen breiten, "
PRINT " dunklen Gang... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
71
CLS
COLOR 7
PRINT
PRINT " In der H”hle kommt ihr nach einigen "
PRINT " Metern schon wieder zu einer Wegzweigung. "
PRINT
PRINT " Wohin nu ??? "
PRINT
PRINT " (1) Nach links "
PRINT " (2) Nach rechts "
PRINT " (3) Nirgendwohin (Ende) "
PRINT
INPUT "  ", a$
IF a$ = "3" THEN GOTO h
IF a$ = "1" THEN 72
IF a$ = "2" THEN GOTO wuff
GOTO 71
72
CLS
COLOR 7
PRINT
PRINT " Nachdem ihr so ungef„hr 5 Minuten "
PRINT " herumspaziert seid, gelangt ihr nochmal "
PRINT " zu einer Kreuzung. "
PRINT
PRINT " Wohin ??? "
PRINT
PRINT " (1) Nach links "
PRINT " (2) Nach rechts "
PRINT " (3) Das ist eine Kreu- "
PRINT "     zung zuviel (Ende) "
PRINT
INPUT "  ", a$
IF a$ = "2" THEN GOTO wuff
IF a$ = "3" THEN GOTO h
IF a$ = "1" THEN 73
GOTO 72
73
CLS
COLOR 7
PRINT
PRINT " Ihr kommt zu einem Teich, "
PRINT " der mitten in der H”hle liegt. "
PRINT " Hinter dem Teich seht ihr einen "
PRINT " weiteren Gang, doch um dort hin- "
PRINT " zukommen msst ihr baden gehen. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
74
CLS
COLOR 7
PRINT
PRINT " Was nun ??? "
PRINT
PRINT " (1) Durch den Teich zum "
PRINT "     anderen Gang waten "
PRINT " (2) Zurck zur letzten "
PRINT "     Wegzweigung "
PRINT
INPUT "  ", a$
IF a$ = "2" THEN 72
IF a$ = "1" THEN 75
GOTO 74
75
CLS
COLOR 7
PRINT
PRINT " Ihr steigt in den Teich, und "
PRINT " pl”tzlich taucht ein Schwarm "
PRINT " Piranhas auf und verspeist euch. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
GOTO 999
wuff:
CLS
COLOR 2
PRINT
PRINT "  Hier wieder ein winziges Passwort: "
PRINT
PRINT "  wuff "
PRINT
PRINT "  Und weiter geht's... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
76
CLS
COLOR 7
PRINT
PRINT " Ihr geht also nach rechts. "
PRINT " Nach ca. 15 Minuten Marsch befindet "
PRINT " ihr euch in einem riesigen unterirdischen "
PRINT " Raum. Ihr seht drei Ausg„nge am anderen "
PRINT " Ende des Raumes. In der Mitte des Raumes "
PRINT " seht ihr einen Teich. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
77
CLS
PRINT
PRINT " What do you want to do now ??? "
PRINT
PRINT " (1) Durch den Ausgang in der Mitte gehen "
PRINT " (2) Durch den linken Ausgang gehen "
PRINT " (3) Durch den rechten Ausgang gehen "
PRINT " (4) In den Teich schwimmen gehen "
PRINT
INPUT "  ", a$
IF a$ = "4" THEN 75
IF a$ = "1" THEN 78
IF a$ = "2" THEN 80
IF a$ = "3" THEN 79
GOTO 77
78
CLS
PRINT " Es wird pl”tzlich immer dunkler, "
PRINT " sodass ihr berhauptnichts mehr seht. "
PRINT " Dann macht es 'plumps', ihr verschwindet "
PRINT " in ein tiefes Loch und brecht euch alle "
PRINT " Knochen... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
GOTO 999
79
CLS
PRINT
PRINT " Ihr lauft genau zu sieben riesig "
PRINT " groáen gelben Drachen, die euch zum "
PRINT " Abendessen verputzen. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
GOTO 999
80
CLS
PRINT
PRINT " Gut geraten! "
PRINT " Der linke Ausgang war der einzige "
PRINT " richtige Weg. "
PRINT " Doch so langsam werdet ihr mde, legt "
PRINT " euch in eine stille Ecke und schlaft "
PRINT " ein... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
PRINT
PRINT " Schnarch... "
SLEEP 1
PRINT
PRINT "  Schnarch... "
SLEEP 2
PRINT
PRINT "   Schnarch... "
SLEEP 1
PRINT
PRINT "    Schnarch... "
SLEEP 1
PRINT
PRINT "     Schnarch... "
SLEEP 2
PRINT
PRINT "      Schnarch... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
COLOR 15
PRINT
PRINT " Noch etwas verschlafen wachst du auf, "
PRINT " und siehst dich um. Du bemerkst dass "
PRINT " durch ein Loch in der H”hlendecke "
PRINT " Licht auf den Boden scheint. "
PRINT " ... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
81
CLS
PRINT
PRINT " Watt machschte jetz ??? "
PRINT
PRINT " (1) Noch 'ne Runde schlafen "
PRINT "     (Zuviel Schlaf ist ungesund) "
PRINT " (2) Den Brgermeister killen "
PRINT " (3) Weiter durch die H”hle "
PRINT "     latschen "
PRINT
INPUT "  ", a$
IF a$ = "1" THEN 48
IF a$ = "2" THEN 82
IF a$ = "3" THEN 84
GOTO 81
82
CLS
PRINT
PRINT " Na gut, dann bringst du ihn halt um."
PRINT " Dann stimmt nur der weitere Handlungsverlauf"
PRINT " nicht mehr. Das ist dann aber deine Schuld."
PRINT " ..."
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
83
CLS
PRINT
PRINT " Also, watt machschte jetz ??? "
PRINT
PRINT " (1) Noch 'ne Runde schlafen "
PRINT "     (Zuviel Schlaf ist ungesund) "
PRINT " (2) Weiter durch die H”hle "
PRINT "     latschen "
PRINT
INPUT "  ", a$
IF a$ = "1" THEN 48
IF a$ = "2" THEN 84
GOTO 83
84
CLS
PRINT
PRINT " Nach ungef„hr 38759 cm gelangt "
PRINT " ihr schon wieder zu einer Zwei- "
PRINT " gung... "
SLEEP
IF INKEY$ = CHR$(27) THEN GOTO h
85
CLS
PRINT
PRINT " WoHiN nU ??? "
PRINT
PRINT " (1) NaCh LiNkS "
PRINT " (2) nAcH rEcHtS "
PRINT " (3) HaB' kEiNe LuSt "
PRINT "     MeHr (EnDe) "
PRINT
INPUT "  ", a$
IF a$ = "3" THEN GOTO h
IF a$ = "1" THEN 86
IF a$ = "2" THEN 90
GOTO 85
86
GOSUB shift
CLS
PRINT
PRINT " Pl”tzlich steht ein herumschreiender "
PRINT " Asiate in Karatekleidung vor euch "
PRINT " und springt auf dich zu. "
PRINT " ... "
SLEEP
87
CLS
PRINT
PRINT " Was jetzt, du Kamikaze ??? "
PRINT
PRINT " (1) Handkanten-Block und Sidekick"
PRINT "     in die Fresse"
PRINT " (2) Beten"
PRINT
INPUT "  ", a$
IF a$ = "1" THEN 88
IF a$ = "2" THEN 89
GOTO 87
88
CLS
PRINT
PRINT " Bei dem Versuch einen Handkanten-"
PRINT " Block gefolgt von einem Sidekick brichst"
PRINT " du dir beide Beine und der Karate-Fuzie"
PRINT " vierteilt dich..."
SLEEP
GOTO 999
89
CLS
PRINT
PRINT " Du f„ngst an zu beten, und der Karate-"
PRINT " Fuzie verschwindet. Danach bemerkst du,"
PRINT " dass dieser Weg eine Sackgasse ist,"
PRINT " also geht ihr zurck zur letzten Kreuzung"
PRINT " und nehmt den anderen Weg."
PRINT " ..."
SLEEP
GOTO 91
90
GOSUB shift
91
CLS
PRINT
PRINT " Auf einem kleinen Stein findest"
PRINT " du eine zweite Schriftrolle."
PRINT " Vor euch befindet sich ein weiterer"
PRINT " riesiger Raum..."
SLEEP
92
CLS
PRINT
PRINT " Pl”tzlich rennen zwei rote Drachen"
PRINT " auf euch zu."
PRINT " Was willst du tun?"
PRINT
PRINT " (1) Das Zeug von der ersten"
PRINT "     Schriftrolle labern"
PRINT " (2) Das Zeug von der zweiten"
PRINT "     Schriftrolle labern"
PRINT " (3) Mit den Drachen Ball spielen"
PRINT
INPUT "  ", a$
IF a$ = "3" THEN 93
IF a$ = "1" THEN 94
IF a$ = "2" THEN 95
GOTO 92
93
CLS
PRINT
PRINT " Bist du doof oder was ?!"
PRINT " Die Drachen verspeisen euch"
PRINT " und bergeben sich danach"
PRINT " (kein Wunder!)..."
SLEEP
GOTO 999
94
CLS
PRINT
PRINT " Die Drachen werden pl”tzlich"
PRINT " immer gr”áer, gr”áer und gr”áer."
PRINT " Dann explodieren sie und reiáen"
PRINT " euch in tausende kleine Fetzen."
PRINT " ..."
SLEEP
GOTO 999
95
CLS
PRINT
PRINT " Pl”tzlich erscheint links neben"
PRINT " euch eine Art Portal oder"
PRINT " schwarzes Loch. Watt nu?"
PRINT
PRINT " (1) In das 'Stargate' springen"
PRINT " (2) 'ne Runde schlafen"
PRINT " (3) Auf ein silbernes Tablett"
PRINT "     vor die Drachen legen"
PRINT " (4) Tschá sagen (zum Hauptmen)"
PRINT
INPUT "  ", a$
IF a$ = "4" THEN GOTO h
IF a$ = "3" OR a$ = "2" THEN 96
IF a$ = "1" THEN 97
GOTO 95
96
CLS
PRINT
PRINT " GOOD BYE !!!"
PRINT " ..."
SLEEP
GOTO 999
97
CLS
PRINT
PRINT " Ihr lauft durch die Dunkelheit"
PRINT " und steht dann in einem Raum ohne"
PRINT " Tren und ohne Fenster. Glcklicher-"
PRINT " weise hat der Brgermeister eine"
PRINT " Fackel dabei. Er zndet sie an und"
PRINT " ihr schaut euch um."
PRINT " ..."
SLEEP
98
CLS
PRINT
PRINT " Was willst du/wollt ihr jetzt tun?"
PRINT
PRINT " (1) Die W„nde sorgf„ltig abtasten"
PRINT " (2) Kreuz und quer durch den Raum laufen"
PRINT " (3) Harikari (Selbstmord)"
PRINT " (4) Zurck durch's 'Stargate' laufen"
PRINT
INPUT "  ", a$
IF a$ = "3" THEN 999
IF a$ = "4" THEN 99
IF a$ = "1" THEN 100
IF a$ = "2" THEN 101
GOTO 98
99
CLS
PRINT
PRINT " Sorry, du kannst noch nicht zurck!!!"
PRINT " Du muát zuerst den Code finden."
PRINT " ..."
SLEEP
GOTO 98
100
CLS
PRINT
PRINT " Ihr findet leider berhaupt nichts."
PRINT " Es wird nur eure Vermutung, dass der"
PRINT " Raum keine Fenster und keine Tren"
PRINT " hat, best„tigt."
PRINT " ..."
SLEEP
GOTO 98
101
CLS
PRINT
PRINT " Pl”tzlich fallt ihr in eine"
PRINT " kleine Grube. Dort in einer Ecke"
PRINT " findest du eine Schriftrolle mit"
PRINT " dem Code fr das Stargate, und eine"
PRINT " Zackenpeitsche."
PRINT " ..."
SLEEP
102
CLS
PRINT
PRINT " Was willst du bloá damit anfangen?"
PRINT
PRINT " (1) Harikari (Selbstmord)"
PRINT " (2) Aus der Grube steigen,"
PRINT "     und zum Stargate laufen"
PRINT " (3)  Z E N S I E R T"
PRINT
INPUT "  ", a$
IF a$ = "1" THEN 999
IF a$ = "3" THEN 103
IF a$ = "2" THEN 104
GOTO 102
103
CLS
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "                                Z E N S I E R T"
PRINT
PRINT "                                Z E N S I E R T"
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT " ..."
IF SOUND$ = "0" THEN GOTO s13
BEEP: BEEP: SLEEP 1: BEEP: BEEP
s13:
SLEEP
GOTO 102
104
CLS
PRINT
PRINT " Vor dem Stargate angekommen,"
PRINT " gibt der Brgermeister (du bist"
PRINT " viel zu dumm dafr) den Code"
PRINT " ein. Das Stargate ”ffnet sich,"
PRINT " und ihr geht hindurch."
PRINT " ..."
SLEEP
105
CLS
PRINT
PRINT " Ihr steht also wieder vor"
PRINT " den beiden roten Drachen."
PRINT " Un nu?"
PRINT
PRINT " (1) Den Drachen fragen, ob"
PRINT "     er mal Feuer hat"
PRINT " (2) Hoppe, hoppe Reiter..."
PRINT " (3) Die Drachen mit der"
PRINT "     Zackenpeitsche auspeitschen"
PRINT
INPUT "  ", a$
IF a$ = "2" THEN 106
IF a$ = "1" THEN 107
IF a$ = "3" THEN 108
GOTO 105
106
CLS
PRINT
PRINT " wenn er f„llt dann schreit er..."
SLEEP
GOTO 999
107
CLS
PRINT
PRINT " Macht bestimmt Spaá bei lebendigem"
PRINT " Leib zu verbrennen."
PRINT " ..."
SLEEP
GOTO 999
108
CLS
PRINT
PRINT " Glckwunsch!!!"
PRINT " Du hast die Drachen besiegt."
PRINT " (Alles klatscht.)"
PRINT " Pl”tzlich erblickst du eine Tr"
PRINT " am anderen Ende des Raumes."
PRINT
PRINT " 1 oder 2 ???"
PRINT
PRINT " (1) Schnell rberrennen"
PRINT " (2) Keine Ahnung... (Ende)"
PRINT
INPUT "  ", a$
IF a$ = "2" THEN GOTO h
IF a$ = "1" THEN 109
GOTO 108
109
CLS
PRINT
PRINT " Ihr rennt schnell zur Tr,"
PRINT " doch pl”tzlich f„llt der Brgermeister"
PRINT " in den reissenden Fluá, den ihr leider"
PRINT " bersehen hattet."
PRINT " ..."
SLEEP
110
CLS
PRINT
PRINT " Wie willst du jetzt rber kommen?"
PRINT " (Ach so: Der Brgermeister ist ertrunken.)"
PRINT
PRINT " (1) Rber schwimmen"
PRINT " (2) Weit Anlauf nehmen und rber springen"
PRINT " (3) Ein Ende der Zackenpeitsche zum"
PRINT "     anderen Ufer werfen und hinber hangeln"
PRINT
INPUT "  ", a$
IF a$ = "1" THEN 111
IF a$ = "2" THEN 112
IF a$ = "3" THEN 113
GOTO 110
111
CLS
PRINT
PRINT " Du ertrinkst j„mmerlich..."
SLEEP
GOTO 999
112
CLS
PRINT
PRINT " Du springst so, dass du genau mit"
PRINT " deinem Kopf auf einen spitzen Stein"
PRINT " f„llst und stirbst."
PRINT " ..."
SLEEP
GOTO 999
113
CLS
PRINT
PRINT " Du hangelst dich rber. Am anderen"
PRINT " Ufer angekommen, musst du dich erst"
PRINT " einmal ausruhen..."
SLEEP
SLEEP 9
114
CLS
PRINT
PRINT " Jetzt bemerkst du, dass das, was du"
PRINT " gesehen hast, keine Tr, sondern"
PRINT " eine Treppe ist."
PRINT
PRINT " ???"
PRINT
PRINT " (1) Die Treppe hinabsteigen"
PRINT " (2) Selbstmord"
PRINT " (3) Aufh”ren"
PRINT
INPUT "  ", a$
IF a$ = "3" THEN GOTO h
IF a$ = "2" THEN 999
IF a$ = "1" THEN 115
GOTO 114
115
CLS
COLOR 2
PRINT
PRINT
PRINT " Hier das n„chste Passwort:"
PRINT
PRINT " Superrakete"
PRINT " ***********"
SLEEP
level3:
CLS
COLOR 8
PRINT
PRINT " =========== "
PRINT " = LEVEL 3 = "
PRINT " =========== "
COLOR 2
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "                               ********************* "
PRINT "                               ********************* "
PRINT "                               *** THE DARK-ZONE *** "
PRINT "                               ********************* "
PRINT "                               ********************* "
s7:
SLEEP 3
IF INKEY$ = CHR$(27) THEN GOTO h
116
CLS
PRINT
PRINT " Am anderen Ende der Treppe stehen"
PRINT " 57 Zwerg-Monster um dich herum."
PRINT
PRINT " Žtsch „tsch, watt machschde jetz???"
PRINT
PRINT " (1) Weit ausholen und einen Rundum-"
PRINT "     Schlag mit der Zackenpeitsche machen"
PRINT " (2) Abra cadabra..."
PRINT " (3) Ich hab' k„ Bock meh' (Ende)"
PRINT
INPUT "  ", a$
IF a$ = "3" THEN GOTO h
IF a$ = "1" THEN 117
IF a$ = "2" THEN 118
GOTO 116
117
CLS
PRINT
PRINT " Du verfehlst die Zwerg-Monster,"
PRINT " da sie zu klein sind, diese strzen"
PRINT " sich auf dich und vernaschen dich."
PRINT " ..."
SLEEP
GOTO 999
118
CLS
PRINT
PRINT " ...simsalabim!"
PRINT " Die Zwerge sind tot!"
PRINT " Ein paar Meter vor dir siehst"
PRINT " du eine Truhe."
PRINT " ..."
SLEEP
119
CLS
PRINT
PRINT " Waaaaaaaaaas jetzt???"
PRINT
PRINT " (1) Die Leichen der Zwerge untersuchen"
PRINT " (2) Zur Truhe gehen und sie ”ffnen"
PRINT " (3) Einfach gerade aus weiter gehen"
PRINT " (4) Aufh”ren"
PRINT
INPUT "  ", a$
IF a$ = "4" THEN GOTO h
IF a$ = "2" THEN 120
IF a$ = "3" THEN 121
IF a$ = "1" THEN 122
GOTO 119
120
CLS
PRINT
PRINT " Sorry, die Truhe ist verschlossen."
PRINT " Du musst zuerst den Schlssel finden."
PRINT " ..."
SLEEP
GOTO 119
121
CLS
PRINT
PRINT " Du kommst zu einer Wand."
PRINT " Nach kurzem abtasten bemerkst du,"
PRINT " dass sich eine Tapetentr in der Wand"
PRINT " befindet. Du siehst auch ein Schlssel-"
PRINT " loch. Als du versuchst die Tr zu ”ffnen,"
PRINT " f„llt dir auf, dass sie verschlossen ist."
PRINT " Du entschlieát dich zurck zur Treppe zu"
PRINT " gehen..."
SLEEP
GOTO 119
122
CLS
PRINT
PRINT " Nach einer Stunde suchen findest du"
PRINT " einen aus Knochen gefertigten Schlssel."
PRINT " ..."
SLEEP
123
CLS
PRINT
PRINT " Waaassssssssss jeeeeeetzzzzzzt????????????????"
PRINT
PRINT " (1) Versuchen die Truhe zu ”ffnen"
PRINT " (2) Gerade aus weitergehen"
PRINT " (3) Den Schlssel futtern (schlieálich"
PRINT "     hast du noch nichts gegessen)"
PRINT " (4) Aufh”ren"
PRINT
INPUT "  ", a$
IF a$ = "4" THEN GOTO h
IF a$ = "3" THEN 124
IF a$ = "1" THEN 125
IF a$ = "2" THEN 136
GOTO 123
124
CLS
PRINT
PRINT " Der Schlssel bleibt dir im Hals"
PRINT " stecken und du erstickst."
PRINT " ..."
SLEEP
GOTO 999
125
CLS
COLOR 15
PRINT
PRINT " Du steckst den Schlssel in das Loch"
PRINT " (ich meine natrlich Schlsselloch),"
PRINT " drehst ihn zig-mal um, doch die Truhe"
PRINT " l„sst sich einfach nicht ”ffnen."
PRINT " ..."
SLEEP
CLS
PRINT
PRINT " Nach langem berlegen hast du pl”tzlich"
PRINT " eine Idee. In einen Actionfilm auf"
PRINT " Kanal H hast du fast die selbe Szene"
PRINT " gesehen: Ein Geheimagent musste eine fest"
PRINT " verriegelte Truhe ”ffnen in der eine riesige"
PRINT " Wasserstoff-Zeitbombe lag. Wrde er es nicht"
PRINT " schaffen, in zwei Minuten die Truhe zu ”ffnen"
PRINT " und die Bombe zu entsch„rfen"
PRINT " ..."
SLEEP
CLS
PRINT
PRINT " wrden zwei Groást„dte in die Luft gehen"
PRINT " und Millionen Menschen wrden ins Gras beiáen."
PRINT " ..."
SLEEP
126
CLS
PRINT
PRINT " Na, was hat der Geheimagent wohl getan???"
PRINT
PRINT " (1) Er hat den Schlssel statt, wie blich"
PRINT "     nach rechts, linksherum gedreht"
PRINT " (2) Er hat angefangen *It's time to say"
PRINT "     goodbye* zu singen"
PRINT " (3) Er hat so laut er konnte *Sesam ”ffne"
PRINT "     dich* gerufen"
PRINT " (4) Nummer 1 und 3 gleichzeitig"
PRINT
PRINT " Hinweis: Das, was du ausw„hlst machst du auch!"
PRINT
INPUT "  ", a$
IF a$ = "2" THEN 127
IF a$ = "3" THEN 128
IF a$ = "1" THEN 129
IF a$ = "4" THEN 130
GOTO 126
127
CLS
PRINT
PRINT " Iiiits taaaam tooooooooooooooo"
PRINT " say goooooooodbyyyyeeee..."
PRINT
PRINT " Versuch's mal mit etwas anderem!"
PRINT " ..."
SLEEP
GOTO 126
128
CLS
PRINT
PRINT " Seessaaaaaaam ”fffneeee diiiiiiich!!!"
PRINT " Leider ”ffnet sich nicht die Truhe,"
PRINT " sondern der Boden auf dem du gerade"
PRINT " stehst..."
SLEEP
GOTO 999
129
CLS
PRINT
PRINT " Linksherum, rechtsherum, rein, raus..."
PRINT " Leider funktioniert das alles nicht."
PRINT " ..."
SLEEP
GOTO 126
130
CLS
PRINT
PRINT " Genau das hat der Kerl aus dem Action-Streifen"
PRINT " auch getan."
PRINT
PRINT " Juuhuuuu!!!"
PRINT " Du bist so happy, dass du ein echtes"
PRINT " Laser-Licht-Schwert gefunden hast, sodass du den"
PRINT " Hobgoblinsch, der sich von hinten angeschlichen hat,"
PRINT " v”llig bersehen hast."
PRINT " Glcklicherweise hat der Hobgoblinsch mit seinem"
PRINT " Schwert an dir vorbei geschlagen. Du zckst das Laser-"
PRINT " Schwert und schl„gst dem Hobgoblinsch gnadenlos den"
PRINT " Kopf von der Birne „„hm vom Hals."
PRINT " ..."
SLEEP
132
CLS
PRINT
PRINT " Was willst du jetzt mit deinem Laserschwert machen???"
PRINT
PRINT " (1) Gerade aus zur Tapetentr gehen"
PRINT " (2) Das Laserschwert ein zweites mal testen,"
PRINT "     indem du dir den Kopf abschl„gst"
PRINT " (3) ComputerWILD lesen"
PRINT " (4) Fill Gates verklagen"
PRINT " (5) Spiel beenden"
PRINT
INPUT "  ", a$
IF a$ = "5" THEN GOTO h
IF a$ = "4" THEN 133
IF a$ = "3" THEN 134
IF a$ = "2" THEN 999
IF a$ = "1" THEN 140
GOTO 132
133
CLS
PRINT
PRINT " Du gewinnst den Prozess und bekommst 345666 DM"
PRINT " Schadensersatz, weil dir dein Computer wegen"
PRINT " Microgrufts Sch„dling 98 explodiert ist."
PRINT " ..."
SLEEP
GOTO 132
134
CLS
PRINT
PRINT " Aha! Da steht Pain-City spielen ist in,"
PRINT " Tuuumb Raider ist out."
PRINT " ..."
SLEEP
GOTO 132
136
CLS
PRINT
PRINT " Kleiner Tip:"
PRINT " Ich wrde zuerst zur Truhe gehen!"
SLEEP
GOTO 123
140
CLS
PRINT
PRINT " Nachdem du an der Wand mit der Tapetentr"
PRINT " angekommen bist und die Tr ge”ffnet hast,"
PRINT " stehst du erschreckenderweise vor einem"
PRINT " 3 Meter groáem und 2 Meter breitem D„mon."
PRINT " Dieser D„mon versucht dich aufzufressen,"
PRINT " doch bevor er das tun kann vierteilst du"
PRINT " ihn mit deinem heiágeliebten Laserschwert."
PRINT " ..."
SLEEP
CLS
PRINT
PRINT "    Rate mal was ich fr dich hab'!"
PRINT
PRINT " Ein weiteres Passwort!!!"
PRINT " Hier ist es:"
PRINT
PRINT " Drecksmuschi"
PRINT
PRINT " (Verstehen Sie dieses Wort bitte nicht falsch.)"
PRINT " ..."
SLEEP
144
CLS
COLOR 6
PRINT
PRINT " Am linken Ende des Raumes, in welchem du"
PRINT " dich befindest, ist eine Tr, am rechten"
PRINT " Ende ein Fenster. Die vordere H„lfte ist "
PRINT " durch mehrere Gitterst„be vom Rest des"
PRINT " Raumes getrennt."
PRINT " In mitten der Gitterst„be entdeckst du eine"
PRINT " weitere Tr, die ebenfalls aus Gitterst„ben"
PRINT " besteht. Diese Tr ist verschlossen, das"
PRINT " Fenster ist zu stabil um es einzuschlagen und"
PRINT " rauszuklettern."
PRINT " ..."
SLEEP
145
CLS
PRINT
PRINT " Was willst du tun?"
PRINT
PRINT " (1) Zur linken Tr gehen und versuchen,"
PRINT "     sie zu ”ffnen"
PRINT " (2) Die Tr in den Gitterst„ben ”ffnen"
PRINT " (3) Das Fenster untersuchen"
PRINT " (4) Die Festplatte deines Computers"
PRINT "     formatieren"
PRINT " (5) Aufh”ren"
PRINT
INPUT "  ", a$
IF a$ = "5" THEN GOTO h
IF a$ = "4" THEN 146
IF a$ = "2" THEN 147
IF a$ = "3" THEN 148
IF a$ = "1" THEN 149
GOTO 145
146
CLS
COLOR 4
PRINT
PRINT " Willst du wirklich das Laufwerk C: formatieren?"
SLEEP 2
PRINT
PRINT " ...anscheinend ja..."
SLEEP 2
PRINT
PRINT " Verarscht! Verarscht! Verarscht!!!"
PRINT " Deine Festplatte formatier' ich dir nicht!"
PRINT " Ha ha ha!"
PRINT " ..."
SLEEP
GOTO 145
147
CLS
PRINT
PRINT " Sag' mal, bist du bescheuert!?"
PRINT " Kannst du nicht lesen oder was!?"
PRINT " Die Tr ist -> verschlossen <-!!!"
PRINT " ..."
SLEEP: GOTO 145
148
CLS
PRINT
PRINT " Du erkennst nur, dass die Fensterscheibe"
PRINT " zu dick ist, um sie zu zerschlagen und "
PRINT " anschlieáend raus zu klettern. Aber groá"
PRINT " genug w„re das Fenster, um heraus zu kommen."
PRINT " ..."
SLEEP: GOTO 145
149
CLS
COLOR 13
PRINT
PRINT " Tja, Pech gehabt...": SLEEP 1
PRINT
PRINT " ...die Tr besitzt kein Schlsselloch,"
PRINT " und keinen Trgriff. Doch neben der Tr"
PRINT " befindet sich so eine Art Mini-Computer,"
PRINT " welcher elektronisch mit der Tr verbunden"
PRINT " ist. Er dient h”chstwahrscheinlich zur Code-"
PRINT " Eingabe. Auf dem Boden entdeckst du einen"
PRINT " kleinen Zettel, auf dem die Zahlen 23 und"
PRINT " 32 stehen."
PRINT " ..."
SLEEP
150
CLS
PRINT
PRINT " Was willst du jetzt bloá machen???"
PRINT
PRINT " (1) 23 und dann 32 in den Computer eingeben"
PRINT " (2) 2332 in den Computer eingeben"
PRINT " (3) Den Wert des Quotienten 32:23 eingeben"
PRINT " (4) 32 und dann 23 eingeben"
PRINT " (5) 3223 eingeben"
PRINT " (6) Den Wert des Quotienten 23:32 eingeben"
PRINT " (7) Die H„lfte von 23 plus die H„lfte"
PRINT "     von 32 eingeben"
PRINT " (8) Den Mittelwert von 23 und 32 eingeben"
PRINT " (9) Den Wert des Produktes 23*32 eingeben"
PRINT
INPUT "  ", a$
IF a$ = "8" OR a$ = "7" THEN 152
IF a$ = "1" OR a$ = "2" OR a$ = "3" OR a$ = "4" THEN 151
IF a$ = "5" OR a$ = "6" OR a$ = "9" THEN 151
GOTO 150
151
CLS
PRINT
PRINT " Weiát du was? Du bist echt sau doof!": SLEEP 1
PRINT
PRINT " Probier's mal mit 'was anderem!!!"
SLEEP
GOTO 150
152
CLS
PRINT
PRINT " Richtig!!!": SLEEP 1
PRINT " Du gibst 27,5 in den Computer ein, wobei sich"
PRINT " die Tr langsam nach links verschiebt."
PRINT " Du gehst durch die geheimnisvolle Tr hindurch,"
PRINT " welche sich direkt hinter dir schlieát."
PRINT " ..."
SLEEP
CLS
PRINT
PRINT " Du befindest dich in einem hellbeleuchtetem groáen Raum,"
PRINT " in dem drei groáe Tische mit massig Reagenzgl„sern und"
PRINT " Rundkolben stehen."
PRINT " Du gehst umher und untersuchst alles. Du bemerkst, dass"
PRINT " ca. die H„lfte dieser Beh„lter mit flssigen Stoffen"
PRINT " gefllt sind. Auf einem Reagenzglas steht 'Nitro', auf"
PRINT " einem anderem 'Amoniak', wieder auf einem anderen"
PRINT " 'Salzs„ure',... Du gehst zur zweiten Tr in diesem Raum,"
PRINT " doch sie ist von auáenn fest verschlossen."
PRINT " ..."
SLEEP
153
CLS
COLOR 4
PRINT
PRINT " Was willst du nun tun?"
PRINT
PRINT " (1) Das Reagenzglas mit der Aufschrift 'Nitro'"
PRINT "     gegen die Tr werfen"
PRINT " (2) Das 'Nitro' mit dem 'Amoniak' mischen und"
PRINT "     die Mischung gegen die Tr werfen"
PRINT " (3) Die Salzs„ure gegen die Tr kippen"
PRINT
INPUT "  ", a$
IF a$ = "3" THEN 154
IF a$ = "2" THEN 155
IF a$ = "1" THEN 156
GOTO 153
154
CLS
PRINT
PRINT " Du kippst dir ausversehen die Salzs„ure"
PRINT " ber deinen Bauch und verreckst j„mmerlich."
PRINT " ..."
SLEEP
GOTO 999
155
CLS
PRINT
PRINT " W„hrend dem Mischen musst du niesen und"
PRINT " dir f„llt alles auf den Boden. Dann"
PRINT " macht es 'bummm' und alles fliegt in die"
PRINT " Luft..."
SLEEP: GOTO 999
156
CLS
PRINT
PRINT " Du wirfst das Nitrodingsda gegen die Tr, welche"
PRINT " sofort explodiert. Vor dir steht ein Mann in einem"
PRINT " weiáen Kittel, mit Brille, und einem Drei-Tage-Bart."
PRINT " Rechts auf dem Kittel steht: Dr. Wittlich."
PRINT " Es ist also anscheinend der Chemie-Professor Dr."
PRINT " Wittlich..."
SLEEP
CLS
COLOR 15
PRINT
PRINT " Hey! Hol' dir 'nen Stift und 'nen Zettel,"
PRINT " und schreib dir das n„chste Passwort auf!"
PRINT
COLOR 11
PRINT "  Gitz"
PRINT
COLOR 15
PRINT " Na, notiert?...Dann kann's ja weitergehen"
PRINT " ..."
SLEEP
level4:
CLS
COLOR 11
PRINT
PRINT " =========== "
PRINT " = LEVEL 4 = "
PRINT " =========== "
COLOR 11
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "                              ************************ "
PRINT "                              ************************ "
PRINT "                              *** BACK IN THE CITY *** "
PRINT "                              ************************ "
PRINT "                              ************************ "
s9:
SLEEP 3
IF INKEY$ = CHR$(27) THEN GOTO h
COLOR 11
160
CLS
PRINT
PRINT " Du unterh„ltst dich mit Herrn Dr. Wittlich,"
PRINT " und ihr beschlieát, zusammen die Stadt zu retten,"
PRINT " indem ihr alle Monster t”tet."
PRINT " ..."
SLEEP
CLS
PRINT
PRINT " Dr. Wittlich zeigt dir einen Geheimweg zur Stadt"
PRINT " und sagt, er komme gleich nach. Du solltest schon"
PRINT " mal den Weg frei von Zombies machen."
PRINT " ..."
SLEEP
161
CLS : COLOR 15
PRINT " Du kommst aus dem Geheimweg heraus,"
PRINT " und siehst, dass von allen Seiten komisch"
PRINT " torkelnde Zombies auf dich zukommen."
PRINT
PRINT " Missliche Lage, nicht!?"
PRINT
PRINT " (1) Inventar ansehen"
PRINT " (2) Gegenstand aus dem"
PRINT "     Inventar benutzen"
PRINT " (3) Zurck zum Chemie-"
PRINT "     labor"
PRINT " (4) Zurck zum Hauptmen"
PRINT " (5) Mit einemdreifachen"
PRINT "     Salto und doppelter"
PRINT "     Schraube ber die"
PRINT "     Zombies springen und..."
PRINT
INPUT "  ", a$
IF a$ = "4" THEN GOTO h
IF a$ = "3" THEN 162
IF a$ = "5" THEN 163
IF a$ = "1" THEN 164
IF a$ = "2" THEN 165
GOTO 161
162
CLS
PRINT : PRINT " Du Feigling!!!"
PRINT " Du Hosenscheiáer!!!": SLEEP 1
PRINT " ('tschuldigung...)": PRINT
PRINT " Leider kann diese Option wegen"
PRINT " der begrenzten Dateigr”áe nicht"
PRINT " ausgefhrt werden..."
SLEEP: GOTO 161
163
CLS
PRINT : PRINT " Leider bist du so ungelenkig und un-"
PRINT " sportlich, sodass du dir bei der doppelten"
PRINT " Schraube den Arm auskugelst und bei"
PRINT " der Landung alle Rckenwirbel brichst."
PRINT " ..."
SLEEP: GOTO 999
164
CLS : SCREEN 12: COLOR 15
PRINT "----------------------------------------------------------------------"
PRINT : COLOR 7
PRINT "           |"
PRINT "           |"
PRINT "           |"
PRINT "           |           Laserschwert"
COLOR 1: PRINT "         /=!=\"
PRINT "           !"
PRINT "           !"
COLOR 15
PRINT
PRINT "----------------------------------------------------------------------"
PRINT
PRINT "    @@@@@@@@@@@@@@@"
PRINT "    @ ~~~~~~~~~~~ @    Magische Schriftrolle"
PRINT "    @ ~~~~~~~~~~~@     (l„sst gelbe Drachen"
PRINT "    @ ~~~~~~~~~~~@     explodieren)"
PRINT "    @@@@@@@@@@@@@": PRINT
PRINT "----------------------------------------------------------------------"
PRINT : PRINT "    @@@@@@@@@@@@@@@"
PRINT "    @ ~~~~~~~~~~~ @    Magische Schriftrolle"
PRINT "    @ ~~~~~~~~~~~@     (l„sst Stargate er-"
PRINT "    @ ~~~~~~~~~~~@     scheinen)"
PRINT "    @@@@@@@@@@@@@": PRINT
PRINT "----------------------------------------------------------------------"
PRINT " Weiter mit beliebiger Taste..."
SLEEP
SCREEN 0: GOTO 161
165
CLS : COLOR 15
PRINT : PRINT " Welchen Gegenstand aus dem Inventar"
PRINT " willst du benutzen? (Einfach Zahl eingeben;"
PRINT " (9) um abzubrechen)"
PRINT
PRINT " (1) Laserschwert"
PRINT " (2) Magische Schriftrolle"
PRINT "     (gegen gelbe Drachen)"
PRINT " (3) Magische Schriftrolle"
PRINT "     (Stargate)": PRINT
INPUT "  ", a$
IF a$ = "2" THEN 166
IF a$ = "3" THEN 167
IF a$ = "1" THEN 168
IF a$ = "9" THEN 161
GOTO 165
166
CLS
PRINT
PRINT " Du bist ja nicht der Schlaueste, aber dass du"
PRINT " so doof bist, h„tte ich nicht gedacht!": SLEEP 1
PRINT " Um dich herum befinden sich ZOMBIES nicht DRACHEN!"
PRINT
PRINT " Komando zurck!!!"
PRINT " ...": SLEEP: GOTO 161
167
CLS
PRINT
PRINT " Du gehst durch das Stargate, und pl”tzlich strzen"
PRINT " sich zirka 46557517677 Zombies, Kobolde und andere"
PRINT " Wesen auf dich und killen dich...": SLEEP: GOTO 999
168
CLS : COLOR 3
PRINT
PRINT " Du machst eine 720ø-Drehung mit ausgestrecktem"
PRINT " Laserschwert, und zerteilst somit alle Zombies."
PRINT " Ein paar Sekunden sp„ter kommt auch Dr. Wittlich"
PRINT " aus dem Geheimgang gerannt. Er hat zwei Fl„schen"
PRINT " Nitro-Glitzerin und eine Pistole mit einem"
PRINT " Magazin bei sich."
PRINT " ..."
SLEEP
169
CLS
PRINT : PRINT " Gerade als ihr weiter gehen wollt, entdeckt"
PRINT " Dr. Wittlich einen Schwarm seltsamer V”gel, die sich"
PRINT " im Sturzflug auf euch befinden.": PRINT
PRINT " (1) Gegenstand aus dem"
PRINT "     Inventar benutzen"
PRINT " (2) Inventar ansehen"
PRINT " (3) Ein Fl„schen Nitro-"
PRINT "     Glitzerin auf die"
PRINT "     V”gel werfen": PRINT
INPUT "  ", a$
IF a$ = "3" THEN 171
IF a$ = "2" THEN 170
IF a$ = "1" THEN 172
GOTO 169
170
CLS : SCREEN 12: COLOR 15
PRINT "----------------------------------------------------------------------"
PRINT : COLOR 7
PRINT "           |"
PRINT "           |"
PRINT "           |"
PRINT "           |           Laserschwert"
COLOR 1: PRINT "         /=!=\"
PRINT "           !"
PRINT "           !"
COLOR 15
PRINT
PRINT "----------------------------------------------------------------------"
PRINT
PRINT "    @@@@@@@@@@@@@@@"
PRINT "    @ ~~~~~~~~~~~ @    Magische Schriftrolle"
PRINT "    @ ~~~~~~~~~~~@     (l„sst gelbe Drachen"
PRINT "    @ ~~~~~~~~~~~@     explodieren)"
PRINT "    @@@@@@@@@@@@@": PRINT
PRINT "----------------------------------------------------------------------"
PRINT : PRINT "    @@@@@@@@@@@@@@@"
PRINT "    @ ~~~~~~~~~~~ @    Magische Schriftrolle"
PRINT "    @ ~~~~~~~~~~~@     (l„sst Stargate er-"
PRINT "    @ ~~~~~~~~~~~@     scheinen)"
PRINT "    @@@@@@@@@@@@@": PRINT
PRINT "----------------------------------------------------------------------"
PRINT " Weiter mit beliebiger Taste..."
SLEEP: CLS
PRINT "----------------------------------------------------------------------"
PRINT : PRINT "    ~|ýýý              Pistole + 1 Magazin": PRINT
PRINT "----------------------------------------------------------------------"
PRINT : PRINT "    ~"
PRINT "   | |                 2 Fl„schen Nitro-Glitzerin"
PRINT "   | |"
PRINT "    ~": PRINT
PRINT "----------------------------------------------------------------------"
PRINT " Weiter mit beliebiger Taste..."
SLEEP: SCREEN 0: GOTO 169
171
CLS : COLOR 15
PRINT : PRINT " Denkst du wirklich du k”nntest die"
PRINT " V”gel treffen? Soweit ich weiá bist du"
PRINT " doch gar nicht so gut in Weit- und Ziel-"
PRINT " wurf! Eine Chance bekommst du noch."
PRINT " ..."
SLEEP: GOTO 169
172
CLS : COLOR 15
PRINT : PRINT " Welchen Gegenstand aus dem Inventar"
PRINT " willst du benutzen? (Einfach Zahl eingeben;"
PRINT " (9) um abzubrechen)"
PRINT
PRINT " (1) Laserschwert"
PRINT " (2) Magische Schriftrolle"
PRINT "     (gegen gelbe Drachen)"
PRINT " (3) Magische Schriftrolle"
PRINT "     (Stargate)": PRINT
PRINT " (4) Pistole"
PRINT " (5) Nitro-Glitzerin"
INPUT "  ", a$
IF a$ = "9" THEN 169
IF a$ = "5" THEN 171
IF a$ = "1" THEN 173
IF a$ = "2" THEN 174
IF a$ = "3" THEN 175
IF a$ = "4" THEN 176
GOTO 172
173
CLS : COLOR 15
PRINT : PRINT " Leider triffst du die V”glein nicht,"
PRINT " da sie noch zu hoch fliegen. Sie"
PRINT " sind jedoch sehr flink und prallen"
PRINT " mit ihren spitzen Schn„beln auf"
PRINT " euch nieder..."
SLEEP: GOTO 999
174
CLS : COLOR 15
PRINT : PRINT " Es sind zwar keine gelbe Drachen,"
PRINT " aber es hilft trotzdem: Die V”gel"
PRINT " verbrennen pl”tzlich.": PRINT " ..."
SLEEP: GOTO 177
175
CLS : COLOR 15
PRINT : PRINT " Pl”tzlich erscheint ein 'Stargate' und"
PRINT " ihr springt hindurch."
PRINT " Ja, wo seid ihr denn? Hoch ber den"
PRINT " Wolken! Aber ohne Flgel werdet ihr euch"
PRINT " dort nicht lange halten k”nnen..."
SLEEP: GOTO 999
176
CLS : COLOR 15
PRINT : PRINT " Leider kannst du nicht schnell genug"
PRINT " schieáen und die Viecher stechen"
PRINT " euch ab..."
SLEEP: GOTO 999
177
CLS : COLOR 15
PRINT : PRINT " Glck gehabt!!!"
PRINT " Auf der anderen Straáenseite seht ihr,"
PRINT " wie ein paar Zombies an einem Hydranten"
PRINT " rumreiáen. Pl”tzlich spritzt Wasser"
PRINT " heraus. Als die Zombies damit in Berhrung"
PRINT " kommen, zerfallen sie regelrecht."
PRINT " Ihr rennt hinber...": SLEEP
178
CLS : COLOR 15
PRINT : PRINT " Dort angekommen bemerkt ihr, dass"
PRINT " von allen Seiten merkwrdig aussehende"
PRINT " Monster auf euch zukommen.": PRINT
PRINT " (1) Inventar ansehen"
PRINT " (2) Gegenstand aus dem"
PRINT "     Inventar benutzen"
PRINT " (3) Zum Hauptmen"
PRINT " (4) Die Monster ein wenig"
PRINT "     naá machen"
PRINT " (5) In den Sáigkeitenladen"
PRINT "     flchten"
INPUT "  ", a$
IF a$ = "4" THEN 188
IF a$ = "3" THEN GOTO h
IF a$ = "1" THEN 179
IF a$ = "2" THEN 180
IF a$ = "5" THEN 190
GOTO 178
179
CLS : SCREEN 12: COLOR 15
PRINT "----------------------------------------------------------------------"
PRINT : COLOR 7
PRINT "           |"
PRINT "           |"
PRINT "           |"
PRINT "           |           Laserschwert"
COLOR 1: PRINT "         /=!=\"
PRINT "           !"
PRINT "           !"
COLOR 15
PRINT
PRINT "----------------------------------------------------------------------"
PRINT
PRINT "    @@@@@@@@@@@@@@@"
PRINT "    @ ~~~~~~~~~~~ @    Magische Schriftrolle"
PRINT "    @ ~~~~~~~~~~~@     (l„sst gelbe Drachen"
PRINT "    @ ~~~~~~~~~~~@     explodieren)"
PRINT "    @@@@@@@@@@@@@": PRINT
PRINT "----------------------------------------------------------------------"
PRINT : PRINT "    @@@@@@@@@@@@@@@"
PRINT "    @ ~~~~~~~~~~~ @    Magische Schriftrolle"
PRINT "    @ ~~~~~~~~~~~@     (l„sst Stargate er-"
PRINT "    @ ~~~~~~~~~~~@     scheinen)"
PRINT "    @@@@@@@@@@@@@": PRINT
PRINT "----------------------------------------------------------------------"
PRINT " Weiter mit beliebiger Taste..."
SLEEP: CLS
PRINT "----------------------------------------------------------------------"
PRINT : PRINT "    ~|ýýý              Pistole + 1 Magazin": PRINT
PRINT "----------------------------------------------------------------------"
PRINT : PRINT "    ~"
PRINT "   | |                 2 Fl„schen Nitro-Glitzerin"
PRINT "   | |"
PRINT "    ~": PRINT
PRINT "----------------------------------------------------------------------"
PRINT " Weiter mit beliebiger Taste..."
SLEEP: SCREEN 0: GOTO 178
180
CLS : COLOR 15
PRINT : PRINT " Welchen Gegenstand aus dem Inventar"
PRINT " willst du benutzen? (Einfach Zahl eingeben;"
PRINT " (9) um abzubrechen)"
PRINT
PRINT " (1) Laserschwert"
PRINT " (2) Magische Schriftrolle"
PRINT "     (gegen gelbe Drachen)"
PRINT " (3) Magische Schriftrolle"
PRINT "     (Stargate)": PRINT
PRINT " (4) Pistole"
PRINT " (5) Nitro-Glitzerin"
INPUT "  ", a$
IF a$ = "9" THEN 178
IF a$ = "5" THEN 185
IF a$ = "1" THEN 181
IF a$ = "2" THEN 182
IF a$ = "3" THEN 183
IF a$ = "4" THEN 184
GOTO 180
181
CLS
PRINT : PRINT " Diesmal bist du leider nicht"
PRINT " schnell genug..."
SLEEP: GOTO 999
182
CLS
PRINT : PRINT " Ich glaub kaum, dass diese"
PRINT " Schriftrolle auch bei Zonbies"
PRINT " funktioniert..."
SLEEP: GOTO 999
183
CLS
PRINT : PRINT " Schade, diesmal werdet ihr in"
PRINT " den Magen eines Wales"
PRINT " teleportiert..."
SLEEP: GOTO 999
184
CLS
PRINT : PRINT " Leider hast du nur ein"
PRINT " Magazin, dass reicht nicht"
PRINT " ganz... "
SLEEP: GOTO 999
185
CLS
PRINT : PRINT " Pech gehabt!"
PRINT " Die herumschleudernden K”rperteile"
PRINT " der Zombies erschlagen euch..."
SLEEP: GOTO 999
188
CLS : COLOR 15
PRINT : PRINT " Ihr schlieát schnell den Schlauch,"
PRINT " der 'zuf„llig' neben dem Hydranten"
PRINT " liegt, an dem 'Wasserspender' an"
PRINT " und bespritzt die Zombies, welche"
PRINT " sofort zerfallen..."
SLEEP
189
CLS
PRINT : PRINT " Ihr schlieát 50 weitere 20 Meter lange"
PRINT " Schl„uche an und killt alles was ihr"
PRINT " findet..."
SLEEP: GOTO Ende
190
CLS : PRINT
PRINT " Ihr befindet euch im Laden und"
PRINT " schaut euch um."
PRINT " Doch das einzige, das ihr findet"
PRINT " sind Schickers-Schokoriegel und"
PRINT " Zuckerstangen..."
SLEEP
191
CLS : PRINT
PRINT " Was tut ihr jetzt?": PRINT
PRINT " (1) Das ganze Zeug futtern"
PRINT " (2) Mit den Zombies ein"
PRINT "     Trinkgelage veranstalten"
PRINT " (3) Die Zombies mit den Sá-"
PRINT "     igkeiten bewerfen"
INPUT "  ", a$
IF a$ = "1" THEN 192
IF a$ = "2" THEN 193
IF a$ = "3" THEN 194
GOTO 191
192
CLS : PRINT
PRINT " W„hrend ihr futtert, kommen die"
PRINT " Zombies rein und knabbern an euch"
PRINT " rum..."
SLEEP: GOTO 999
193
CLS : PRINT
PRINT " ...und die Speise seit leider"
PRINT " ihr..."
SLEEP: GOTO 999
194
CLS : PRINT
PRINT " Ihr bemerkt, dass sich die Zombies"
PRINT " aufl”sen, also bewerft ihr alle"
PRINT " Zombies der Stadt mit Sáigkeiten..."
SLEEP
Ende:
SCREEN 12
CLS : COLOR 15
PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
PRINT "                                 E N D E"
SLEEP
CLS
SCREEN 12
COLOR 3
PRINT
PRINT
PRINT
PRINT
PRINT
PRINT "           Das war's..."
PRINT
PRINT
COLOR 2
PRINT "           Du hast die Vollversion (oder auch Beta-Version)"
PRINT "           von Pain-City durchgespielt."
PRINT
PRINT
COLOR 4
PRINT "           Anregungen und Kritiken an:"
PRINT "           Mathias Holzer"
PRINT "           Ringstr. 20"
PRINT "           66646 Marpingen/Alsweiler"
PRINT "           E-Mail: mcgeiz@gmx.net"
COLOR 15
PRINT
PRINT "           ..."
IF SOUND$ = "0" THEN GOTO s8
BEEP: SLEEP 1: BEEP
s8:
SLEEP 4
FOR col = 0 TO 639 STEP 3
  FOR row = 0 TO 479 STEP 2
   PRESET (col, row)
  NEXT row
NEXT col
SCREEN 0
GOTO h
999
CLS
PRINT
COLOR 1
PRINT "    G       A       M       E                 O         V         E        R"
PRINT
COLOR 4
PRINT "      G       A       M       E             O         V         E        R"
PRINT
COLOR 5
PRINT "        G       A       M       E         O         V         E        R"
PRINT
COLOR 4
PRINT "          G       A       M       E     O         V         E        R"
PRINT
COLOR 1
PRINT "            G       A       M       E O         V         E        R"
PRINT
COLOR 2
PRINT "                                 GAME OVER "
PRINT
COLOR 15
PRINT "                             G A M E - O V E R"
s999:
SLEEP 2
IF INKEY$ = CHR$(27) THEN GOTO h
CLS
PRINT
PRINT "                  D U   H A S T   V E R L O R E N    ! ! ! "
SLEEP 2
GOTO h
credits:
SCREEN 12
CLS
COLOR 8
LINE (175, 40)-(460, 332), , B
COLOR 9
PRINT
PRINT
PRINT
PRINT "                                C R E D I T S :                         "
PRINT "                                øøøøøøøøøøøøøøø                         "
PRINT "                                                                        "
PRINT "                                                                        "
PRINT "                                                                        "
PRINT "                                                                        "
COLOR 2
PRINT "                       Idee          :    Mathias Holzer                "
PRINT "                       øøøøøøøøøøøøøøø                                  "
PRINT "                       Inspiration   :    Wolfram Sticher               "
PRINT "                       øøøøøøøøøøøøøøø                                  "
PRINT "                       Gestaltung    :    Mathias Holzer                "
PRINT "                       øøøøøøøøøøøøøøø                                  "
PRINT "                       Programmierung:    Mathias Holzer                "
PRINT "                       øøøøøøøøøøøøøøø                                  "
PRINT "                       Tester        :    Philipp Eckert,               "
PRINT "                       øøøøøøøøøøøøøøø    Leonid Littau,                "
PRINT "                                          Rene Mosenthin                "
SLEEP 3
SCREEN 0
COLOR 15
CLS
SYSTEM
shift:
CLS
COLOR 11
PRINT
PRINT " Sorry aber meine Shift-Taste "
PRINT " war kurzzeitig defekt. "
PRINT " ... "
SLEEP
COLOR 15
RETURN
SYSTEM

