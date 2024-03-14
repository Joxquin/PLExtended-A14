package X;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class N extends C0096t {
    public static final Parcelable.Creator CREATOR = new M();

    /* renamed from: d  reason: collision with root package name */
    public final int f1946d;

    public N(Parcel parcel) {
        super(parcel);
        this.f1946d = parcel.readInt();
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        super.writeToParcel(parcel, i4);
        parcel.writeInt(this.f1946d);
    }

    public N(Parcelable parcelable, int i4) {
        super(parcelable);
        this.f1946d = i4;
    }
}
