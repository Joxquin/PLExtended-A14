package X;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: X.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0082e extends C0096t {
    public static final Parcelable.Creator CREATOR = new C0081d();

    /* renamed from: d  reason: collision with root package name */
    public String f2002d;

    public C0082e(Parcel parcel) {
        super(parcel);
        this.f2002d = parcel.readString();
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        super.writeToParcel(parcel, i4);
        parcel.writeString(this.f2002d);
    }
}
