 SELECT ter.DEBCRE, 
	    fec.CODFEC,
		fec.TOTDEB,
		fec.TOTCRE,
		fec.TOTFEC,
		ter.CODVEI,
		ter.NUMDOC,
		ter.DATDOC,
		ter.TIPDOC,
		ter.FILDOC,
		ter.SERDOC,
		ter.CODLIN,
		cli.CODCLIFOR,
		cli.RAZSOC,
		ter.COMPLE,
		vwcon.TOTFRE,
		ter.VALOR,
		ter.TIPCRE,
		vwcol.TOTFRE,
		ace.VLRUNI,
		vword.TOTFRE,
		ctrc.RAZSOC,
		ost.RAZSOC,
		act.RAZSOC,
		ace.REFERE,
		ter.ID_CAL,
		ter.CODFEC
 FROM   TERFEC fec
		LEFT OUTER JOIN TERIFC ifc ON fec.CODFEC = ifc.CODFEC
		LEFT OUTER JOIN RODCLI cli ON fec.CODCLIFOR = cli.CODCLIFOR
		LEFT OUTER JOIN TERCAL ter ON ifc.ID_CAL = ter.ID_CAL
		LEFT OUTER JOIN VW_RODord_RODIos1 vword ON ((ter.NUMDOC = vword.CODIGO) AND
													(ter.SERDOC = vword.SERORD)) AND (ter.FILDOC = vword.CODFIL)
		LEFT OUTER JOIN VW_RODCON_RODNFC vwcon ON ((ter.NUMDOC = vwcon.CODCON) AND
												   (ter.SERDOC = vwcon.SERCON)) AND(ter.FILDOC = vwcon.CODFIL)
		LEFT OUTER JOIN VW_RODCOL_RODICO vwcol ON ((ter.NUMDOC = vwcol."CODIGO") AND
												   (ter.SERDOC = vwcol.SERCOL)) AND (ter.FILDOC = vwcol."CODFIL")
		LEFT OUTER JOIN RODCON con ON ((vwcon.CODCON = con.CODCON) AND
									   (vwcon.SERCON = con.SERCON) AND vwcon.CODFIL = con.CODFIL)
		LEFT OUTER JOIN RODACE ace ON ter.NUMDOC = ace.ID_ACE
		LEFT OUTER JOIN RODCLI act ON vwcol.CODREM = act.CODCLIFOR
		LEFT OUTER JOIN RODCLI ctrc ON vwcon.CODREM = ctrc.CODCLIFOR
		LEFT OUTER JOIN RODCLI ost ON vword.CODREM = ost.CODCLIFOR
 --WHERE  ter.TIPDOC = 'EVC'
 ORDER BY fec."CODFEC",
		  ter."DEBCRE",
		  ter."NUMDOC"