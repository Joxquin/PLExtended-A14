package k2;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: k2.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1209g implements Parcelable.ClassLoaderCreator {
    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new C1210h(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i4) {
        return new C1210h[i4];
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new C1210h(parcel, null);
    }
}
