package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class x0 implements Parcelable {
    public static final Parcelable.Creator CREATOR = new w0();

    /* renamed from: d  reason: collision with root package name */
    public final String f3523d;

    /* renamed from: e  reason: collision with root package name */
    public final String f3524e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f3525f;

    /* renamed from: g  reason: collision with root package name */
    public final int f3526g;

    /* renamed from: h  reason: collision with root package name */
    public final int f3527h;

    /* renamed from: i  reason: collision with root package name */
    public final String f3528i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f3529j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f3530k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f3531l;

    /* renamed from: m  reason: collision with root package name */
    public final boolean f3532m;

    /* renamed from: n  reason: collision with root package name */
    public final int f3533n;

    /* renamed from: o  reason: collision with root package name */
    public final String f3534o;

    /* renamed from: p  reason: collision with root package name */
    public final int f3535p;

    /* renamed from: q  reason: collision with root package name */
    public final boolean f3536q;

    public x0(K k4) {
        this.f3523d = k4.getClass().getName();
        this.f3524e = k4.mWho;
        this.f3525f = k4.mFromLayout;
        this.f3526g = k4.mFragmentId;
        this.f3527h = k4.mContainerId;
        this.f3528i = k4.mTag;
        this.f3529j = k4.mRetainInstance;
        this.f3530k = k4.mRemoving;
        this.f3531l = k4.mDetached;
        this.f3532m = k4.mHidden;
        this.f3533n = k4.mMaxState.ordinal();
        this.f3534o = k4.mTargetWho;
        this.f3535p = k4.mTargetRequestCode;
        this.f3536q = k4.mUserVisibleHint;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f3523d);
        sb.append(" (");
        sb.append(this.f3524e);
        sb.append(")}:");
        if (this.f3525f) {
            sb.append(" fromLayout");
        }
        if (this.f3527h != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f3527h));
        }
        String str = this.f3528i;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f3528i);
        }
        if (this.f3529j) {
            sb.append(" retainInstance");
        }
        if (this.f3530k) {
            sb.append(" removing");
        }
        if (this.f3531l) {
            sb.append(" detached");
        }
        if (this.f3532m) {
            sb.append(" hidden");
        }
        if (this.f3534o != null) {
            sb.append(" targetWho=");
            sb.append(this.f3534o);
            sb.append(" targetRequestCode=");
            sb.append(this.f3535p);
        }
        if (this.f3536q) {
            sb.append(" userVisibleHint");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.f3523d);
        parcel.writeString(this.f3524e);
        parcel.writeInt(this.f3525f ? 1 : 0);
        parcel.writeInt(this.f3526g);
        parcel.writeInt(this.f3527h);
        parcel.writeString(this.f3528i);
        parcel.writeInt(this.f3529j ? 1 : 0);
        parcel.writeInt(this.f3530k ? 1 : 0);
        parcel.writeInt(this.f3531l ? 1 : 0);
        parcel.writeInt(this.f3532m ? 1 : 0);
        parcel.writeInt(this.f3533n);
        parcel.writeString(this.f3534o);
        parcel.writeInt(this.f3535p);
        parcel.writeInt(this.f3536q ? 1 : 0);
    }

    public x0(Parcel parcel) {
        this.f3523d = parcel.readString();
        this.f3524e = parcel.readString();
        this.f3525f = parcel.readInt() != 0;
        this.f3526g = parcel.readInt();
        this.f3527h = parcel.readInt();
        this.f3528i = parcel.readString();
        this.f3529j = parcel.readInt() != 0;
        this.f3530k = parcel.readInt() != 0;
        this.f3531l = parcel.readInt() != 0;
        this.f3532m = parcel.readInt() != 0;
        this.f3533n = parcel.readInt();
        this.f3534o = parcel.readString();
        this.f3535p = parcel.readInt();
        this.f3536q = parcel.readInt() != 0;
    }
}
