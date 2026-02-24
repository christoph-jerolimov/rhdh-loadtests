import {
  createFrontendPlugin,
  NavItemBlueprint,
  PageBlueprint,
} from '@backstage/frontend-plugin-api';
import ExtensionIcon from '@material-ui/icons/Extension';

import { rootRouteRef } from './routes';

export const page = PageBlueprint.make({
  params: {
    path: '/page-n',
    routeRef: rootRouteRef,
    loader: () =>
      import('./components/ExampleComponent').then(m =>
        <m.ExampleComponent />,
      ),
  },
});

const navItem = NavItemBlueprint.make({
  params: {
    title: 'Page N',
    icon: ExtensionIcon,
    routeRef: rootRouteRef,
  },
});

export const pagePlugin = createFrontendPlugin({
  pluginId: 'page-n',
  extensions: [page, navItem],
  routes: {
    root: rootRouteRef,
  }
});
