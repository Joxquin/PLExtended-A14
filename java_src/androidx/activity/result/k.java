package androidx.activity.result;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class k implements Parcelable {
    public static final Parcelable.Creator CREATOR = new j();

    /* renamed from: d  reason: collision with root package name */
    public final IntentSender f2474d;

    /* renamed from: e  reason: collision with root package name */
    public final Intent f2475e;

    /* renamed from: f  reason: collision with root package name */
    public final int f2476f;

    /* renamed from: g  reason: collision with root package name */
    public final int f2477g;

    public k(IntentSender intentSender, Intent intent, int i4, int i5) {
        kotlin.jvm.internal.h.e(intentSender, "intentSender");
        this.f2474d = intentSender;
        this.f2475e = intent;
        this.f2476f = i4;
        this.f2477g = i5;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int i4) {
        kotlin.jvm.internal.h.e(dest, "dest");
        dest.writeParcelable(this.f2474d, i4);
        dest.writeParcelable(this.f2475e, i4);
        dest.writeInt(this.f2476f);
        dest.writeInt(this.f2477g);
    }
}
