package k;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class Y implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new Z(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i4) {
        return new Z[i4];
    }
}
