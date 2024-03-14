package x2;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: x2.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1465c extends P.c {
    public static final Parcelable.Creator CREATOR = new C1464b();

    /* renamed from: f  reason: collision with root package name */
    public boolean f12843f;

    public C1465c(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f12843f = parcel.readInt() == 1;
    }

    @Override // P.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeParcelable(this.f1528d, i4);
        parcel.writeInt(this.f12843f ? 1 : 0);
    }
}
