FROM dotnet-source-build:fedora-23

RUN git clone --recursive https://github.com/dotnet/source-build && cd source-build && git checkout 9d4073e

WORKDIR /patches

COPY *.patch .

WORKDIR /source-build

RUN git apply --ignore-whitespace --whitespace=nowarn /patches/0001-Fix-Version.patch

RUN ./build.sh
