package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: androidx.fragment.app.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0191b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new C0193c(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i4) {
        return new C0193c[i4];
    }
}
