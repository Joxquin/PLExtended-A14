package o2;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: o2.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1329c extends P.c {
    public static final Parcelable.Creator CREATOR = new C1328b();

    /* renamed from: f  reason: collision with root package name */
    public boolean f11849f;

    public C1329c(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        if (classLoader == null) {
            C1329c.class.getClassLoader();
        }
        this.f11849f = parcel.readInt() == 1;
    }

    @Override // P.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeParcelable(this.f1528d, i4);
        parcel.writeInt(this.f11849f ? 1 : 0);
    }
}
