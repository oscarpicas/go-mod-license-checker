# Check licenses of dependencies for go projects using modules

Just create a new yaml file under `.github/workflow` with this content:

```yaml
on: pull_request

jobs:
  license-check:
    runs-on: ubuntu-latest
    name: License Check
    steps:
      - uses: actions/checkout@v2
      - uses: oscarpicas/go-mod-license-checker
```

You will get a csv with a list of licenses in your action outputs.
