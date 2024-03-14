package com.google.android.material.timepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class n implements Parcelable {
    public static final Parcelable.Creator CREATOR = new m();

    /* renamed from: d  reason: collision with root package name */
    public final j f8220d;

    /* renamed from: e  reason: collision with root package name */
    public final j f8221e;

    /* renamed from: f  reason: collision with root package name */
    public final int f8222f;

    /* renamed from: g  reason: collision with root package name */
    public int f8223g;

    /* renamed from: h  reason: collision with root package name */
    public int f8224h;

    /* renamed from: i  reason: collision with root package name */
    public int f8225i;

    /* renamed from: j  reason: collision with root package name */
    public int f8226j;

    public n() {
        this(0, 0, 10, 0);
    }

    public final int b() {
        if (this.f8222f == 1) {
            return this.f8223g % 24;
        }
        int i4 = this.f8223g;
        if (i4 % 12 == 0) {
            return 12;
        }
        return this.f8226j == 1 ? i4 - 12 : i4;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof n) {
            n nVar = (n) obj;
            return this.f8223g == nVar.f8223g && this.f8224h == nVar.f8224h && this.f8222f == nVar.f8222f && this.f8225i == nVar.f8225i;
        }
        return false;
    }

    public final void f(int i4) {
        if (this.f8222f == 1) {
            this.f8223g = i4;
        } else {
            this.f8223g = (i4 % 12) + (this.f8226j != 1 ? 0 : 12);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f8222f), Integer.valueOf(this.f8223g), Integer.valueOf(this.f8224h), Integer.valueOf(this.f8225i)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.f8223g);
        parcel.writeInt(this.f8224h);
        parcel.writeInt(this.f8225i);
        parcel.writeInt(this.f8222f);
    }

    public n(int i4, int i5, int i6, int i7) {
        this.f8223g = i4;
        this.f8224h = i5;
        this.f8225i = i6;
        this.f8222f = i7;
        this.f8226j = i4 >= 12 ? 1 : 0;
        this.f8220d = new j(59);
        this.f8221e = new j(i7 == 1 ? 24 : 12);
    }
}
