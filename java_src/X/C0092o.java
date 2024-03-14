package X;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: X.o  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0092o extends C0096t {
    public static final Parcelable.Creator CREATOR = new C0091n();

    /* renamed from: d  reason: collision with root package name */
    public Set f2016d;

    public C0092o(Parcel parcel) {
        super(parcel);
        int readInt = parcel.readInt();
        this.f2016d = new HashSet();
        String[] strArr = new String[readInt];
        parcel.readStringArray(strArr);
        Collections.addAll(this.f2016d, strArr);
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        super.writeToParcel(parcel, i4);
        parcel.writeInt(this.f2016d.size());
        Set set = this.f2016d;
        parcel.writeStringArray((String[]) set.toArray(new String[set.size()]));
    }
}
