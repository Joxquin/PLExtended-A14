package com.android.launcher3.testing.shared;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class HotseatCellCenterRequest implements Parcelable {
    public static final Parcelable.Creator CREATOR = new AnonymousClass1();
    public final int cellInd;

    /* renamed from: com.android.launcher3.testing.shared.HotseatCellCenterRequest$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            return new HotseatCellCenterRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i4) {
            return new HotseatCellCenterRequest[i4];
        }
    }

    public HotseatCellCenterRequest(Parcel parcel) {
        this.cellInd = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.cellInd);
    }
}
