## Catalog entities

Add and adjust the following catalog snippet into your `app-config.yaml`.

Import 10, 100, 1000 or 10000 `components`, `groups` and `systems` entities:

```yaml
catalog:
  locations:
    - type: url
      target: https://github.com/christoph-jerolimov/backstage-loadtests/blob/main/catalog/components-10000.yaml
      rules:
        - allow: [Component]
    - type: url
      target: https://github.com/christoph-jerolimov/backstage-loadtests/blob/main/catalog/groups-100.yaml
      rules:
        - allow: [Group]
    - type: url
      target: https://github.com/christoph-jerolimov/backstage-loadtests/blob/main/catalog/systems-100.yaml
      rules:
        - allow: [System]
```

## Plugins

### Page Plugin(s)

WIP

### Entity Tabs Plugin(s)

WIP
