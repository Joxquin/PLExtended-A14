package com.android.launcher3.util;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class ActivityResultInfo implements Parcelable {
    public static final Parcelable.Creator CREATOR = new AnonymousClass1();
    public final Intent data;
    public final int requestCode;
    public final int resultCode;

    /* renamed from: com.android.launcher3.util.ActivityResultInfo$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            return new ActivityResultInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i4) {
            return new ActivityResultInfo[i4];
        }
    }

    public ActivityResultInfo(int i4, int i5, Intent intent) {
        this.requestCode = i4;
        this.resultCode = i5;
        this.data = intent;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.requestCode);
        parcel.writeInt(this.resultCode);
        if (this.data == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        this.data.writeToParcel(parcel, i4);
    }

    public ActivityResultInfo(Parcel parcel) {
        this.requestCode = parcel.readInt();
        this.resultCode = parcel.readInt();
        this.data = parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null;
    }
}
