package com.android.launcher3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.util.IntArray;
import kotlin.Pair;
/* loaded from: classes.dex */
public class AppWidgetsRestoredReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f4411a = 0;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.appwidget.action.APPWIDGET_HOST_RESTORED".equals(intent.getAction())) {
            int intExtra = intent.getIntExtra("hostId", 0);
            Log.d("AWRestoredReceiver", "Widget ID map received for host:" + intExtra);
            if (intExtra != 1024) {
                return;
            }
            int[] intArrayExtra = intent.getIntArrayExtra("appWidgetOldIds");
            int[] intArrayExtra2 = intent.getIntArrayExtra("appWidgetIds");
            if (intArrayExtra == null || intArrayExtra2 == null || intArrayExtra.length != intArrayExtra2.length) {
                Log.e("AWRestoredReceiver", "Invalid host restored received");
                return;
            }
            LauncherPrefs.Companion companion = LauncherPrefs.Companion;
            LauncherPrefs launcherPrefs = LauncherPrefs.Companion.get(context);
            ConstantItem constantItem = LauncherPrefs.OLD_APP_WIDGET_IDS;
            String concatString = IntArray.wrap(intArrayExtra).toConcatString();
            constantItem.getClass();
            Pair pair = new Pair(constantItem, concatString);
            ConstantItem constantItem2 = LauncherPrefs.APP_WIDGET_IDS;
            String concatString2 = IntArray.wrap(intArrayExtra2).toConcatString();
            constantItem2.getClass();
            launcherPrefs.putSync(pair, new Pair(constantItem2, concatString2));
        }
    }
}
