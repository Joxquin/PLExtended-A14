package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.GregorianCalendar;
import java.util.Objects;
/* renamed from: com.google.android.material.datepicker.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0729d implements Parcelable {
    public static final Parcelable.Creator CREATOR = new C0726a();

    /* renamed from: d  reason: collision with root package name */
    public final z f7920d;

    /* renamed from: e  reason: collision with root package name */
    public final z f7921e;

    /* renamed from: f  reason: collision with root package name */
    public final InterfaceC0728c f7922f;

    /* renamed from: g  reason: collision with root package name */
    public final z f7923g;

    /* renamed from: h  reason: collision with root package name */
    public final int f7924h;

    /* renamed from: i  reason: collision with root package name */
    public final int f7925i;

    /* renamed from: j  reason: collision with root package name */
    public final int f7926j;

    public C0729d(z zVar, z zVar2, InterfaceC0728c interfaceC0728c, z zVar3, int i4) {
        this.f7920d = zVar;
        this.f7921e = zVar2;
        this.f7923g = zVar3;
        this.f7924h = i4;
        this.f7922f = interfaceC0728c;
        if (zVar3 != null && zVar.f7969d.compareTo(zVar3.f7969d) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (zVar3 != null && zVar3.f7969d.compareTo(zVar2.f7969d) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        if (i4 < 0 || i4 > H.d(null).getMaximum(7)) {
            throw new IllegalArgumentException("firstDayOfWeek is not valid");
        }
        if (!(zVar.f7969d instanceof GregorianCalendar)) {
            throw new IllegalArgumentException("Only Gregorian calendars are supported.");
        }
        int i5 = zVar2.f7971f;
        int i6 = zVar.f7971f;
        this.f7926j = (zVar2.f7970e - zVar.f7970e) + ((i5 - i6) * 12) + 1;
        this.f7925i = (i5 - i6) + 1;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0729d) {
            C0729d c0729d = (C0729d) obj;
            return this.f7920d.equals(c0729d.f7920d) && this.f7921e.equals(c0729d.f7921e) && Objects.equals(this.f7923g, c0729d.f7923g) && this.f7924h == c0729d.f7924h && this.f7922f.equals(c0729d.f7922f);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f7920d, this.f7921e, this.f7923g, Integer.valueOf(this.f7924h), this.f7922f});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeParcelable(this.f7920d, 0);
        parcel.writeParcelable(this.f7921e, 0);
        parcel.writeParcelable(this.f7923g, 0);
        parcel.writeParcelable(this.f7922f, 0);
        parcel.writeInt(this.f7924h);
    }
}
