package com.android.launcher3.widget;

import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.launcher3.Launcher;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.PendingRequestArgs;
/* loaded from: classes.dex */
public class WidgetAddFlowHandler implements Parcelable {
    public static final Parcelable.Creator CREATOR = new AnonymousClass1();
    private final AppWidgetProviderInfo mProviderInfo;

    /* renamed from: com.android.launcher3.widget.WidgetAddFlowHandler$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            return new WidgetAddFlowHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i4) {
            return new WidgetAddFlowHandler[i4];
        }
    }

    public WidgetAddFlowHandler(LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo) {
        this.mProviderInfo = launcherAppWidgetProviderInfo;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final LauncherAppWidgetProviderInfo getProviderInfo(Context context) {
        return LauncherAppWidgetProviderInfo.fromProviderInfo(context, this.mProviderInfo);
    }

    public boolean needsConfigure() {
        AppWidgetProviderInfo appWidgetProviderInfo = this.mProviderInfo;
        int i4 = appWidgetProviderInfo.widgetFeatures;
        return (appWidgetProviderInfo.configure == null || ((i4 & 4) != 0 && (i4 & 1) != 0)) ? false : true;
    }

    public final void startBindFlow(Launcher launcher, int i4, ItemInfo itemInfo, int i5) {
        launcher.setWaitingForResult(PendingRequestArgs.forWidgetInfo(i4, this, itemInfo));
        LauncherWidgetHolder appWidgetHolder = launcher.getAppWidgetHolder();
        AppWidgetProviderInfo appWidgetProviderInfo = this.mProviderInfo;
        appWidgetHolder.getClass();
        LauncherWidgetHolder.startBindFlow(launcher, i4, appWidgetProviderInfo, i5);
    }

    public boolean startConfigActivity(Launcher launcher, int i4, ItemInfo itemInfo, int i5) {
        if (needsConfigure()) {
            launcher.setWaitingForResult(PendingRequestArgs.forWidgetInfo(i4, this, itemInfo));
            launcher.getAppWidgetHolder().startConfigActivity(launcher, i4, i5);
            return true;
        }
        return false;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        this.mProviderInfo.writeToParcel(parcel, i4);
    }

    public WidgetAddFlowHandler(Parcel parcel) {
        this.mProviderInfo = (AppWidgetProviderInfo) AppWidgetProviderInfo.CREATOR.createFromParcel(parcel);
    }
}
