package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.android.material.datepicker.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0726a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new C0729d((z) parcel.readParcelable(z.class.getClassLoader()), (z) parcel.readParcelable(z.class.getClassLoader()), (InterfaceC0728c) parcel.readParcelable(InterfaceC0728c.class.getClassLoader()), (z) parcel.readParcelable(z.class.getClassLoader()), parcel.readInt());
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i4) {
        return new C0729d[i4];
    }
}
