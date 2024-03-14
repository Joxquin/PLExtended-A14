package i0;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import q.m;
/* loaded from: classes.dex */
public final class d extends c {

    /* renamed from: d  reason: collision with root package name */
    public final SparseIntArray f9608d;

    /* renamed from: e  reason: collision with root package name */
    public final Parcel f9609e;

    /* renamed from: f  reason: collision with root package name */
    public final int f9610f;

    /* renamed from: g  reason: collision with root package name */
    public final int f9611g;

    /* renamed from: h  reason: collision with root package name */
    public final String f9612h;

    /* renamed from: i  reason: collision with root package name */
    public int f9613i;

    /* renamed from: j  reason: collision with root package name */
    public int f9614j;

    /* renamed from: k  reason: collision with root package name */
    public int f9615k;

    public d(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new m(), new m(), new m());
    }

    @Override // i0.c
    public final void A(Parcelable parcelable) {
        this.f9609e.writeParcelable(parcelable, 0);
    }

    @Override // i0.c
    public final void C(String str) {
        this.f9609e.writeString(str);
    }

    @Override // i0.c
    public final void D(IBinder iBinder) {
        this.f9609e.writeStrongBinder(iBinder);
    }

    public final void F() {
        int i4 = this.f9613i;
        if (i4 >= 0) {
            int i5 = this.f9608d.get(i4);
            Parcel parcel = this.f9609e;
            int dataPosition = parcel.dataPosition();
            parcel.setDataPosition(i5);
            parcel.writeInt(dataPosition - i5);
            parcel.setDataPosition(dataPosition);
        }
    }

    @Override // i0.c
    public final d a() {
        Parcel parcel = this.f9609e;
        int dataPosition = parcel.dataPosition();
        int i4 = this.f9614j;
        if (i4 == this.f9610f) {
            i4 = this.f9611g;
        }
        int i5 = i4;
        return new d(parcel, dataPosition, i5, this.f9612h + "  ", this.f9605a, this.f9606b, this.f9607c);
    }

    @Override // i0.c
    public final boolean f() {
        return this.f9609e.readInt() != 0;
    }

    @Override // i0.c
    public final Bundle g() {
        return this.f9609e.readBundle(d.class.getClassLoader());
    }

    @Override // i0.c
    public final byte[] h() {
        Parcel parcel = this.f9609e;
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        parcel.readByteArray(bArr);
        return bArr;
    }

    @Override // i0.c
    public final CharSequence i() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f9609e);
    }

    @Override // i0.c
    public final boolean j(int i4) {
        while (this.f9614j < this.f9611g) {
            int i5 = this.f9615k;
            if (i5 == i4) {
                return true;
            }
            if (String.valueOf(i5).compareTo(String.valueOf(i4)) > 0) {
                return false;
            }
            int i6 = this.f9614j;
            Parcel parcel = this.f9609e;
            parcel.setDataPosition(i6);
            int readInt = parcel.readInt();
            this.f9615k = parcel.readInt();
            this.f9614j += readInt;
        }
        return this.f9615k == i4;
    }

    @Override // i0.c
    public final int k() {
        return this.f9609e.readInt();
    }

    @Override // i0.c
    public final long m() {
        return this.f9609e.readLong();
    }

    @Override // i0.c
    public final Parcelable n() {
        return this.f9609e.readParcelable(d.class.getClassLoader());
    }

    @Override // i0.c
    public final String o() {
        return this.f9609e.readString();
    }

    @Override // i0.c
    public final IBinder q() {
        return this.f9609e.readStrongBinder();
    }

    @Override // i0.c
    public final void s(int i4) {
        F();
        this.f9613i = i4;
        this.f9608d.put(i4, this.f9609e.dataPosition());
        y(0);
        y(i4);
    }

    @Override // i0.c
    public final void u(boolean z4) {
        this.f9609e.writeInt(z4 ? 1 : 0);
    }

    @Override // i0.c
    public final void v(Bundle bundle) {
        this.f9609e.writeBundle(bundle);
    }

    @Override // i0.c
    public final void w(byte[] bArr) {
        Parcel parcel = this.f9609e;
        if (bArr == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(bArr.length);
        parcel.writeByteArray(bArr);
    }

    @Override // i0.c
    public final void x(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f9609e, 0);
    }

    @Override // i0.c
    public final void y(int i4) {
        this.f9609e.writeInt(i4);
    }

    @Override // i0.c
    public final void z(long j4) {
        this.f9609e.writeLong(j4);
    }

    public d(Parcel parcel, int i4, int i5, String str, m mVar, m mVar2, m mVar3) {
        super(mVar, mVar2, mVar3);
        this.f9608d = new SparseIntArray();
        this.f9613i = -1;
        this.f9615k = -1;
        this.f9609e = parcel;
        this.f9610f = i4;
        this.f9611g = i5;
        this.f9614j = i4;
        this.f9612h = str;
    }
}
