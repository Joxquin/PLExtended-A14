package k;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class Y0 extends P.c {
    public static final Parcelable.Creator CREATOR = new X0();

    /* renamed from: f  reason: collision with root package name */
    public int f10845f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f10846g;

    public Y0(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f10845f = parcel.readInt();
        this.f10846g = parcel.readInt() != 0;
    }

    @Override // P.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeParcelable(this.f1528d, i4);
        parcel.writeInt(this.f10845f);
        parcel.writeInt(this.f10846g ? 1 : 0);
    }
}
