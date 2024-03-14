package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.android.material.datepicker.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0733h implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new C0734i(parcel.readLong());
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i4) {
        return new C0734i[i4];
    }
}
