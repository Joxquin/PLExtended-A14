package E2;

import P.c;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import q.m;
/* loaded from: classes.dex */
public final class b extends c {
    public static final Parcelable.Creator CREATOR = new a();

    /* renamed from: f  reason: collision with root package name */
    public final m f342f;

    public b(Parcelable parcelable) {
        super(parcelable);
        this.f342f = new m();
    }

    public final String toString() {
        return "ExtendableSavedState{" + Integer.toHexString(System.identityHashCode(this)) + " states=" + this.f342f + "}";
    }

    @Override // P.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeParcelable(this.f1528d, i4);
        int i5 = this.f342f.f11967f;
        parcel.writeInt(i5);
        String[] strArr = new String[i5];
        Bundle[] bundleArr = new Bundle[i5];
        for (int i6 = 0; i6 < i5; i6++) {
            strArr[i6] = (String) this.f342f.g(i6);
            bundleArr[i6] = (Bundle) this.f342f.j(i6);
        }
        parcel.writeStringArray(strArr);
        parcel.writeTypedArray(bundleArr, 0);
    }

    public b(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int readInt = parcel.readInt();
        String[] strArr = new String[readInt];
        parcel.readStringArray(strArr);
        Bundle[] bundleArr = new Bundle[readInt];
        parcel.readTypedArray(bundleArr, Bundle.CREATOR);
        this.f342f = new m(readInt);
        for (int i4 = 0; i4 < readInt; i4++) {
            this.f342f.put(strArr[i4], bundleArr[i4]);
        }
    }
}
