package z;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
/* loaded from: classes.dex */
public final class i extends P.c {
    public static final Parcelable.Creator CREATOR = new h();

    /* renamed from: f  reason: collision with root package name */
    public SparseArray f12985f;

    public i(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int readInt = parcel.readInt();
        int[] iArr = new int[readInt];
        parcel.readIntArray(iArr);
        Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
        this.f12985f = new SparseArray(readInt);
        for (int i4 = 0; i4 < readInt; i4++) {
            this.f12985f.append(iArr[i4], readParcelableArray[i4]);
        }
    }

    @Override // P.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeParcelable(this.f1528d, i4);
        SparseArray sparseArray = this.f12985f;
        int size = sparseArray != null ? sparseArray.size() : 0;
        parcel.writeInt(size);
        int[] iArr = new int[size];
        Parcelable[] parcelableArr = new Parcelable[size];
        for (int i5 = 0; i5 < size; i5++) {
            iArr[i5] = this.f12985f.keyAt(i5);
            parcelableArr[i5] = (Parcelable) this.f12985f.valueAt(i5);
        }
        parcel.writeIntArray(iArr);
        parcel.writeParcelableArray(parcelableArr, i4);
    }
}
