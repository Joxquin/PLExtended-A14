package com.android.wm.shell.common.bubbles;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class i implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        return new j(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i4) {
        return new j[i4];
    }
}
