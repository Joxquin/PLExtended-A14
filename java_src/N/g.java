package N;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import v.C1429e;
/* loaded from: classes.dex */
public final class g extends View.BaseSavedState {
    public static final Parcelable.Creator CREATOR = new f();

    /* renamed from: d  reason: collision with root package name */
    public int f1407d;

    public g(Parcel parcel) {
        super(parcel);
        this.f1407d = parcel.readInt();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("HorizontalScrollView.SavedState{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" scrollPosition=");
        return C1429e.a(sb, this.f1407d, "}");
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        super.writeToParcel(parcel, i4);
        parcel.writeInt(this.f1407d);
    }
}
