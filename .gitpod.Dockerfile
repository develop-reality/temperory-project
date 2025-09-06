# Use Gitpod's full image (includes docker, many dev tools)
FROM gitpod/workspace-full

USER root
# Install ssh server and docker-compose (docker CLI already present)
RUN sudo apt-get update \
 && sudo apt-get install -y openssh-server docker-compose \
 && sudo mkdir -p /var/run/sshd

# Switch back to non-root (workspace runs as gitpod user)
USER gitpod
