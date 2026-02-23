import {
  createFrontendPlugin,
} from '@backstage/frontend-plugin-api';
import {
  EntityContentBlueprint,
} from '@backstage/plugin-catalog-react/alpha';

export const entityCatalogCardN: any = EntityContentBlueprint.make({
  name: 'entityCatalogCardN',
  params: {
    path: 'catalog-tab-n',
    title: 'Catalog Tab N',
    loader: () =>
      import('./components/ExampleComponent').then(m => (
        <m.ExampleComponent />
      )),
  },
});

export const catalogTabNPlugin = createFrontendPlugin({
  pluginId: 'catalog-tab-n',
  extensions: [entityCatalogCardN],
});
