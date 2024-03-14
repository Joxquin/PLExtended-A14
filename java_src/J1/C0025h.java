package J1;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.EntitiesData;
/* renamed from: J1.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0025h implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return EntitiesData.read(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i4) {
        return new EntitiesData[i4];
    }
}
