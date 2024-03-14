package com.android.launcher3.logging;

import android.os.Parcel;
import android.os.Parcelable;
import v.C1429e;
/* loaded from: classes.dex */
public final class InstanceId implements Parcelable {
    public static final Parcelable.Creator CREATOR = new AnonymousClass1();
    private final int mId;

    /* renamed from: com.android.launcher3.logging.InstanceId$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            return new InstanceId(parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i4) {
            return new InstanceId[i4];
        }
    }

    public InstanceId(int i4) {
        this.mId = Math.min(Math.max(0, i4), 1048576);
    }

    public static InstanceId fakeInstanceId(int i4) {
        return new InstanceId(i4);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof InstanceId) && this.mId == ((InstanceId) obj).mId;
    }

    public final int getId() {
        return this.mId;
    }

    public final int hashCode() {
        return this.mId;
    }

    public final String toString() {
        return C1429e.a(new StringBuilder(), this.mId, "");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.mId);
    }
}
