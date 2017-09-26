FROM dotnet-source-build:fedora-23

# Unzip is required by ASP.NET repos to extract KoreBuild.zip
RUN dnf update -y && \
    dnf install -y unzip && \
    dnf clean all && \
    rm -rf /tmp/* /var/tmp/*

# Need to run "git submodule update --recursive --remote" after checkout?
RUN git clone --recursive https://github.com/dotnet/source-build && \
    cd source-build && \
    git checkout dev/release/2.0.0

WORKDIR /patches

COPY *.patch .

WORKDIR /source-build

RUN git apply --ignore-whitespace --whitespace=nowarn /patches/0001-Fix-Version.patch

RUN ./build.sh
