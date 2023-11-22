BEGIN Todddlg

IF ~AreaCheck("AR1200")~ THEN BEGIN ToddBG1	SAY @41
	IF ~~ THEN REPLY @46 GOTO ChoixMagasin
	IF ~~ THEN REPLY @42 GOTO ComprendRien
END

IF ~AreaCheck("AR0300")~ THEN BEGIN ToddBG2	SAY @41
	IF ~~ THEN REPLY @46 GOTO ChoixMagasin
	IF ~~ THEN REPLY @42 GOTO ComprendRien
END

IF ~AreaCheck("AR2111")~ THEN BEGIN ToddIWD	SAY @41
	IF ~~ THEN REPLY @46 GOTO ChoixMagasin
	IF ~~ THEN REPLY @42 GOTO ComprendRien
END

IF ~~ THEN BEGIN ComprendRien	SAY @43
	IF ~~ THEN REPLY @44 GOTO ChoixMagasin
	IF ~~ THEN REPLY @45 EXIT
END

IF ~~ THEN BEGIN ChoixMagasin	SAY @47
	IF ~~ THEN REPLY @48 DO ~StartStore("pxpmorro",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @49 DO ~StartStore("pxparcan",LastTalkedToBy())~ EXIT
END

IF ~OR(2)
	AreaCheck("BD0106")
	AreaCheck("AR5501")~ THEN BEGIN ToddSOD	SAY @410
	IF ~~ THEN REPLY #4398 GOTO ChoixMagasin2
	IF ~~ THEN REPLY #29418 EXIT
END


IF ~~ THEN BEGIN ChoixMagasin2	SAY @411
	IF ~~ THEN REPLY @48 DO ~StartStore("pxpmorro",LastTalkedToBy())~ EXIT
	IF ~~ THEN REPLY @49 DO ~StartStore("pxparcan",LastTalkedToBy())~ EXIT
END