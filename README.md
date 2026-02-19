## Argo CD applications

Start an OpenShift cluster with OpenShift GitOps operator.

To create all test apps (currently 4) run:

```bash
oc apply -f argocd/app-of-apps.yaml
```

or, without cloning:

```bash
oc apply -f https://raw.githubusercontent.com/christoph-jerolimov/rhdh-loadtests/refs/heads/main/argocd/app-of-apps.yaml
```

Or apply just a single application (current available: `rhdh-17`, `rhdh-18`, `rhdh-19`, and `rhdh-next`):

```bash
oc apply -f argocd/app-of-apps/rhdh-19.yaml
```

or, without cloning:

```bash
oc apply -f https://raw.githubusercontent.com/christoph-jerolimov/rhdh-loadtests/refs/heads/main/argocd/app-of-apps/rhdh-19.yaml
```

## Catalog entities

Add and adjust the following catalog snippet into your `app-config.yaml`.

Import 10, 100, 1000 or 10000 `components`, `groups`, `systems`, `apis` and `templates` entities as shown below:

```yaml
upstream:
  backstage:
    appConfig:
      catalog:
        locations:
          - type: url
            target: https://github.com/christoph-jerolimov/rhdh-loadtests/blob/main/catalog/components-1000.yaml
            rules:
              - allow: [Component]
          - type: url
            target: https://github.com/christoph-jerolimov/rhdh-loadtests/blob/main/catalog/groups-100.yaml
            rules:
              - allow: [Group]
          - type: url
            target: https://github.com/christoph-jerolimov/rhdh-loadtests/blob/main/catalog/systems-100.yaml
            rules:
              - allow: [System]
          - type: url
            target: https://github.com/christoph-jerolimov/rhdh-loadtests/blob/main/catalog/apis-100.yaml
            rules:
              - allow: [API]
          - type: url
            target: https://github.com/christoph-jerolimov/rhdh-loadtests/blob/main/catalog/templates-100.yaml
            rules:
              - allow: [Template]
```

## Plugins

### Page Plugin(s)

WIP

### Entity Tabs Plugin(s)

WIP
