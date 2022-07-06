import { WebPlugin } from '@capacitor/core';

import type { openSubscriptionSettingsPlugin } from './definitions';

export class openSubscriptionSettingsWeb
  extends WebPlugin
  implements openSubscriptionSettingsPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
