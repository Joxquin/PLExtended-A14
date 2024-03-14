package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class M0 implements Parcelable.Creator {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f3842a;

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f3842a) {
            case 0:
                return new N0(parcel);
            default:
                return new P0(parcel);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i4) {
        switch (this.f3842a) {
            case 0:
                return new N0[i4];
            default:
                return new P0[i4];
        }
    }
}
