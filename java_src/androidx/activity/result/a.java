package androidx.activity.result;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new b(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i4) {
        return new b[i4];
    }
}
