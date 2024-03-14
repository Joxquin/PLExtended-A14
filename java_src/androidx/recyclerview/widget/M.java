package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class M implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new N(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i4) {
        return new N[i4];
    }
}
