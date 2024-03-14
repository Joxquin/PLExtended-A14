package com.android.wm.shell.common.bubbles;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class j implements Parcelable {
    public static final Parcelable.Creator CREATOR = new i();

    /* renamed from: d  reason: collision with root package name */
    public final String f6341d;

    /* renamed from: e  reason: collision with root package name */
    public final int f6342e;

    public j(Parcel parcel) {
        this.f6341d = parcel.readString();
        this.f6342e = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.f6341d);
        parcel.writeInt(this.f6342e);
    }
}
