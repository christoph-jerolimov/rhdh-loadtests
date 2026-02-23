import {
  createPlugin,
  createRoutableExtension,
} from '@backstage/core-plugin-api';

import { rootRouteRef } from './routes';

export const pageNPlugin = createPlugin({
  id: 'page-n',
  routes: {
    root: rootRouteRef,
  },
});

export const PageNPage = pageNPlugin.provide(
  createRoutableExtension({
    name: 'PageNPage',
    component: () =>
      import('./components/ExampleComponent').then(m => m.ExampleComponent),
    mountPoint: rootRouteRef,
  }),
);
