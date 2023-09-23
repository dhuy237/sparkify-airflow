from airflow.hooks.postgres_hook import PostgresHook
from airflow.models import BaseOperator
from airflow.utils.decorators import apply_defaults
from helpers import SqlQueries


class LoadDimensionOperator(BaseOperator):

    ui_color = '#80BD9E'

    @apply_defaults
    def __init__(self,
                redshift_conn_id="",
                table="",
                sql_query="",
                is_append_only=False,
                *args, **kwargs):

        super(LoadDimensionOperator, self).__init__(*args, **kwargs)
        self.redshift_conn_id = redshift_conn_id
        self.table = table
        self.sql_query = sql_query
        self.is_append_only = is_append_only

    def execute(self, context):
        redshift = PostgresHook(postgres_conn_id=self.redshift_conn_id)

        if not self.append_only:
            self.log.info("Deleting {} table".format(self.table))
            redshift.run("DELETE FROM {}".format(self.table))

        self.log.info("Inserting data from fact table into {} table".format(self.table))
        format_sql = getattr(SqlQueries, self.sql_query).format(self.table)
        redshift.run(format_sql)
