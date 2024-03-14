package X;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: X.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0086i implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new C0087j(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i4) {
        return new C0087j[i4];
    }
}
