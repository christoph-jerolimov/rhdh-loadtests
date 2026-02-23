import { createDevApp } from '@backstage/dev-utils';
import { catalogTabNPlugin, EntityCatalogCardN } from '../src/plugin';

createDevApp()
  .registerPlugin(catalogTabNPlugin)
  .addPage({
    element: <EntityCatalogCardN />,
    title: 'Root Page',
    path: '/catalog-tab-n',
  })
  .render();
