FROM python:3.10

# Install Node.js 14+
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

# Install Git, kubectl, kubelogin, terraform, azure cli
RUN apt-get update && apt-get install -y git apt-transport-https gnupg2 curl lsb-release
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list
RUN curl https://raw.githubusercontent.com/int128/kubelogin/master/deb/debian/public.key | apt-key add -
RUN echo "deb https://int128.github.io/kubelogin/deb stable main" | tee /etc/apt/sources.list.d/kubelogin.list
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash
RUN apt-get update && apt-get install -y kubectl kubelogin terraform

# Create a non-root user to use if preferred - see https://aka.ms/vscode-remote/containers/non-root-user.
RUN useradd -m vscode