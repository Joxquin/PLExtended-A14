package X;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: X.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0087j extends C0096t {
    public static final Parcelable.Creator CREATOR = new C0086i();

    /* renamed from: d  reason: collision with root package name */
    public String f2011d;

    public C0087j(Parcel parcel) {
        super(parcel);
        this.f2011d = parcel.readString();
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        super.writeToParcel(parcel, i4);
        parcel.writeString(this.f2011d);
    }
}
