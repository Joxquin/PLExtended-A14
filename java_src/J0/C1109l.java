package j0;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: j0.l  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1109l implements Parcelable.ClassLoaderCreator {
    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new C1110m(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i4) {
        return new C1110m[i4];
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new C1110m(parcel, null);
    }
}
