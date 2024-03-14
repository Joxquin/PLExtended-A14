package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: androidx.fragment.app.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0195d implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new C0197e(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i4) {
        return new C0197e[i4];
    }
}
