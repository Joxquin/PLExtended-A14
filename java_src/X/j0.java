package X;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class j0 extends C0096t {
    public static final Parcelable.Creator CREATOR = new i0();

    /* renamed from: d  reason: collision with root package name */
    public boolean f2012d;

    public j0(Parcel parcel) {
        super(parcel);
        this.f2012d = parcel.readInt() == 1;
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        super.writeToParcel(parcel, i4);
        parcel.writeInt(this.f2012d ? 1 : 0);
    }
}
