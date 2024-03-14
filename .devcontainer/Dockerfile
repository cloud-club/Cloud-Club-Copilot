FROM nikolaik/python-nodejs:python3.10-nodejs21

# Install Node.js 14+
# RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
# RUN apt-get install -y nodejs npm
# RUN npm install -g npm

# Install Git, kubectl, kubelogin, terraform, azure cli
RUN apt-get update && apt-get install -y git curl openssl bash gawk

RUN git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
RUN echo 'source ~/.asdf/asdf.sh' >> ~/.bashrc
RUN /bin/bash -c "source ~/.asdf/asdf.sh && asdf plugin add kubelogin && asdf install kubelogin latest && asdf global kubelogin latest"

# Download and install kubectl
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" \
    && chmod +x ./kubectl \
    && mv ./kubectl /usr/local/bin/kubectl

RUN curl -LO "https://releases.hashicorp.com/terraform/1.0.9/terraform_1.0.9_linux_amd64.zip" \
    && unzip terraform_1.0.9_linux_amd64.zip \
    && install -o root -g root -m 0755 terraform /usr/local/bin/terraform

# Create a non-root user to use if preferred - see https://aka.ms/vscode-remote/containers/non-root-user.
RUN useradd -m vscode