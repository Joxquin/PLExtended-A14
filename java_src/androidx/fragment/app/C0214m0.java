package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: androidx.fragment.app.m0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0214m0 implements Parcelable {
    public static final Parcelable.Creator CREATOR = new C0212l0();

    /* renamed from: d  reason: collision with root package name */
    public final String f3433d;

    /* renamed from: e  reason: collision with root package name */
    public final int f3434e;

    public C0214m0(String str, int i4) {
        this.f3433d = str;
        this.f3434e = i4;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.f3433d);
        parcel.writeInt(this.f3434e);
    }

    public C0214m0(Parcel parcel) {
        this.f3433d = parcel.readString();
        this.f3434e = parcel.readInt();
    }
}
