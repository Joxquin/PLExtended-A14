package X;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class f0 extends C0096t {
    public static final Parcelable.Creator CREATOR = new e0();

    /* renamed from: d  reason: collision with root package name */
    public int f2004d;

    /* renamed from: e  reason: collision with root package name */
    public int f2005e;

    /* renamed from: f  reason: collision with root package name */
    public int f2006f;

    public f0(Parcel parcel) {
        super(parcel);
        this.f2004d = parcel.readInt();
        this.f2005e = parcel.readInt();
        this.f2006f = parcel.readInt();
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        super.writeToParcel(parcel, i4);
        parcel.writeInt(this.f2004d);
        parcel.writeInt(this.f2005e);
        parcel.writeInt(this.f2006f);
    }
}
