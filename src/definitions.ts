export interface openSubscriptionSettingsPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
