package com.android.launcher3.dragndrop;

import android.content.pm.LauncherApps;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.launcher3.Launcher;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.widget.LauncherAppWidgetProviderInfo;
import com.android.launcher3.widget.WidgetAddFlowHandler;
/* loaded from: classes.dex */
public final class PinWidgetFlowHandler extends WidgetAddFlowHandler {
    public static final Parcelable.Creator CREATOR = new AnonymousClass1();
    private final LauncherApps.PinItemRequest mRequest;

    /* renamed from: com.android.launcher3.dragndrop.PinWidgetFlowHandler$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            return new PinWidgetFlowHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i4) {
            return new PinWidgetFlowHandler[i4];
        }
    }

    public PinWidgetFlowHandler(LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo, LauncherApps.PinItemRequest pinItemRequest) {
        super(launcherAppWidgetProviderInfo);
        this.mRequest = pinItemRequest;
    }

    @Override // com.android.launcher3.widget.WidgetAddFlowHandler
    public final boolean needsConfigure() {
        return false;
    }

    @Override // com.android.launcher3.widget.WidgetAddFlowHandler
    public final boolean startConfigActivity(Launcher launcher, int i4, ItemInfo itemInfo, int i5) {
        Bundle bundle = new Bundle();
        bundle.putInt("appWidgetId", i4);
        this.mRequest.accept(bundle);
        return false;
    }

    @Override // com.android.launcher3.widget.WidgetAddFlowHandler, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        super.writeToParcel(parcel, i4);
        this.mRequest.writeToParcel(parcel, i4);
    }

    public PinWidgetFlowHandler(Parcel parcel) {
        super(parcel);
        this.mRequest = (LauncherApps.PinItemRequest) LauncherApps.PinItemRequest.CREATOR.createFromParcel(parcel);
    }
}
