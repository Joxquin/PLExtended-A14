package com.android.launcher3.widget.custom;

import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.widget.LauncherAppWidgetProviderInfo;
import j.C1080K;
/* loaded from: classes.dex */
public final class CustomAppWidgetProviderInfo extends LauncherAppWidgetProviderInfo implements Parcelable {
    public static final Parcelable.Creator CREATOR = new AnonymousClass1();
    public final int providerId;

    /* renamed from: com.android.launcher3.widget.custom.CustomAppWidgetProviderInfo$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            return new CustomAppWidgetProviderInfo(parcel, true, 0);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i4) {
            return new CustomAppWidgetProviderInfo[i4];
        }
    }

    public CustomAppWidgetProviderInfo(Parcel parcel, boolean z4, int i4) {
        super(parcel);
        if (!z4) {
            this.providerId = i4;
            return;
        }
        this.providerId = parcel.readInt();
        ((AppWidgetProviderInfo) this).provider = new ComponentName(parcel.readString(), C1080K.a("#custom-widget-", i4));
        ((AppWidgetProviderInfo) this).label = parcel.readString();
        ((AppWidgetProviderInfo) this).initialLayout = parcel.readInt();
        ((AppWidgetProviderInfo) this).icon = parcel.readInt();
        ((AppWidgetProviderInfo) this).previewImage = parcel.readInt();
        ((AppWidgetProviderInfo) this).resizeMode = parcel.readInt();
        this.spanX = parcel.readInt();
        this.spanY = parcel.readInt();
        this.minSpanX = parcel.readInt();
        this.minSpanY = parcel.readInt();
    }

    @Override // com.android.launcher3.widget.LauncherAppWidgetProviderInfo
    public final void initSpans(InvariantDeviceProfile invariantDeviceProfile) {
    }

    @Override // android.appwidget.AppWidgetProviderInfo
    public final String toString() {
        return "WidgetProviderInfo(" + ((AppWidgetProviderInfo) this).provider + ")";
    }

    @Override // android.appwidget.AppWidgetProviderInfo, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        super.writeToParcel(parcel, i4);
        parcel.writeInt(this.providerId);
        parcel.writeString(((AppWidgetProviderInfo) this).provider.getPackageName());
        parcel.writeString(((AppWidgetProviderInfo) this).label);
        parcel.writeInt(((AppWidgetProviderInfo) this).initialLayout);
        parcel.writeInt(((AppWidgetProviderInfo) this).icon);
        parcel.writeInt(((AppWidgetProviderInfo) this).previewImage);
        parcel.writeInt(((AppWidgetProviderInfo) this).resizeMode);
        parcel.writeInt(this.spanX);
        parcel.writeInt(this.spanY);
        parcel.writeInt(this.minSpanX);
        parcel.writeInt(this.minSpanY);
    }

    @Override // com.android.launcher3.widget.LauncherAppWidgetProviderInfo, com.android.launcher3.icons.ComponentWithLabel
    public final String getLabel(PackageManager packageManager) {
        return Utilities.trim(((AppWidgetProviderInfo) this).label);
    }
}
