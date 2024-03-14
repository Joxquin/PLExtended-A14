package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.s0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0225s0 implements Parcelable {
    public static final Parcelable.Creator CREATOR = new C0223r0();

    /* renamed from: d  reason: collision with root package name */
    public ArrayList f3492d;

    /* renamed from: e  reason: collision with root package name */
    public ArrayList f3493e;

    /* renamed from: f  reason: collision with root package name */
    public C0193c[] f3494f;

    /* renamed from: g  reason: collision with root package name */
    public int f3495g;

    /* renamed from: h  reason: collision with root package name */
    public String f3496h;

    /* renamed from: i  reason: collision with root package name */
    public final ArrayList f3497i;

    /* renamed from: j  reason: collision with root package name */
    public final ArrayList f3498j;

    /* renamed from: k  reason: collision with root package name */
    public ArrayList f3499k;

    public C0225s0() {
        this.f3496h = null;
        this.f3497i = new ArrayList();
        this.f3498j = new ArrayList();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeStringList(this.f3492d);
        parcel.writeStringList(this.f3493e);
        parcel.writeTypedArray(this.f3494f, i4);
        parcel.writeInt(this.f3495g);
        parcel.writeString(this.f3496h);
        parcel.writeStringList(this.f3497i);
        parcel.writeTypedList(this.f3498j);
        parcel.writeTypedList(this.f3499k);
    }

    public C0225s0(Parcel parcel) {
        this.f3496h = null;
        this.f3497i = new ArrayList();
        this.f3498j = new ArrayList();
        this.f3492d = parcel.createStringArrayList();
        this.f3493e = parcel.createStringArrayList();
        this.f3494f = (C0193c[]) parcel.createTypedArray(C0193c.CREATOR);
        this.f3495g = parcel.readInt();
        this.f3496h = parcel.readString();
        this.f3497i = parcel.createStringArrayList();
        this.f3498j = parcel.createTypedArrayList(C0197e.CREATOR);
        this.f3499k = parcel.createTypedArrayList(C0214m0.CREATOR);
    }
}
