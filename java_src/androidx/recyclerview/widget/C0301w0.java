package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: androidx.recyclerview.widget.w0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0301w0 implements Parcelable.ClassLoaderCreator {
    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new x0(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i4) {
        return new x0[i4];
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new x0(parcel, null);
    }
}
