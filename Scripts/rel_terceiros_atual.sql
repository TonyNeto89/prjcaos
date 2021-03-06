SELECT 
"TERFEC"."CODCLIFOR",
"TERCAL"."NUMDOC",
"TERCAL"."SERDOC",
"TERCAL"."DATDOC",
"TERCAL"."DEBCRE",
"TERCAL"."VALOR",
"TERCAL"."TIPDOC",
"TERCAL"."CODVEI",
"TERCAL"."FILDOC",
"RODCLI_ctrc"."RAZSOC",
"RODCLI_ost"."RAZSOC",
"RODCLI_act"."RAZSOC",
"TERFEC"."CODFEC",
"RODCLI"."RAZSOC",
"VW_RODCOL_RODICO"."NUMCTN",
"VW_RODCON_RODNFC"."NUMCTN",
"VW_RODORD_RODIOS"."NUMCTN",
"RODLIN_act"."CODLIN",
"RODLIN_ctrc"."CODLIN",
"RODLIN_ost"."CODLIN",
"RODACE"."REFERE"
FROM   (((((((((((("db_visual_rodopar"."dbo"."TERFEC" "TERFEC" LEFT OUTER JOIN "db_visual_rodopar"."dbo"."TERIFC" "TERIFC" ON "TERFEC"."CODFEC"="TERIFC"."CODFEC") LEFT OUTER JOIN "db_visual_rodopar"."dbo"."RODCLI" "RODCLI" ON "TERFEC"."CODCLIFOR"="RODCLI"."CODCLIFOR") LEFT OUTER JOIN "db_visual_rodopar"."dbo"."TERCAL" "TERCAL" ON "TERIFC"."ID_CAL"="TERCAL"."ID_CAL") LEFT OUTER JOIN "db_visual_rodopar"."dbo"."VW_RODord_RODIos1" "VW_RODORD_RODIOS" ON (("TERCAL"."NUMDOC"="VW_RODORD_RODIOS"."CODIGO") AND ("TERCAL"."SERDOC"="VW_RODORD_RODIOS"."SERORD")) AND ("TERCAL"."FILDOC"="VW_RODORD_RODIOS"."CODFIL")) LEFT OUTER JOIN "db_visual_rodopar"."dbo"."VW_RODCON_RODNFC" "VW_RODCON_RODNFC" ON (("TERCAL"."NUMDOC"="VW_RODCON_RODNFC"."CODCON") AND ("TERCAL"."SERDOC"="VW_RODCON_RODNFC"."SERCON")) AND ("TERCAL"."FILDOC"="VW_RODCON_RODNFC"."CODFIL")) LEFT OUTER JOIN "db_visual_rodopar"."dbo"."VW_RODCOL_RODICO" "VW_RODCOL_RODICO" ON (("TERCAL"."NUMDOC"="VW_RODCOL_RODICO"."CODIGO") AND ("TERCAL"."SERDOC"="VW_RODCOL_RODICO"."SERCOL")) AND ("TERCAL"."FILDOC"="VW_RODCOL_RODICO"."CODFIL")) LEFT OUTER JOIN "db_visual_rodopar"."dbo"."RODACE" "RODACE" ON "TERCAL"."NUMDOC"="RODACE"."ID_ACE") LEFT OUTER JOIN "db_visual_rodopar"."dbo"."RODCLI" "RODCLI_act" ON "VW_RODCOL_RODICO"."CODREM"="RODCLI_act"."CODCLIFOR") LEFT OUTER JOIN "db_visual_rodopar"."dbo"."RODLIN" "RODLIN_act" ON "VW_RODCOL_RODICO"."CODLIN"="RODLIN_act"."CODLIN") LEFT OUTER JOIN "db_visual_rodopar"."dbo"."RODCLI" "RODCLI_ctrc" ON "VW_RODCON_RODNFC"."CODREM"="RODCLI_ctrc"."CODCLIFOR") LEFT OUTER JOIN "db_visual_rodopar"."dbo"."RODLIN" "RODLIN_ctrc" ON "VW_RODCON_RODNFC"."CODLIN"="RODLIN_ctrc"."CODLIN") LEFT OUTER JOIN "db_visual_rodopar"."dbo"."RODCLI" "RODCLI_ost" ON "VW_RODORD_RODIOS"."CODREM"="RODCLI_ost"."CODCLIFOR") LEFT OUTER JOIN "db_visual_rodopar"."dbo"."RODLIN" "RODLIN_ost" ON "VW_RODORD_RODIOS"."CODLIN"="RODLIN_ost"."CODLIN"
WHERE  "TERFEC"."CODFEC"=4969 AND "TERFEC"."CODCLIFOR"=2808
ORDER BY "TERCAL"."DATDOC"


