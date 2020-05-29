# pubsub-emulator

[Google Pub/Sub Emulator](https://cloud.google.com/pubsub/docs/emulator) 

## Build

```
$ make docker <version>
```

## Run

```
docker run -e 'CLOUDSDK_CORE_PROJECT=test-project' -p '8080:8080' alxmsl/pubsub-emulator:285 
```

## Check

```go
package main

import (
	"context"
	"fmt"

	"cloud.google.com/go/pubsub"
)

func main() {

}
```
