package com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2;

import J1.A;
import J1.B;
import J1.C0025h;
import J1.D;
import J1.I;
import J1.J;
import android.app.PendingIntent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
public class EntitiesData implements Parcelable {
    public static final Parcelable.Creator CREATOR = new C0025h();
    private final Map bitmapMap;
    private final A entities;
    private final Map pendingIntentMap;

    private EntitiesData(A a4, Map map, Map map2) {
        this.entities = a4;
        this.bitmapMap = map;
        this.pendingIntentMap = map2;
    }

    public static EntitiesData create(A a4) {
        return new EntitiesData(a4, new HashMap(), new HashMap());
    }

    public static EntitiesData read(Parcel parcel) {
        A a4 = new A(parcel.readBundle());
        HashMap hashMap = new HashMap();
        D d4 = a4.f650f;
        if (d4 != null && d4.f677b) {
            parcel.readMap(hashMap, Bitmap.class.getClassLoader());
        }
        HashMap hashMap2 = new HashMap();
        D d5 = a4.f650f;
        if (d5 != null && d5.f676a) {
            parcel.readMap(hashMap2, PendingIntent.class.getClassLoader());
        }
        return create(a4, hashMap, hashMap2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public A entities() {
        return this.entities;
    }

    public Bitmap getBitmap(String str) {
        return (Bitmap) this.bitmapMap.get(str);
    }

    public Map getBitmapMap() {
        return this.bitmapMap;
    }

    public PendingIntent getPendingIntent(String str) {
        return (PendingIntent) this.pendingIntentMap.get(str);
    }

    public Map getPendingIntentMap() {
        return this.pendingIntentMap;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        A a4 = this.entities;
        a4.getClass();
        Bundle bundle = new Bundle();
        bundle.putString("id", a4.f645a);
        bundle.putBoolean("success", a4.f646b);
        if (a4.f647c == null) {
            bundle.putParcelableArrayList("entities", null);
        } else {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(((ArrayList) a4.f647c).size());
            Iterator it = ((ArrayList) a4.f647c).iterator();
            while (it.hasNext()) {
                B b4 = (B) it.next();
                if (b4 == null) {
                    arrayList.add(null);
                } else {
                    arrayList.add(b4.a());
                }
            }
            bundle.putParcelableArrayList("entities", arrayList);
        }
        J j4 = a4.f648d;
        if (j4 == null) {
            bundle.putBundle("stats", null);
        } else {
            bundle.putBundle("stats", j4.a());
        }
        if (a4.f649e == null) {
            bundle.putBundle("debugInfo", null);
        } else {
            bundle.putBundle("debugInfo", new Bundle());
        }
        D d4 = a4.f650f;
        if (d4 == null) {
            bundle.putBundle("extrasInfo", null);
        } else {
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("containsPendingIntents", d4.f676a);
            bundle2.putBoolean("containsBitmaps", d4.f677b);
            bundle.putBundle("extrasInfo", bundle2);
        }
        bundle.putString("opaquePayload", a4.f651g);
        I i5 = a4.f652h;
        if (i5 == null) {
            bundle.putBundle("setupInfo", null);
        } else {
            bundle.putBundle("setupInfo", i5.a());
        }
        bundle.writeToParcel(parcel, 0);
        D d5 = this.entities.f650f;
        if (d5 != null) {
            if (d5.f677b) {
                parcel.writeMap(this.bitmapMap);
            }
            if (this.entities.f650f.f676a) {
                parcel.writeMap(this.pendingIntentMap);
            }
        }
    }

    public static EntitiesData create(A a4, Map map, Map map2) {
        return new EntitiesData(a4, map, map2);
    }
}
