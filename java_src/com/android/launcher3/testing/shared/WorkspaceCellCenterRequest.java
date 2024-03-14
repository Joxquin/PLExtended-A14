package com.android.launcher3.testing.shared;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class WorkspaceCellCenterRequest implements Parcelable {
    public static final Parcelable.Creator CREATOR = new AnonymousClass1();
    public final int cellX;
    public final int cellY;
    public final int spanX;
    public final int spanY;

    /* renamed from: com.android.launcher3.testing.shared.WorkspaceCellCenterRequest$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            return new WorkspaceCellCenterRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i4) {
            return new WorkspaceCellCenterRequest[i4];
        }
    }

    public WorkspaceCellCenterRequest(Parcel parcel) {
        int readInt = parcel.readInt();
        int readInt2 = parcel.readInt();
        int readInt3 = parcel.readInt();
        int readInt4 = parcel.readInt();
        this.cellX = readInt;
        this.cellY = readInt2;
        this.spanX = readInt3;
        this.spanY = readInt4;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.cellX);
        parcel.writeInt(this.cellY);
        parcel.writeInt(this.spanX);
        parcel.writeInt(this.spanY);
    }
}
