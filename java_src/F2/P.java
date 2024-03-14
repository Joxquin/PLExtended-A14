package F2;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
/* loaded from: classes.dex */
public final class P extends P.c {
    public static final Parcelable.Creator CREATOR = new O();

    /* renamed from: f  reason: collision with root package name */
    public CharSequence f436f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f437g;

    public P(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f436f = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f437g = parcel.readInt() == 1;
    }

    public final String toString() {
        return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f436f) + "}";
    }

    @Override // P.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeParcelable(this.f1528d, i4);
        TextUtils.writeToParcel(this.f436f, parcel, i4);
        parcel.writeInt(this.f437g ? 1 : 0);
    }
}
