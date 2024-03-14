package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* renamed from: com.google.android.material.datepicker.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0734i implements InterfaceC0728c {
    public static final Parcelable.Creator CREATOR = new C0733h();

    /* renamed from: d  reason: collision with root package name */
    public final long f7941d;

    public C0734i(long j4) {
        this.f7941d = j4;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C0734i) && this.f7941d == ((C0734i) obj).f7941d;
    }

    @Override // com.google.android.material.datepicker.InterfaceC0728c
    public final boolean g(long j4) {
        return j4 >= this.f7941d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f7941d)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeLong(this.f7941d);
    }
}
