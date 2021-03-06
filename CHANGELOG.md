# Changelog

## 0.49.0

Released 2017-01-18

- Support Node v6


## 0.48.5

Released 2016-12-19

- Use DS exception safe API functions #243
- `.travis.yml` improvements: Add postgis addon, Use trusty


## 0.48.4

Released 2016-11-30

- Cast updated_at column to ::timestamp to avoid UNION types errors.


## 0.48.3

Released 2016-11-23

- Fix bug preventing line-sequential limits in some cases


## 0.48.2

Released 2016-11-23

- Enhanced analysis pre-checking usig EXPLAIN
- Avoid duplicated input nodes at topsort level


## 0.48.1

Released 2016-11-10

- Fix incorrect analysis limit for aggregate-intersection


## 0.48.0

Released 2016-11-10

- Analysis requirements are checked before registration


## 0.47.0

Released 2016-11-08

- Buffer returns `cartodb_id` when using dissolved option
- Make mandatory `order_colum` and `order_type` params for line-sequential analysis


## 0.46.3

Released 2016-11-04

- Fix issue while sorting and validating analysis


## 0.46.2

Released 2016-11-01

- Expose `node_id` when cycle error is found


## 0.46.1

Released 2016-10-25

- Fix race condition during analysis creation


## 0.46.0

Released 2016-10-19

- Call SQL function `CDB_CheckAnalysisQuota` each time an analysis cache table is populated


## 0.45.0

Released 2016-10-11

 - Allow to set timeouts per analysis tag.
 - Allow to set timeouts per analysis type.


## 0.44.2

Released 2016-09-30

 - Log nodes with info about queued work.


## 0.44.1

Released 2016-09-28

 - Basic logging: Log once collected analysis data


## 0.44.0

Released 2016-09-26

 - Add contour analysis #186
 - Add gravity analysis #172
 - Basic logging to track analysis #192


## 0.43.0

Released 2016-09-14

 - Returns `cartodb_id` column for trade-area whether dissolved is enabled
 - Uses `test-helper` utility in acceptance test
 - Transforms `2D cartesian distance` to `kilometers` for column length in connect with lines analyses
 - Adds `category_column` to connect with lines (sequential) analysis

## 0.42.2

Released 2016-09-09

 - Put back vals column in moram analysis #195.


## 0.42.1

Released 2016-09-07

 - Cache `buffer` results: buffer+intersection anti-pattern is quite expensive otherwise.


## 0.42.0

Released 2016-09-06

 - Adds column length to connect with lines analyses #187.
 - Fixes connect with lines analysis, now closest option connects to the closest geometry for each source geometry #188.

## 0.41.0

Released 2016-08-23

 - Added Connect with Lines analyses.
 - Added Group point analyses.


## 0.40.0

Released 2016-08-16

 - Add closest features finding #171.
 - Change to use agnostic functions for isochrones and geocode-street #165.
 - Node model exposes method to determine if it's out of date from its input nodes.


## 0.39.0

Released 2016-08-09

 - Lazy nodes: skip filters from parent nodes and apply themselves.
 - Freeze last updated time for queries/tables not found by CDB_QueryTables_Updated_At #143.


## 0.38.1

Released 2016-07-21

 - Fixes missing `cartodb_id` column in merge analysis.


## 0.38.0

Released 2016-07-21

 - Set order clause in AOI analysis to render polygons big-to-small
 - Now in intersection analysis client is able to specify source columns.


## 0.37.1

Released 2016-07-18

 - Changed default value for trade-area provider.


## 0.37.0

Released 2016-07-15

 - Fixed issues in geocoding analysis:
 - Allowed to use column values and custom tests in params
 - Created a separated analysis for country geocoding
 - Made optional some params and used different geocoding functions depending on input params.


## 0.36.0

Released 2016-07-11

 - Added `node_id` param to errors in node creation to specify the exact node where the error happened


## 0.35.0

Released 2016-07-08

 - Node gets last error message from analysis catalog database.


## 0.34.0

Released 2016-07-07

 - Trade Area accepts provider service as input param


## 0.33.3

Released 2016-07-06

 - Avoid creating the same table from factory.


## 0.33.2

Released 2016-07-06

 - Fixes validation for nodes: it was failing when a node was missing from the definition.


## 0.33.1

Released 2016-07-06

 - Cache `intersection` and `aggregate-intersection` analyses.
 - Fixed column naming in aggregate intersection analysis.


## 0.33.0

Released 2016-07-06

 - Now SQL functions are fully qualified #113
 - Georeference Street Address has a param to choose the 3rd party service to look up


## 0.32.0

Released 2016-07-05

 - Added column density in aggregate intersection analysis.


## 0.31.0

Released 2016-07-05

 - Use internal version for backwards incompatible releases.


## 0.30.0

Released 2016-07-05

 - Limit cached table names to 60 chars #122.


## 0.29.2

Released 2016-07-05

 - Cache filter-grouped-rank analysis as it needs full knowledge of the table it.


## 0.29.1

