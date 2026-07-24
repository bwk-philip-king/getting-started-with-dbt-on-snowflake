-- replace all references to "tasty_bytes_dbt_db" with "dbt_projects"
-- replace all references to "tasty_bytes_dbt_wh" with "dbt_projects_wh"

SHOW TABLES IN DATABASE dbt_projects;
SHOW VIEWS IN DATABASE dbt_projects;
SHOW DBT PROJECTS LIKE 'tasty%';

show network policies in account;
-- Check the user's current network policy:
SHOW PARAMETERS LIKE 'NETWORK_POLICY' FOR USER github_actions_service_user;
-- -- Add the new rule:
-- ALTER NETWORK POLICY BRICKWORKS_SNOWFLAKE_NETWORK_POLICY ADD ALLOWED_NETWORK_RULE_LIST = ('SNOWFLAKE.NETWORK_SECURITY.GITHUBACTIONS_GLOBAL');
