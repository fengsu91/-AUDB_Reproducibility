SELECT F0."l_extendedprice" AS "l_extendedprice", F0."ub_l_extendedprice" AS "ub_l_extendedprice", F0."lb_l_extendedprice" AS "lb_l_extendedprice", (CASE  WHEN (((((F0."lb_l_shipdate" > '1994-01-01') AND (F0."ub_l_shipdate" < '1996-01-01')) AND (F0."lb_l_discount" > 0.050000)) AND (F0."ub_l_discount" < 0.080000)) AND (F0."ub_l_quantity" < 24)) THEN 1 ELSE 0 END) AS "cet_r", (CASE  WHEN (((((F0."l_shipdate" > '1994-01-01') AND (F0."l_shipdate" < '1996-01-01')) AND (F0."l_discount" > 0.050000)) AND (F0."l_discount" < 0.080000)) AND (F0."l_quantity" < 24)) THEN 1 ELSE 0 END) AS "bst_r", F0."pos_r" AS "pos_r"
FROM (
SELECT F0."l_quantity" AS "l_quantity", F0."l_extendedprice" AS "l_extendedprice", F0."l_discount" AS "l_discount", F0."l_shipdate" AS "l_shipdate", F0."ub_l_quantity" AS "ub_l_quantity", F0."lb_l_quantity" AS "lb_l_quantity", F0."ub_l_extendedprice" AS "ub_l_extendedprice", F0."lb_l_extendedprice" AS "lb_l_extendedprice", F0."ub_l_discount" AS "ub_l_discount", F0."lb_l_discount" AS "lb_l_discount", F0."ub_l_shipdate" AS "ub_l_shipdate", F0."lb_l_shipdate" AS "lb_l_shipdate", F0."pos_r" AS "pos_r"
FROM "lineitem_radb" AS F0) F0
WHERE (((((F0."ub_l_shipdate" > '1994-01-01') AND (F0."lb_l_shipdate" < '1996-01-01')) AND (F0."ub_l_discount" > 0.050000)) AND (F0."lb_l_discount" < 0.080000)) AND (F0."lb_l_quantity" < 24));