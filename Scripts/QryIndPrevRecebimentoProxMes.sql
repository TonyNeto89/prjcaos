--SITUAC: N = N�O EMITIDA, E = EMITIDA, C = CANCELADA, I = INCONSISTENTE

SELECT 

	'PR�VIA RECEBIMENTO' AS ID,

	SUM(dup.VLRDUP) AS VALOR

FROM

	RODDUP dup INNER JOIN RECDOCI rdi ON
	
	dup.CODFIL = rdi.CODFIL AND
	
	dup.NUMDUP = rdi.NUMDUP

WHERE

	dup.SITUAC <> 'C' AND

	rdi.SITUAC = 'D' AND

	dup.DATVEN BETWEEN DATEADD(MM, 1, DATEADD(SS, 1, DATEADD(MM, 1, DATEADD(MM, DATEDIFF(MM, 0, GETDATE()) - 1, 0)))) AND

				   DATEADD(MM, 1, DATEADD(SS, -1, DATEADD(MM, DATEDIFF(MM, 0, GETDATE()) + 1, 0)))