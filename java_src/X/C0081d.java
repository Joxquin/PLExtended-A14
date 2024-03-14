package X;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: X.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0081d implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new C0082e(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i4) {
        return new C0082e[i4];
    }
}
