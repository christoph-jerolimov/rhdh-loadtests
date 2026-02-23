import { createDevApp } from '@backstage/dev-utils';
import { pageNPlugin, PageNPage } from '../src/plugin';

createDevApp()
  .registerPlugin(pageNPlugin)
  .addPage({
    element: <PageNPage />,
    title: 'Root Page',
    path: '/page-n',
  })
  .render();
