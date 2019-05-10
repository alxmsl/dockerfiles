# firestore-emulator

[Google Firestore Emulator](https://cloud.google.com/sdk/gcloud/reference/beta/emulators/firestore/) 

## Build

```
$ docker build -t alxmsl/firestore-emulator .
```

## Run

```
docker run -e 'CLOUDSDK_CORE_PROJECT=test-project' -p '8080:8080' alxmsl/firestore-emulator:latest 
```

## Check

```go
package main

import (
	"context"
	"fmt"

	"cloud.google.com/go/firestore"
)

type Data struct {
	Id string       `firestore:"id"`
	Extras []string `firestore:"extras"`
}

func main() {
	ctx := context.Background()

	client, err := firestore.NewClient(ctx, "test-project")
	if err != nil {
		panic(err)
	}

	d1 := &Data{
		Id:     "some id",
		Extras: []string{"some extras"},
	}

	_, err = client.Collection("test").Doc(d1.Id).Set(ctx, d1)
	if err != nil {
		panic(err)
	}

	s, err := client.Collection("test").Doc(d1.Id).Get(ctx)
	if err != nil {
		panic(err)
	}

	d2 := &Data{}
	err = s.DataTo(d2)
	if err != nil {
		panic(err)
	}

	fmt.Println(d1.Id == d2.Id)
}
```
