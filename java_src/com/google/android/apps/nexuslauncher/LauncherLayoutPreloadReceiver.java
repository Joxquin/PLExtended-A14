package com.google.android.apps.nexuslauncher;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.util.PackageManagerHelper;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class LauncherLayoutPreloadReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f6469a = 0;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Log.d("SUWFinishReceiver", "Received preload request");
        if (!isOrderedBroadcast() || !PackageManagerHelper.hasShortcutsPermission(context)) {
            Log.d("SUWFinishReceiver", "Skipping preload");
            return;
        }
        Log.d("SUWFinishReceiver", "Trying to preload launcher");
        final BroadcastReceiver.PendingResult goAsync = goAsync();
        LauncherAppState.getInstance(context).getModel().loadAsync(new Consumer() { // from class: com.google.android.apps.nexuslauncher.b
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BroadcastReceiver.PendingResult pendingResult = goAsync;
                BgDataModel bgDataModel = (BgDataModel) obj;
                int i4 = LauncherLayoutPreloadReceiver.f6469a;
                pendingResult.setResultCode(bgDataModel != null ? -1 : 0);
                pendingResult.finish();
            }
        });
    }
}
