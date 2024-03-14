package j0;

import android.os.Parcel;
import android.os.Parcelable;
import v.C1429e;
/* renamed from: j0.m  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1110m extends P.c {
    public static final Parcelable.Creator CREATOR = new C1109l();

    /* renamed from: f  reason: collision with root package name */
    public int f10652f;

    /* renamed from: g  reason: collision with root package name */
    public Parcelable f10653g;

    /* renamed from: h  reason: collision with root package name */
    public final ClassLoader f10654h;

    public C1110m(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        classLoader = classLoader == null ? C1110m.class.getClassLoader() : classLoader;
        this.f10652f = parcel.readInt();
        this.f10653g = parcel.readParcelable(classLoader);
        this.f10654h = classLoader;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FragmentPager.SavedState{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" position=");
        return C1429e.a(sb, this.f10652f, "}");
    }

    @Override // P.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeParcelable(this.f1528d, i4);
        parcel.writeInt(this.f10652f);
        parcel.writeParcelable(this.f10653g, i4);
    }
}
