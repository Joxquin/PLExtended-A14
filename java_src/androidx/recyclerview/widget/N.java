package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class N implements Parcelable {
    public static final Parcelable.Creator CREATOR = new M();

    /* renamed from: d  reason: collision with root package name */
    public int f3843d;

    /* renamed from: e  reason: collision with root package name */
    public int f3844e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f3845f;

    public N() {
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.f3843d);
        parcel.writeInt(this.f3844e);
        parcel.writeInt(this.f3845f ? 1 : 0);
    }

    public N(Parcel parcel) {
        this.f3843d = parcel.readInt();
        this.f3844e = parcel.readInt();
        this.f3845f = parcel.readInt() == 1;
    }

    public N(N n4) {
        this.f3843d = n4.f3843d;
        this.f3844e = n4.f3844e;
        this.f3845f = n4.f3845f;
    }
}
