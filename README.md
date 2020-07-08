# sfdc_18_char_id
Redshift UDF in Python for converting 15 character Salesforce IDs to 18 character IDs

## Description
Redshift allows the creation of scalar user-defined functions in Python or SQL.

Salesforce record IDs are case-sensitive, 15-character strings but the company realized the need for case-insensitive IDs. They developed an algorithm for appending a three-character suffix which makes the IDs case-insensitive.

This UDF allows Redshift users to convert 15-character IDs to the case-insensitive, 18-character version.
