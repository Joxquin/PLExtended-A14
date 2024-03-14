package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class x0 extends P.c {
    public static final Parcelable.Creator CREATOR = new C0301w0();

    /* renamed from: f  reason: collision with root package name */
    public Parcelable f4038f;

    public x0(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f4038f = parcel.readParcelable(classLoader == null ? AbstractC0280l0.class.getClassLoader() : classLoader);
    }

    @Override // P.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeParcelable(this.f1528d, i4);
        parcel.writeParcelable(this.f4038f, 0);
    }
}
