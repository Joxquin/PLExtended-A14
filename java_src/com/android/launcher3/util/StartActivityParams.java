package com.android.launcher3.util;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.android.launcher3.Utilities;
/* loaded from: classes.dex */
public final class StartActivityParams implements Parcelable {
    public static final Parcelable.Creator CREATOR = new AnonymousClass1();
    public int extraFlags;
    public Intent fillInIntent;
    public int flagsMask;
    public int flagsValues;
    public Intent intent;
    public IntentSender intentSender;
    private final PendingIntent mPICallback;
    public Bundle options;
    public final int requestCode;

    /* renamed from: com.android.launcher3.util.StartActivityParams$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            return new StartActivityParams(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i4) {
            return new StartActivityParams[i4];
        }
    }

    public StartActivityParams(Activity activity, int i4) {
        this(activity.createPendingResult(i4, new Intent(), 1241513984), i4);
    }

    public final void deliverResult(Context context, int i4, Intent intent) {
        ActivityOptions makeBasic = ActivityOptions.makeBasic();
        Utilities.allowBGLaunch(makeBasic);
        try {
            PendingIntent pendingIntent = this.mPICallback;
            if (pendingIntent != null) {
                pendingIntent.send(context, i4, intent, null, null, null, makeBasic.toBundle());
            }
        } catch (PendingIntent.CanceledException e4) {
            Log.e("StartActivityParams", "Unable to send back result", e4);
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i4) {
        parcel.writeTypedObject(this.mPICallback, i4);
        parcel.writeInt(this.requestCode);
        parcel.writeTypedObject(this.intent, i4);
        parcel.writeTypedObject(this.intentSender, i4);
        parcel.writeTypedObject(this.fillInIntent, i4);
        parcel.writeInt(this.flagsMask);
        parcel.writeInt(this.flagsValues);
        parcel.writeInt(this.extraFlags);
        parcel.writeBundle(this.options);
    }

    public StartActivityParams(PendingIntent pendingIntent, int i4) {
        this.mPICallback = pendingIntent;
        this.requestCode = i4;
    }

    public StartActivityParams(Parcel parcel) {
        this.mPICallback = (PendingIntent) parcel.readTypedObject(PendingIntent.CREATOR);
        this.requestCode = parcel.readInt();
        this.intent = (Intent) parcel.readTypedObject(Intent.CREATOR);
        this.intentSender = (IntentSender) parcel.readTypedObject(IntentSender.CREATOR);
        this.fillInIntent = (Intent) parcel.readTypedObject(Intent.CREATOR);
        this.flagsMask = parcel.readInt();
        this.flagsValues = parcel.readInt();
        this.extraFlags = parcel.readInt();
        this.options = parcel.readBundle();
    }
}
