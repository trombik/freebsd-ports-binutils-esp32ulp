--- gas/config/esp32s2ulp-parse.y.orig	2020-09-09 23:30:48 UTC
+++ gas/config/esp32s2ulp-parse.y
@@ -923,10 +923,6 @@ symbol: SYMBOL
 any_gotrel:
 	GOT
 	{ $$ = BFD_RELOC_ESP32S2ULP_GOT; }
-	| GOT17M4
-	{ $$ = BFD_RELOC_ESP32S2ULP_GOT17M4; }
-	| FUNCDESC_GOT17M4
-	{ $$ = BFD_RELOC_ESP32S2ULP_FUNCDESC_GOT17M4; }
 	;
 
 got:	symbol AT any_gotrel
