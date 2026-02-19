## Argo CD applications

WIP

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
