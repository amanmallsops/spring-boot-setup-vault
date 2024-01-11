# Use the official Vault image
FROM vault:1.4.0

ENV VAULT_ADDR=${VAULT_ADDR} \
    CONFIG_DIR=${CONFIG_DIR}

# Set the working directory
WORKDIR /config

# Copy the initialization script to the container
COPY . /config/.


# Sleep before running the initialization script
CMD ["/bin/sh", "-c", "sleep 2 && /config/vault-init.sh"]

