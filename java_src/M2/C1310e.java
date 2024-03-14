package m2;

import android.os.Parcel;
import android.os.Parcelable;
import k.Y0;
/* renamed from: m2.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1310e extends P.c {
    public static final Parcelable.Creator CREATOR = new C1309d();

    /* renamed from: f  reason: collision with root package name */
    public int f11735f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f11736g;

    public C1310e(Y0 y02) {
        super(y02);
    }

    @Override // P.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeParcelable(this.f1528d, i4);
        parcel.writeInt(this.f11735f);
        parcel.writeInt(this.f11736g ? 1 : 0);
    }

    public C1310e(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f11735f = parcel.readInt();
        this.f11736g = parcel.readInt() != 0;
    }
}
