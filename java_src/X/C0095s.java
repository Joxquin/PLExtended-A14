package X;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: X.s  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0095s implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new C0096t(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i4) {
        return new C0096t[i4];
    }
}
