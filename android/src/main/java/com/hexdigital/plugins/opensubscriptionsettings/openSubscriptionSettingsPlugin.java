package com.hexdigital.plugins.opensubscriptionsettings;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "openSubscriptionSettings")
public class openSubscriptionSettingsPlugin extends Plugin {

    @PluginMethod
    public void triggerOpenSubscriptions(PluginCall call) {
        try {
            Activity activity = new Activity();

            Intent intent = new Intent();

            Uri subUri = Uri.parse("https://play.google.com/store/account");

            intent.setAction(Intent.ACTION_VIEW);
            intent.setData(subUri);
            activity.startActivity(intent);
            activity.finish();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @PluginMethod
    public void triggerOpenSettings(PluginCall call) {
        try {
            Context context = getActivity().getApplicationContext();
            Intent intent = new Intent(android.provider.Settings.ACTION_SETTINGS);

            context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
