package com.android.launcher3.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class SimpleBroadcastReceiver extends BroadcastReceiver {
    private final Consumer mIntentConsumer;

    public SimpleBroadcastReceiver(Consumer consumer) {
        this.mIntentConsumer = consumer;
    }

    public static IntentFilter getPackageFilter(String str, String... strArr) {
        IntentFilter intentFilter = new IntentFilter();
        for (String str2 : strArr) {
            intentFilter.addAction(str2);
        }
        intentFilter.addDataScheme("package");
        if (!TextUtils.isEmpty(str)) {
            intentFilter.addDataSchemeSpecificPart(str, 0);
        }
        return intentFilter;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.mIntentConsumer.accept(intent);
    }

    public final void register(Context context, String... strArr) {
        IntentFilter intentFilter = new IntentFilter();
        for (String str : strArr) {
            intentFilter.addAction(str);
        }
        context.registerReceiver(this, intentFilter);
    }

    public final void registerPkgActions(Context context, String str, String... strArr) {
        context.registerReceiver(this, getPackageFilter(str, strArr));
    }
}
