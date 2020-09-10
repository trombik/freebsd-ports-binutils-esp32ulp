--- gas/config/esp32ulp-parse.y.orig	2020-09-09 10:52:39 UTC
+++ gas/config/esp32ulp-parse.y
@@ -759,10 +759,6 @@ symbol: SYMBOL
 any_gotrel:
 	GOT
 	{ $$ = BFD_RELOC_ESP32ULP_GOT; }
-	| GOT17M4
-	{ $$ = BFD_RELOC_ESP32ULP_GOT17M4; }
-	| FUNCDESC_GOT17M4
-	{ $$ = BFD_RELOC_ESP32ULP_FUNCDESC_GOT17M4; }
 	;
 
 got:	symbol AT any_gotrel
