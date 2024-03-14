package k;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
/* loaded from: classes.dex */
public final class Z extends View.BaseSavedState {
    public static final Parcelable.Creator CREATOR = new Y();

    /* renamed from: d  reason: collision with root package name */
    public boolean f10847d;

    public Z(Parcel parcel) {
        super(parcel);
        this.f10847d = parcel.readByte() != 0;
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        super.writeToParcel(parcel, i4);
        parcel.writeByte(this.f10847d ? (byte) 1 : (byte) 0);
    }
}
