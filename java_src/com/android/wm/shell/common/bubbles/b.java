package com.android.wm.shell.common.bubbles;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator CREATOR = new a();

    /* renamed from: d  reason: collision with root package name */
    public final boolean f6303d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f6304e;

    /* renamed from: f  reason: collision with root package name */
    public final String f6305f;

    /* renamed from: g  reason: collision with root package name */
    public final d f6306g;

    /* renamed from: h  reason: collision with root package name */
    public final d f6307h;

    /* renamed from: i  reason: collision with root package name */
    public final String f6308i;

    /* renamed from: j  reason: collision with root package name */
    public final String f6309j;

    /* renamed from: k  reason: collision with root package name */
    public final List f6310k;

    /* renamed from: l  reason: collision with root package name */
    public final List f6311l;

    /* renamed from: m  reason: collision with root package name */
    public final List f6312m;

    public b() {
        this.f6310k = new ArrayList();
        this.f6311l = new ArrayList();
        this.f6312m = new ArrayList();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "BubbleBarUpdate{ expandedChanged=" + this.f6303d + " expanded=" + this.f6304e + " selectedBubbleKey=" + this.f6305f + " addedBubble=" + this.f6306g + " updatedBubble=" + this.f6307h + " suppressedBubbleKey=" + this.f6308i + " unsuppressedBubbleKey=" + this.f6309j + " removedBubbles=" + this.f6310k + " bubbles=" + this.f6311l + " currentBubbleList=" + this.f6312m + " }";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeBoolean(this.f6303d);
        parcel.writeBoolean(this.f6304e);
        parcel.writeString(this.f6305f);
        parcel.writeParcelable(this.f6306g, i4);
        parcel.writeParcelable(this.f6307h, i4);
        parcel.writeString(this.f6308i);
        parcel.writeString(this.f6309j);
        parcel.writeParcelableList(this.f6310k, i4);
        parcel.writeStringList(this.f6311l);
        parcel.writeParcelableList(this.f6312m, i4);
    }

    public b(Parcel parcel) {
        this.f6310k = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.f6311l = arrayList;
        this.f6312m = new ArrayList();
        this.f6303d = parcel.readBoolean();
        this.f6304e = parcel.readBoolean();
        this.f6305f = parcel.readString();
        this.f6306g = (d) parcel.readParcelable(d.class.getClassLoader(), d.class);
        this.f6307h = (d) parcel.readParcelable(d.class.getClassLoader(), d.class);
        this.f6308i = parcel.readString();
        this.f6309j = parcel.readString();
        this.f6310k = parcel.readParcelableList(new ArrayList(), j.class.getClassLoader());
        parcel.readStringList(arrayList);
        this.f6312m = parcel.readParcelableList(new ArrayList(), d.class.getClassLoader());
    }
}
