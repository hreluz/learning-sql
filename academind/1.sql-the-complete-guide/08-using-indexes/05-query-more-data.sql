EXPLAIN ANALYZE
SELECT * FROM addresses
WHERE street = 'Teststreet' AND city = 'Munich';

-- {
--   "EXPLAIN": "-> Filter: ((addresses.city = 'Munich') and (addresses.street = 'Teststreet'))  (cost=0.85 rows=1) (actual time=0.037..0.0449 rows=3 loops=1)\n    -> Table scan on addresses  (cost=0.85 rows=6) (actual time=0.0335..0.0396 rows=6 loops=1)\n"
-- }

{
  "EXPLAIN": "-> Index lookup on addresses using multiaddress (street='Teststreet', city='Munich')  (cost=0.8 rows=3) (actual time=0.0363..0.0396 rows=3 loops=1)\n"
}