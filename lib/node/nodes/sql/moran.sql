WITH
input_query as (
  {{=it._query}}
),
moran as (
  SELECT * FROM
  cdb_crankshaft.CDB_AreasOfInterestLocal(
    '{{=it._query}}',
    '{{=it._numeratorColumn}}',
    '{{=it._wType}}',
    {{=it._neighbours}},
    {{=it._permutations}},
    'the_geom',
    'cartodb_id'
  )
)
SELECT input_query.*, moran.*
FROM input_query JOIN moran
ON moran.rowid = input_query.cartodb_id
