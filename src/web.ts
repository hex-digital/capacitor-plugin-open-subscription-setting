import { WebPlugin } from '@capacitor/core';

import type { openSubscriptionSettingsPlugin } from './definitions';

export class openSubscriptionSettingsWeb
  extends WebPlugin
  implements openSubscriptionSettingsPlugin {
  async triggerOpenSettings(): Promise<void> {
    console.log('OPEN SETTINGS TRIGGERRED');
  }
  async triggerOpenSubscriptions(): Promise<void> {
    console.log('OPEN SUBSCRIPTIONS TRIGGERED');
  }
}
