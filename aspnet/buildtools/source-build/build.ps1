$sourceDir = '../../../../BuildTools'

Copy-Item ../../.dockerignore $sourceDir
Copy-Item Dockerfile $sourceDir

docker build --network none -t aspnet-source-build:BuildTools -f $sourceDir/Dockerfile $sourceDir

Remove-Item $sourceDir/.dockerignore
Remove-Item $sourceDir/Dockerfile
