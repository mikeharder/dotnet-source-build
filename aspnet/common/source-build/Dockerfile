FROM aspnet-from-source:buildtools

WORKDIR /common

COPY . .

# Restore in separate layer to reduce incremental build times when
# restore succeeds but compile fails
RUN ./build.sh -v -d ${DOTNET_TOOL_DIR} /t:Restore /p:Configuration=Release /p:RestoreSources=${NUGET_PACKAGES}

RUN ./build.sh -v -d ${DOTNET_TOOL_DIR} /t:Package /p:Configuration=Release
