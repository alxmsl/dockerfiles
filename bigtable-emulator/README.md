# bigtable-emulator

[Google BigTable Emulator](https://cloud.google.com/bigtable/docs/emulator) 

## Build

```
$ make docker <version>
```

## Run

```
docker run -e 'CLOUDSDK_CORE_PROJECT=test-project' -p '8080:8080' alxmsl/bigtable-emulator:297 
```

## Check

```go
package main

import (
	"context"
	"fmt"

	"cloud.google.com/go/bigtable"
)

func main() {

}
```
