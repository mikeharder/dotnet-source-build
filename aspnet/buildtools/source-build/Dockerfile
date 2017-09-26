FROM dotnet-source-build:fedora-23-compiled

# Set by dotnet/source-build/build.sh and dotnet/source-build/dir.props
ENV DotNetBuildFromSource=true \
    DOTNET_SKIP_FIRST_TIME_EXPERIENCE=true \
    NUGET_PACKAGES=/source-build/packages \
    DOTNET_TOOL_DIR=/source-build/Tools/dotnetcli

# Use existing runtime
ENV KOREBUILD_SKIP_RUNTIME_INSTALL=true

# Required for 2.1 branches to use existing SDK, but cannot be used with rel/2.0.0
# ENV KOREBUILD_DOTNET_VERSION=latest

# Prevent install of NetFx reference assembies
RUN mkdir -p ${DOTNET_TOOL_DIR}/buildtools/netfx/4.6.1

WORKDIR /buildtools

COPY . .

# Restore in separate layer to reduce incremental build times when
# restore succeeds but compile fails
RUN ./build.sh -v -d ${DOTNET_TOOL_DIR} /t:Restore /p:Configuration=Release /p:RestoreSources=${NUGET_PACKAGES}

RUN ./build.sh -v -d ${DOTNET_TOOL_DIR} /t:Package /p:Configuration=Release /p:RestoreSources=${NUGET_PACKAGES}
