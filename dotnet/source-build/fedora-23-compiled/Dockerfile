FROM dotnet-source-build:fedora-23

# Need to run "git submodule update --recursive --remote" after checkout?
RUN git clone --recursive https://github.com/dotnet/source-build && \
    cd source-build && \
    git checkout dev/release/2.0.0

WORKDIR /patches

COPY *.patch .

WORKDIR /source-build

RUN git apply --ignore-whitespace --whitespace=nowarn /patches/0001-Fix-Version.patch

RUN ./build.sh
