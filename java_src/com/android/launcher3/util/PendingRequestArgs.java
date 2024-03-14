package com.android.launcher3.util;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.UserHandle;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.widget.PendingAddWidgetInfo;
import com.android.launcher3.widget.WidgetAddFlowHandler;
/* loaded from: classes.dex */
public final class PendingRequestArgs extends ItemInfo implements Parcelable {
    public static final Parcelable.Creator CREATOR = new AnonymousClass1();
    private final int mArg1;
    private final int mArg2;
    private final Parcelable mObject;
    private final int mObjectType;

    /* renamed from: com.android.launcher3.util.PendingRequestArgs$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            return new PendingRequestArgs(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i4) {
            return new PendingRequestArgs[i4];
        }
    }

    private PendingRequestArgs(int i4, int i5, int i6, Parcelable parcelable) {
        this.mArg1 = i4;
        this.mArg2 = i5;
        this.mObjectType = i6;
        this.mObject = parcelable;
    }

    public static PendingRequestArgs forIntent(Intent intent, ItemInfo itemInfo) {
        PendingRequestArgs pendingRequestArgs = new PendingRequestArgs(1, 0, 1, intent);
        pendingRequestArgs.copyFrom(itemInfo);
        return pendingRequestArgs;
    }

    public static PendingRequestArgs forWidgetInfo(int i4, WidgetAddFlowHandler widgetAddFlowHandler, ItemInfo itemInfo) {
        PendingRequestArgs pendingRequestArgs = new PendingRequestArgs(i4, itemInfo instanceof PendingAddWidgetInfo ? ((PendingAddWidgetInfo) itemInfo).sourceContainer : -1, 2, widgetAddFlowHandler);
        pendingRequestArgs.copyFrom(itemInfo);
        return pendingRequestArgs;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final int getRequestCode() {
        if (this.mObjectType == 1) {
            return this.mArg1;
        }
        return 0;
    }

    public final WidgetAddFlowHandler getWidgetHandler() {
        if (this.mObjectType == 2) {
            return (WidgetAddFlowHandler) this.mObject;
        }
        return null;
    }

    public final int getWidgetId() {
        if (this.mObjectType == 2) {
            return this.mArg1;
        }
        return 0;
    }

    public final int getWidgetSourceContainer() {
        if (this.mObjectType == 2) {
            return this.mArg2;
        }
        return -1;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        ContentValues contentValues = new ContentValues();
        writeToValues(new ContentWriter(contentValues, (Context) null));
        contentValues.writeToParcel(parcel, i4);
        parcel.writeParcelable(this.user, i4);
        parcel.writeInt(this.mArg1);
        parcel.writeInt(this.mArg2);
        parcel.writeInt(this.mObjectType);
        parcel.writeParcelable(this.mObject, i4);
    }

    public PendingRequestArgs(Parcel parcel) {
        readFromValues((ContentValues) ContentValues.CREATOR.createFromParcel(parcel));
        this.user = (UserHandle) parcel.readParcelable(null);
        this.mArg1 = parcel.readInt();
        this.mArg2 = parcel.readInt();
        this.mObjectType = parcel.readInt();
        this.mObject = parcel.readParcelable(PendingRequestArgs.class.getClassLoader());
    }
}
