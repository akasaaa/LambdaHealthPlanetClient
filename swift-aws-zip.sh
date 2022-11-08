docker run --rm -v "$(pwd)":/workspace -w /workspace builder bash -cl "swift build --product LambdaHealthPlanetClient -c release -Xswiftc -g"
docker run --rm -v "$(pwd)":/workspace -w /workspace builder bash -cl "./package.sh"
open .build/lambda/LambdaHealthPlanetClient

