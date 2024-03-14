package P;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public abstract class c implements Parcelable {

    /* renamed from: d  reason: collision with root package name */
    public final Parcelable f1528d;

    /* renamed from: e  reason: collision with root package name */
    public static final a f1527e = new a();
    public static final Parcelable.Creator CREATOR = new b();

    public c() {
        this.f1528d = null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeParcelable(this.f1528d, i4);
    }

    public c(Parcelable parcelable) {
        if (parcelable != null) {
            this.f1528d = parcelable == f1527e ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    public c(Parcel parcel, ClassLoader classLoader) {
        Parcelable readParcelable = parcel.readParcelable(classLoader);
        this.f1528d = readParcelable == null ? f1527e : readParcelable;
    }
}
