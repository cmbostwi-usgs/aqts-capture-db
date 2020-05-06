create table if not exists ${AQTS_SCHEMA_NAME}.time_series_approvals
(time_series_approvals_id                bigint generated by default as identity (start with 1)
,json_data_id                            bigint
,start_time                              timestamp
,end_time                                timestamp
,approval_user                           text
,approval_comment                        text
,approval_level                          text
,level_description                       text
,date_applied_utc                        timestamp
,partition_number                        integer default extract( month from now() )
)
partition by list (partition_number);
