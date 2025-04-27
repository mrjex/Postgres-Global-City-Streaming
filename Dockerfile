# Pull postgres 16 image for compatibility
FROM postgres:16

# Create directory for config files
RUN mkdir -p /etc/postgresql && chown postgres:postgres /etc/postgresql

# Copy configuration files
COPY postgresql.conf /etc/postgresql/postgresql.conf
COPY pg_hba.conf /etc/postgresql/pg_hba.conf

# Set proper permissions
RUN chown postgres:postgres /etc/postgresql/postgresql.conf /etc/postgresql/pg_hba.conf && \
    chmod 644 /etc/postgresql/postgresql.conf /etc/postgresql/pg_hba.conf

# Put the .sql file in the execution-directory of the container
COPY create_table.sql /docker-entrypoint-initdb.d/

# Use custom config
CMD ["postgres", "-c", "config_file=/etc/postgresql/postgresql.conf"]