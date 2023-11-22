EXTEND_BOTTOM SCROLL01 0
	IF ~HasItemEquiped("PXPMLDOR",LastTalkedToBy()) Global("Pxpmldor","LOCALS",0)~ THEN GOTO PXSCR1
	IF ~HasItemEquiped("PXPMLDOR",LastTalkedToBy()) Global("Pxpmldor","LOCALS",3) PartyHasItem("MISCBP") PartyGoldGT(11170)~ THEN GOTO PXSCROK
END

APPEND SCROLL01
	IF ~~ THEN BEGIN PXSCR1 SAY @51
	IF ~~ DO ~SetGlobal("Pxpmldor","LOCALS",3)~GOTO PXSCR2
	END

	IF ~~ THEN BEGIN PXSCR2 SAY @52
	IF ~~ THEN REPLY @54 EXIT
	IF ~~ THEN REPLY #46526 /* ~Voyons voir ce que vous proposez.~ */ GOTO 5
	END

	IF ~~ THEN BEGIN PXSCROK SAY @53
		IF ~~ THEN REPLY #66664 DO
			~TakePartyItemNum("Pxpmldor",1)	DestroyItem("Pxpmldor")
			TakePartyGold(11171)	DestroyGold(11717)
			CreateVisualEffectObject("spcrtwpn",Myself)
			GiveItemCreate("Pxpmldaz",LastTalkedToBy(),1,1,1)~
			EXIT
		IF ~~ THEN REPLY #66662 EXIT
	END
END
