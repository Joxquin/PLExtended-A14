package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* renamed from: androidx.fragment.app.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0197e implements Parcelable {
    public static final Parcelable.Creator CREATOR = new C0195d();

    /* renamed from: d  reason: collision with root package name */
    public final List f3401d;

    /* renamed from: e  reason: collision with root package name */
    public final List f3402e;

    public C0197e(Parcel parcel) {
        this.f3401d = parcel.createStringArrayList();
        this.f3402e = parcel.createTypedArrayList(C0193c.CREATOR);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeStringList(this.f3401d);
        parcel.writeTypedList(this.f3402e);
    }
}
