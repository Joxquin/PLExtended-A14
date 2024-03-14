package com.android.launcher3.model;

import android.app.RemoteAction;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.view.View;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.RemoteActionShortcut;
import com.android.launcher3.util.BgObjectWithLooper;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.SimpleBroadcastReceiver;
import com.android.systemui.shared.R;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class WellbeingModel extends BgObjectWithLooper {
    private ContentObserver mContentObserver;
    private final Context mContext;
    private final String mWellbeingProviderPkg;
    private Handler mWorkerHandler;
    private static final int[] RETRY_TIMES_MS = {5000, 15000, 30000};
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new j1());
    public static final k1 SHORTCUT_FACTORY = new k1();
    private final Object mModelLock = new Object();
    private final Map mActionIdMap = new ArrayMap();
    private final Map mPackageToActionId = new HashMap();

    private WellbeingModel(Context context) {
        this.mContext = context;
        this.mWellbeingProviderPkg = context.getString(R.string.wellbeing_provider_pkg);
        new Thread(new Runnable() { // from class: com.android.launcher3.util.a
            @Override // java.lang.Runnable
            public final void run() {
                BgObjectWithLooper bgObjectWithLooper = BgObjectWithLooper.this;
                bgObjectWithLooper.getClass();
                Looper.prepare();
                bgObjectWithLooper.onInitialized(Looper.myLooper());
                Looper.loop();
            }
        }, "WellbeingHandler").start();
    }

    public static void a(WellbeingModel wellbeingModel, Intent intent) {
        wellbeingModel.getClass();
        String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
        if (schemeSpecificPart == null || schemeSpecificPart.length() == 0) {
            return;
        }
        String action = intent.getAction();
        if (!"android.intent.action.PACKAGE_REMOVED".equals(action)) {
            if ("android.intent.action.PACKAGE_ADDED".equals(action)) {
                wellbeingModel.updateActionsWithRetry(0, schemeSpecificPart);
                return;
            }
            return;
        }
        wellbeingModel.mWorkerHandler.removeCallbacksAndMessages(schemeSpecificPart);
        synchronized (wellbeingModel.mModelLock) {
            ((HashMap) wellbeingModel.mPackageToActionId).remove(schemeSpecificPart);
        }
    }

    private Uri.Builder apiBuilder() {
        Uri.Builder scheme = new Uri.Builder().scheme("content");
        return scheme.authority(this.mWellbeingProviderPkg + ".api");
    }

    public static /* synthetic */ WellbeingModel b(Context context) {
        return new WellbeingModel(context);
    }

    public static void c(WellbeingModel wellbeingModel) {
        wellbeingModel.updateActionsWithRetry(0, null);
    }

    public static RemoteActionShortcut d(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo, View view) {
        RemoteActionShortcut remoteActionShortcut = null;
        if (itemInfo.getTargetComponent() != null) {
            WellbeingModel wellbeingModel = (WellbeingModel) INSTANCE.get(baseDraggingActivity);
            String packageName = itemInfo.getTargetComponent().getPackageName();
            int identifier = itemInfo.user.getIdentifier();
            wellbeingModel.getClass();
            if (identifier == UserHandle.myUserId()) {
                synchronized (wellbeingModel.mModelLock) {
                    String str = (String) ((HashMap) wellbeingModel.mPackageToActionId).get(packageName);
                    RemoteAction remoteAction = str != null ? (RemoteAction) ((ArrayMap) wellbeingModel.mActionIdMap).get(str) : null;
                    if (remoteAction != null) {
                        remoteActionShortcut = new RemoteActionShortcut(remoteAction, baseDraggingActivity, itemInfo, view);
                    }
                }
            }
        }
        return remoteActionShortcut;
    }

    public void restartObserver() {
        ContentResolver contentResolver = this.mContext.getContentResolver();
        contentResolver.unregisterContentObserver(this.mContentObserver);
        Uri build = apiBuilder().path("actions").build();
        try {
            contentResolver.registerContentObserver(build, true, this.mContentObserver);
        } catch (Exception e4) {
            Log.e("WellbeingModel", "Failed to register content observer for " + build + ": " + e4);
        }
        updateActionsWithRetry(0, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x0060, code lost:
        if (r9 != null) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateActionsWithRetry(final int r17, final java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.model.WellbeingModel.updateActionsWithRetry(int, java.lang.String):void");
    }

    @Override // com.android.launcher3.util.BgObjectWithLooper
    public final void onInitialized(Looper looper) {
        Handler handler = new Handler(looper);
        this.mWorkerHandler = handler;
        this.mContentObserver = BgObjectWithLooper.newContentObserver(handler, new l1(0, this));
        String str = this.mWellbeingProviderPkg;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        SimpleBroadcastReceiver simpleBroadcastReceiver = new SimpleBroadcastReceiver(new l1(1, this));
        IntentFilter packageFilter = SimpleBroadcastReceiver.getPackageFilter(str, "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED", "android.intent.action.PACKAGE_REMOVED", "android.intent.action.PACKAGE_DATA_CLEARED", "android.intent.action.PACKAGE_RESTARTED");
        Handler handler2 = this.mWorkerHandler;
        Context context = this.mContext;
        context.registerReceiver(simpleBroadcastReceiver, packageFilter, null, handler2);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addDataScheme("package");
        context.registerReceiver(new SimpleBroadcastReceiver(new l1(2, this)), intentFilter, null, this.mWorkerHandler);
        restartObserver();
    }
}
