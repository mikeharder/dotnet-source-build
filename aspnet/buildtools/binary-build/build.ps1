$sourceDir = '../../../../BuildTools'

Copy-Item ../.dockerignore $sourceDir
Copy-Item Dockerfile $sourceDir

docker build -t aspnet-binary-build:BuildTools -f $sourceDir/Dockerfile $sourceDir

Remove-Item $sourceDir/.dockerignore
Remove-Item $sourceDir/Dockerfile
