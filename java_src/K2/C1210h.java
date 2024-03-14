package k2;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: k2.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1210h extends P.c {
    public static final Parcelable.Creator CREATOR = new C1209g();

    /* renamed from: f  reason: collision with root package name */
    public boolean f11189f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f11190g;

    /* renamed from: h  reason: collision with root package name */
    public int f11191h;

    /* renamed from: i  reason: collision with root package name */
    public float f11192i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f11193j;

    public C1210h(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f11189f = parcel.readByte() != 0;
        this.f11190g = parcel.readByte() != 0;
        this.f11191h = parcel.readInt();
        this.f11192i = parcel.readFloat();
        this.f11193j = parcel.readByte() != 0;
    }

    @Override // P.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeParcelable(this.f1528d, i4);
        parcel.writeByte(this.f11189f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f11190g ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f11191h);
        parcel.writeFloat(this.f11192i);
        parcel.writeByte(this.f11193j ? (byte) 1 : (byte) 0);
    }
}
