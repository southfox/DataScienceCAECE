SELECT * FROM clientes c JOIN locales l ON l.clienteid = c.id 
						 JOIN vendedores_locales vl ON vl.localid = l.id 
                         WHERE vl.vendedorid = 2; 
