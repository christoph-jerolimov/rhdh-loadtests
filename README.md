## Argo CD applications

WIP

## Catalog entities

Select 10, 100, 1000 or 10000 components, groups and system catalog entities as shown below:

```yaml
upstream:
  backstage:
    appConfig:
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
