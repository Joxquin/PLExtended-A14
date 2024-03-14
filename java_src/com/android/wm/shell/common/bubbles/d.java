package com.android.wm.shell.common.bubbles;

import android.graphics.drawable.Icon;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;
/* loaded from: classes.dex */
public final class d implements Parcelable {
    public static final Parcelable.Creator CREATOR = new c();

    /* renamed from: d  reason: collision with root package name */
    public final String f6313d;

    /* renamed from: e  reason: collision with root package name */
    public int f6314e;

    /* renamed from: f  reason: collision with root package name */
    public final String f6315f;

    /* renamed from: g  reason: collision with root package name */
    public final int f6316g;

    /* renamed from: h  reason: collision with root package name */
    public final String f6317h;

    /* renamed from: i  reason: collision with root package name */
    public final Icon f6318i;

    /* renamed from: j  reason: collision with root package name */
    public final String f6319j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f6320k;

    public d(Parcel parcel) {
        this.f6313d = parcel.readString();
        this.f6314e = parcel.readInt();
        this.f6315f = parcel.readString();
        this.f6318i = (Icon) parcel.readTypedObject(Icon.CREATOR);
        this.f6316g = parcel.readInt();
        this.f6317h = parcel.readString();
        this.f6319j = parcel.readString();
        this.f6320k = parcel.readBoolean();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d) {
            return Objects.equals(this.f6313d, ((d) obj).f6313d);
        }
        return false;
    }

    public final int hashCode() {
        return this.f6313d.hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.f6313d);
        parcel.writeInt(this.f6314e);
        parcel.writeString(this.f6315f);
        parcel.writeTypedObject(this.f6318i, i4);
        parcel.writeInt(this.f6316g);
        parcel.writeString(this.f6317h);
        parcel.writeString(this.f6319j);
        parcel.writeBoolean(this.f6320k);
    }
}
