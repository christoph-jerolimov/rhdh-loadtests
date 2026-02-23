import {
  createComponentExtension,
  createPlugin,
} from '@backstage/core-plugin-api';

export const catalogTabNPlugin = createPlugin({
  id: 'catalog-tab-n',
});

export const EntityCatalogCardN = catalogTabNPlugin.provide(
  createComponentExtension({
    name: 'EntityCatalogCardN',
    component: {
      lazy: () =>
        import('./components/ExampleComponent').then(m => m.ExampleComponent),
    },
  }),
);
