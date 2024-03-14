package com.android.quickstep;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseIntArray;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.util.SimpleBroadcastReceiver;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.PackageManagerWrapper;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Objects;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class OverviewComponentObserver {
    private static final String TAG = "OverviewComponentObserver";
    private BaseActivityInterface mActivityInterface;
    private final SparseIntArray mConfigChangesMap;
    private final Context mContext;
    private final Intent mCurrentHomeIntent;
    private final RecentsAnimationDeviceState mDeviceState;
    private final Intent mFallbackIntent;
    private boolean mIsDefaultHome;
    private boolean mIsHomeAndOverviewSame;
    private boolean mIsHomeDisabled;
    private final Intent mMyHomeIntent;
    private Consumer mOverviewChangeListener;
    private Intent mOverviewIntent;
    private final String mSetupWizardPkg;
    private String mUpdateRegisteredPackage;
    private final SimpleBroadcastReceiver mUserPreferenceChangeReceiver = new SimpleBroadcastReceiver(new Consumer(this) { // from class: com.android.quickstep.Z

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ OverviewComponentObserver f5566b;

        {
            this.f5566b = this;
        }

        @Override // java.util.function.Consumer
        public final void accept(Object obj) {
            switch (r2) {
                case 0:
                default:
                    this.f5566b.updateOverviewTargets((Intent) obj);
                    return;
            }
        }
    });
    private final SimpleBroadcastReceiver mOtherHomeAppUpdateReceiver = new SimpleBroadcastReceiver(new Consumer(this) { // from class: com.android.quickstep.Z

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ OverviewComponentObserver f5566b;

        {
            this.f5566b = this;
        }

        @Override // java.util.function.Consumer
        public final void accept(Object obj) {
            switch (r2) {
                case 0:
                default:
                    this.f5566b.updateOverviewTargets((Intent) obj);
                    return;
            }
        }
    });

    public OverviewComponentObserver(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState) {
        SparseIntArray sparseIntArray = new SparseIntArray();
        this.mConfigChangesMap = sparseIntArray;
        this.mOverviewChangeListener = new C0494a0();
        this.mContext = context;
        this.mDeviceState = recentsAnimationDeviceState;
        Intent createHomeIntent = createHomeIntent();
        this.mCurrentHomeIntent = createHomeIntent;
        Intent intent = new Intent(createHomeIntent).setPackage(context.getPackageName());
        this.mMyHomeIntent = intent;
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 0);
        ComponentName componentName = new ComponentName(context.getPackageName(), resolveActivity.activityInfo.name);
        intent.setComponent(componentName);
        sparseIntArray.append(componentName.hashCode(), resolveActivity.activityInfo.configChanges);
        this.mSetupWizardPkg = context.getString(R.string.setup_wizard_pkg);
        ComponentName componentName2 = new ComponentName(context, RecentsActivity.class);
        Intent flags = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.DEFAULT").setComponent(componentName2).setFlags(268435456);
        this.mFallbackIntent = flags;
        try {
            sparseIntArray.append(componentName2.hashCode(), context.getPackageManager().getActivityInfo(flags.getComponent(), 0).configChanges);
        } catch (PackageManager.NameNotFoundException unused) {
        }
        this.mUserPreferenceChangeReceiver.register(this.mContext, PackageManagerWrapper.ACTION_PREFERRED_ACTIVITY_CHANGED);
        updateOverviewTargets();
    }

    private static Intent createHomeIntent() {
        return new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME").setFlags(268435456);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0(Boolean bool) {
    }

    public static void startHomeIntentSafely(Context context, Bundle bundle) {
        RecentsAnimationDeviceState recentsAnimationDeviceState = new RecentsAnimationDeviceState(context);
        OverviewComponentObserver overviewComponentObserver = new OverviewComponentObserver(context, recentsAnimationDeviceState);
        Intent homeIntent = overviewComponentObserver.getHomeIntent();
        overviewComponentObserver.onDestroy();
        recentsAnimationDeviceState.destroy();
        startHomeIntentSafely(context, homeIntent, bundle);
    }

    private void unregisterOtherHomeAppUpdateReceiver() {
        if (this.mUpdateRegisteredPackage != null) {
            this.mContext.unregisterReceiver(this.mOtherHomeAppUpdateReceiver);
            this.mUpdateRegisteredPackage = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateOverviewTargets(Intent intent) {
        updateOverviewTargets();
    }

    public boolean canHandleConfigChanges(ComponentName componentName, int i4) {
        if ((i4 & 1152) == 1152) {
            return true;
        }
        int i5 = this.mConfigChangesMap.get(componentName.hashCode());
        return i5 != 0 && ((~i5) & i4) == 0;
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("OverviewComponentObserver:");
        printWriter.println("  isDefaultHome=" + this.mIsDefaultHome);
        printWriter.println("  isHomeDisabled=" + this.mIsHomeDisabled);
        printWriter.println("  homeAndOverviewSame=" + this.mIsHomeAndOverviewSame);
        printWriter.println("  overviewIntent=" + this.mOverviewIntent);
        printWriter.println("  homeIntent=" + this.mCurrentHomeIntent);
    }

    public BaseActivityInterface getActivityInterface() {
        return this.mActivityInterface;
    }

    public Intent getHomeIntent() {
        return this.mCurrentHomeIntent;
    }

    public Intent getOverviewIntent() {
        return this.mOverviewIntent;
    }

    public Intent getOverviewIntentIgnoreSysUiState() {
        return this.mIsDefaultHome ? this.mMyHomeIntent : this.mOverviewIntent;
    }

    public boolean isHomeAndOverviewSame() {
        return this.mIsHomeAndOverviewSame;
    }

    public void onDestroy() {
        this.mContext.unregisterReceiver(this.mUserPreferenceChangeReceiver);
        unregisterOtherHomeAppUpdateReceiver();
    }

    public void onSystemUiStateChanged() {
        if (this.mDeviceState.isHomeDisabled() != this.mIsHomeDisabled) {
            updateOverviewTargets();
        }
    }

    public void setOverviewChangeListener(Consumer consumer) {
        this.mOverviewChangeListener = consumer;
    }

    private void updateOverviewTargets() {
        ComponentName homeActivities = PackageManagerWrapper.getInstance().getHomeActivities(new ArrayList());
        if (homeActivities != null && homeActivities.getPackageName().equals(this.mSetupWizardPkg)) {
            homeActivities = null;
        }
        this.mIsHomeDisabled = this.mDeviceState.isHomeDisabled();
        this.mIsDefaultHome = Objects.equals(this.mMyHomeIntent.getComponent(), homeActivities);
        BaseActivityInterface baseActivityInterface = this.mActivityInterface;
        if (baseActivityInterface != null) {
            baseActivityInterface.onAssistantVisibilityChanged(0.0f);
        }
        if (FeatureFlags.SEPARATE_RECENTS_ACTIVITY.get()) {
            this.mIsDefaultHome = false;
            if (homeActivities == null) {
                homeActivities = this.mMyHomeIntent.getComponent();
            }
        }
        StringBuilder sb = new StringBuilder("updateOverviewTargets: mIsHomeDisabled=");
        sb.append(this.mIsHomeDisabled);
        sb.append(", isDefaultHomeNull=");
        sb.append(homeActivities == null);
        sb.append(", mIsDefaultHome=");
        sb.append(this.mIsDefaultHome);
        Log.i(TAG, sb.toString());
        if (!this.mIsHomeDisabled && (homeActivities == null || this.mIsDefaultHome)) {
            this.mActivityInterface = LauncherActivityInterface.INSTANCE;
            this.mIsHomeAndOverviewSame = true;
            Intent intent = this.mMyHomeIntent;
            this.mOverviewIntent = intent;
            this.mCurrentHomeIntent.setComponent(intent.getComponent());
            unregisterOtherHomeAppUpdateReceiver();
        } else {
            this.mActivityInterface = FallbackActivityInterface.INSTANCE;
            this.mIsHomeAndOverviewSame = false;
            this.mOverviewIntent = this.mFallbackIntent;
            this.mCurrentHomeIntent.setComponent(homeActivities);
            if (homeActivities == null) {
                unregisterOtherHomeAppUpdateReceiver();
            } else if (!homeActivities.getPackageName().equals(this.mUpdateRegisteredPackage)) {
                unregisterOtherHomeAppUpdateReceiver();
                String packageName = homeActivities.getPackageName();
                this.mUpdateRegisteredPackage = packageName;
                this.mOtherHomeAppUpdateReceiver.registerPkgActions(this.mContext, packageName, "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED", "android.intent.action.PACKAGE_REMOVED");
            }
        }
        this.mOverviewChangeListener.accept(Boolean.valueOf(this.mIsHomeAndOverviewSame));
    }

    public static void startHomeIntentSafely(Context context, Intent intent, Bundle bundle) {
        try {
            context.startActivity(intent, bundle);
        } catch (ActivityNotFoundException | NullPointerException | SecurityException unused) {
            context.startActivity(createHomeIntent(), bundle);
        }
    }
}
