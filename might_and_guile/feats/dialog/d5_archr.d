BEGIN ~D5_ARCHR~

IF ~Global("D5_FEAT","GLOBAL",1)~ THEN BEGIN d5_archr
SAY @23101	//	~Choose a Called Shot:~
 IF ~GlobalLT("D5_CSTRIP","LOCALS",1)~ THEN REPLY @23113 GOTO d5_archr_1 	//	trip
 IF ~GlobalLT("D5_CSPIN","LOCALS",1)~ THEN REPLY @23111 GOTO d5_archr_2 		//	pin
 IF ~GlobalLT("D5_CSDISARM","LOCALS",1)~ THEN REPLY @23115 GOTO d5_archr_3 	//	disarm
 IF ~GlobalLT("D5_CSCRIPPLE","LOCALS",1) CheckStatGT(myself,5,LEVEL)~ THEN REPLY @23119 GOTO d5_archr_4		//	cripple = 6
 IF ~GlobalLT("D5_CSBLIND","LOCALS",1) CheckStatGT(myself,7,LEVEL)~ THEN REPLY @23121 GOTO d5_archr_5 	//	blind = 6
 IF ~GlobalLT("D5_CSHAMMER","LOCALS",1) CheckStatGT(myself,7,LEVEL)~ THEN REPLY @23117 GOTO d5_archr_6 	//	hammer = 9
 IF ~GlobalLT("D5_CSSTUN","LOCALS",1) CheckStatGT(myself,7,LEVEL)~ THEN REPLY @23123 GOTO d5_archr_7 	//	stun = 9
 IF ~GlobalLT("D5_HEALTH","LOCALS",1)~ THEN REPLY @20305 GOTO d5_archr_17
 IF ~GlobalLT("D5_TOUGH","LOCALS",1)~ THEN REPLY @20307 GOTO d5_archr_18
 IF ~GlobalLT("D5_MSAVES","LOCALS",1)~ THEN REPLY @20213 GOTO d5_archr_46
 IF ~GlobalLT("D5_PSAVES","LOCALS",1)~ THEN REPLY @20215 GOTO d5_archr_47
 IF ~GlobalLT("D5_CRIT","LOCALS",1)~ THEN REPLY @20243 GOTO d5_archr_56
 IF ~GlobalLT("D5_STRIDE","LOCALS",1)~ THEN REPLY @2210 GOTO d5_archr_16
END

IF ~~ THEN BEGIN d5_archr_1 // trip
 SAY @23114
 IF ~~ THEN REPLY @20098 DO ~SetGlobal("D5_CSTRIP","LOCALS",1)~ DO ~ApplySpellRES("D5_CSA",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_archr 
END 
IF ~~ THEN BEGIN d5_archr_2 // pin
 SAY @23112
 IF ~~ THEN REPLY @20098 DO ~SetGlobal("D5_CSPIN","LOCALS",1)~ DO ~ApplySpellRES("D5_CSB",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_archr 
END 
IF ~~ THEN BEGIN d5_archr_3 // disarm
 SAY @23116
 IF ~~ THEN REPLY @20098 DO ~SetGlobal("D5_CSDISARM","LOCALS",1)~ DO ~ApplySpellRES("D5_CSD",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_archr 
END 
IF ~~ THEN BEGIN d5_archr_4 // cripple
 SAY @23120
 IF ~~ THEN REPLY @20098 DO ~SetGlobal("D5_CSCRIPPLE","LOCALS",1)~ DO ~ApplySpellRES("D5_CSC",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_archr 
END 
IF ~~ THEN BEGIN d5_archr_5 // blind
 SAY @23122
 IF ~~ THEN REPLY @20098 DO ~SetGlobal("D5_CSBLIND","LOCALS",1)~ DO ~ApplySpellRES("D5_CSE",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_archr 
END 
IF ~~ THEN BEGIN d5_archr_6 // hammer
 SAY @23118
 IF ~~ THEN REPLY @20098 DO ~SetGlobal("D5_CSHAMMER","LOCALS",1)~ DO ~ApplySpellRES("D5_CSF",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_archr 
END 
IF ~~ THEN BEGIN d5_archr_7 // stun
 SAY @23124
 IF ~~ THEN REPLY @20098 DO ~SetGlobal("D5_CSSTUN","LOCALS",1)~ DO ~ApplySpellRES("D5_CSG",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_archr 
END 
IF ~~ THEN BEGIN d5_archr_17 // extra hp
 SAY @20306
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_HEALTH","LOCALS",1)~ DO ~ApplySpellRES("D5_RFA7",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_archr 
END 
IF ~~ THEN BEGIN d5_archr_18 // DR
 SAY @20308
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_TOUGH","LOCALS",1)~ DO ~ApplySpellRES("D5_RFA8",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_archr 
END 
IF ~~ THEN BEGIN d5_archr_46 // spells/wands saves
 SAY @20214
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_MSAVES","LOCALS",1)~ DO ~ApplySpellRES("D5_RFD6",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_archr 
END 
IF ~~ THEN BEGIN d5_archr_47 // death/polymorph saves
 SAY @20216
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_PSAVES","LOCALS",1)~ DO ~ApplySpellRES("D5_RFD7",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_archr 
END 
IF ~~ THEN BEGIN d5_archr_56 // +5% crit
 SAY @20244
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_CRIT","LOCALS",1)~ DO ~ApplySpellRES("D5_RFE6",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_archr 
END 
IF ~~ THEN BEGIN d5_archr_16 // quickstride
 SAY @20110
 IF ~~ THEN REPLY @20098 DO ~IncrementGlobal("D5_STRIDE","LOCALS",1)~ DO ~ApplySpellRES("D5_RFA6",myself)~ EXIT 
 IF ~~ THEN REPLY @20097 GOTO d5_archr 
END 
