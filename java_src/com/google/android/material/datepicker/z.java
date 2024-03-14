package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.format.DateUtils;
import java.util.Arrays;
import java.util.Calendar;
/* loaded from: classes.dex */
public final class z implements Comparable, Parcelable {
    public static final Parcelable.Creator CREATOR = new y();

    /* renamed from: d  reason: collision with root package name */
    public final Calendar f7969d;

    /* renamed from: e  reason: collision with root package name */
    public final int f7970e;

    /* renamed from: f  reason: collision with root package name */
    public final int f7971f;

    /* renamed from: g  reason: collision with root package name */
    public final int f7972g;

    /* renamed from: h  reason: collision with root package name */
    public final int f7973h;

    /* renamed from: i  reason: collision with root package name */
    public final long f7974i;

    /* renamed from: j  reason: collision with root package name */
    public String f7975j;

    public z(Calendar calendar) {
        calendar.set(5, 1);
        Calendar b4 = H.b(calendar);
        this.f7969d = b4;
        this.f7970e = b4.get(2);
        this.f7971f = b4.get(1);
        this.f7972g = b4.getMaximum(7);
        this.f7973h = b4.getActualMaximum(5);
        this.f7974i = b4.getTimeInMillis();
    }

    public static z o(int i4, int i5) {
        Calendar d4 = H.d(null);
        d4.set(1, i4);
        d4.set(2, i5);
        return new z(d4);
    }

    public static z p(long j4) {
        Calendar d4 = H.d(null);
        d4.setTimeInMillis(j4);
        return new z(d4);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f7969d.compareTo(((z) obj).f7969d);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof z) {
            z zVar = (z) obj;
            return this.f7970e == zVar.f7970e && this.f7971f == zVar.f7971f;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f7970e), Integer.valueOf(this.f7971f)});
    }

    public final String q() {
        if (this.f7975j == null) {
            this.f7975j = DateUtils.formatDateTime(null, this.f7969d.getTimeInMillis(), 8228);
        }
        return this.f7975j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.f7971f);
        parcel.writeInt(this.f7970e);
    }
}
