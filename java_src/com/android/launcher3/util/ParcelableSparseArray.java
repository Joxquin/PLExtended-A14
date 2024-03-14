package com.android.launcher3.util;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
/* loaded from: classes.dex */
public final class ParcelableSparseArray extends SparseArray implements Parcelable {
    public static final Parcelable.Creator CREATOR = new AnonymousClass1();

    /* renamed from: com.android.launcher3.util.ParcelableSparseArray$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
            ClassLoader classLoader = ParcelableSparseArray.class.getClassLoader();
            int readInt = parcel.readInt();
            for (int i4 = 0; i4 < readInt; i4++) {
                parcelableSparseArray.put(parcel.readInt(), parcel.readParcelable(classLoader));
            }
            return parcelableSparseArray;
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i4) {
            return new ParcelableSparseArray[i4];
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        int size = size();
        parcel.writeInt(size);
        for (int i5 = 0; i5 < size; i5++) {
            parcel.writeInt(keyAt(i5));
            parcel.writeParcelable((Parcelable) valueAt(i5), 0);
        }
    }
}