Released 2016-07-05

 - Cached tables don't get recreated when applying a filter #535.
 - Cache filter-rank analysis as it needs full knowledge of the table it.


## 0.29.0

Released 2016-07-04

 - Adds merge analysis.


## 0.28.1

Released 2016-07-04

 - Make kmeans analysis consistent between runs #116.


## 0.28.0

Released 2016-07-04

 - Store errors in new analysis catalog table #109.


## 0.27.0

Released 2016-07-04

 - Adds routing analyses
 - Adds rank filters (all and grouped rankings)


## 0.26.0

Released 2016-07-04

 - Make the aggregation_column param of the aggreagation-intersection optional when the operation is `count` #102.
 - Improves cached nodes and filters inner working: cache table target name independent from filters #114.
 - Adds markov analysis #112.
 - Skips retrieval of last update time for root source nodes #110


## 0.25.0

Released 2016-07-02

 - Skip retrieval of last update time for root source nodes.
 - Allow to skip retrieval of last update in database service.


## 0.24.0

Released 2016-07-02

 - Nodes now has owners, the owner modifies the node.id.
   - This is a BREAKING CHANGE: clients need to provide a user in configuration.
 - Ignore duplicated node ids when registering them, allowing several clients to run in parallel.
 - Allow to have attributes that modifies node.id() without getting into json #103.


## 0.23.0

Released 2016-06-30

 - Allow any geometry in weighted-centroid #100.


## 0.22.4

Released 2016-06-28

 - Ignore unique_violation error (23505) on table creation.


## 0.22.3

Released 2016-06-28

 - Reverse intersection and aggregate-intersection st_intersects geometry intersection.


## 0.22.2

Released 2016-06-28

 - Use a transaction to delete/insert into cache tables.


## 0.22.1

Released 2016-06-28

 - Intersection nodes gets augmented with columns from target node #95.
 - Automatically populate nodes from nodes directory, no need to add them manually.


## 0.22.0

Released 2016-06-24

 - Adds centroid analysis #87.
 - Make weighted-centroid's category_column param optional #88.


## 0.21.0

Released 2016-06-23

 - Add Filter rank analysis #75.
 - Generate cartodb_id in weighted-centroid analysis #72.
 - Add Convex hull analysis #76.


## 0.20.0

Released 2016-06-22

 - Link by line analysis #67.
 - Fix regression on incorrect cycles for dag #74.


## 0.19.0

Released 2016-06-21

 - Adds georeference analyses:
  - Longitude latitude
  - Admin region
  - City
  - Street address
  - Postal code
  - IP address


## 0.18.0

Released 2016-06-20

 - Add support for points in moran.


## 0.17.1

Released 2016-06-15

 - Improves some queries avoiding CTE usages.


## 0.17.0

Released 2016-06-15

 - Adds aggregation options in weighted-centroid.


## 0.16.0

Released 2016-06-15

 - Fix moran queries:
   - Use a custom filter for significance param, ignore significance for cache table.
   - Use `Rate` when denominator is provided.
   - Make neighbours and permutations params optional.
 - Add method to ignore param for the node id generation
 - Replace `validate` with `beforeCreate` option to modify nodes before create/return them
 - Option to bump version an force analysis recalculation.
 - Optional params are casted to null when not provided.


## 0.15.1

Released 2016-06-14

 - Release with latest reference updated


## 0.15.0

Released 2016-06-13

 - Adds filter by node column analysis


## 0.14.1

Released 2016-06-10

 - Use new CDB_WeightedMean aggregate function #49


## 0.14.0

Released 2016-06-10

 - Removes isolines constraint for dissolved option in buffer analysis
 - Adds analyses: kmeans, weighted-centroid, data-observatory-measure


## 0.13.0

Released 2016-06-03

 - Export version from package


## 0.12.1

Released 2016-06-01

 - Fix filter-range and filter-category nodes


## 0.12.0

Released 2016-06-01

 - Add support to filter dates by range


## 0.11.0

Released 2016-05-30

 - Fixes for node status: #32 and #33
 - New public method to retrieve all nodes from an analysis #31


## 0.10.0

Released 2016-05-27

 - Add `isolines` and `dissolved` optional params to buffer #26


## 0.9.0

Released 2016-05-27

 - NODE param provides a list of accepted geometries for the analysis.


## 0.8.0

Released 2016-05-11

 - Public Node.getFilters method


## 0.7.0

Released 2016-05-11

 - Filter by category analysis #23
 - Filter by range analysis #22
 - Option to validate node before being returned #21
 - Add support for array params #20
 - Avoid Node class creation with reserved keywords #19
 - Allow to have optional/nullable params #18


## 0.6.0

Released 2016-05-03

 - Added intersection and aggregate-intersection analyses
 - Added trade-area analysis


## 0.5.1

Released 2016-04-29

 - Decouple workflow factory from camshaft-reference
 - Fixes Analysis.getSortedNodes/toposort including root node when is the only node #12


## 0.5.0

Released 2016-04-20

 - Add param to configure batch api host header template


## 0.4.0

Released 2016-04-20
