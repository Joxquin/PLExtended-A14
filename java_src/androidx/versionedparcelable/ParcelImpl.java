package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import i0.C0977a;
import i0.d;
import i0.e;
/* loaded from: classes.dex */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator CREATOR = new C0977a();

    /* renamed from: d  reason: collision with root package name */
    public final e f4150d;

    public ParcelImpl(Parcel parcel) {
        this.f4150d = new d(parcel).r();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        new d(parcel).E(this.f4150d);
    }
}
