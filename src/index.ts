import { registerPlugin } from '@capacitor/core';

import type { openSubscriptionSettingsPlugin } from './definitions';

const openSubscriptionSettings = registerPlugin<openSubscriptionSettingsPlugin>(
  'openSubscriptionSettings',
  {
    web: () => import('./web').then(m => new m.openSubscriptionSettingsWeb()),
  },
);

export * from './definitions';
export { openSubscriptionSettings };
