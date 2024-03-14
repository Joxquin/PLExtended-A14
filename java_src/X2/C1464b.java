package x2;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: x2.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1464b implements Parcelable.ClassLoaderCreator {
    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new C1465c(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i4) {
        return new C1465c[i4];
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new C1465c(parcel, null);
    }
}
