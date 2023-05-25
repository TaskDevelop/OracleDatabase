select count(*) from (
SELECT pedido || cod_item, COUNT(pedido || cod_item) AS chave
FROM portal_supply.app_abertura_carteira
GROUP BY pedido || cod_item
HAVING COUNT(pedido || cod_item) = 2);
