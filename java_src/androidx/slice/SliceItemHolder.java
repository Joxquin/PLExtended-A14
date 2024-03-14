package androidx.slice;

import L.c;
import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Html;
import android.text.Spanned;
import b0.C0311e;
import c0.C0321a;
import i0.e;
/* loaded from: classes.dex */
public class SliceItemHolder implements e {

    /* renamed from: h  reason: collision with root package name */
    public static final Object f4062h = new Object();

    /* renamed from: i  reason: collision with root package name */
    public static C0321a f4063i;

    /* renamed from: a  reason: collision with root package name */
    public e f4064a;

    /* renamed from: b  reason: collision with root package name */
    public Parcelable f4065b;

    /* renamed from: c  reason: collision with root package name */
    public String f4066c;

    /* renamed from: d  reason: collision with root package name */
    public int f4067d;

    /* renamed from: e  reason: collision with root package name */
    public long f4068e;

    /* renamed from: f  reason: collision with root package name */
    public Bundle f4069f;

    /* renamed from: g  reason: collision with root package name */
    public final C0311e f4070g;

    public SliceItemHolder(C0311e c0311e) {
        this.f4064a = null;
        this.f4065b = null;
        this.f4066c = null;
        this.f4067d = 0;
        this.f4068e = 0L;
        this.f4069f = null;
        this.f4070g = c0311e;
    }

    public SliceItemHolder(String str, Object obj) {
        String str2;
        this.f4064a = null;
        this.f4065b = null;
        this.f4066c = null;
        this.f4067d = 0;
        this.f4068e = 0L;
        this.f4069f = null;
        str.getClass();
        char c4 = 65535;
        switch (str.hashCode()) {
            case -1422950858:
                if (str.equals("action")) {
                    c4 = 0;
                    break;
                }
                break;
            case -1377881982:
                if (str.equals("bundle")) {
                    c4 = 1;
                    break;
                }
                break;
            case 104431:
                if (str.equals("int")) {
                    c4 = 2;
                    break;
                }
                break;
            case 3327612:
                if (str.equals("long")) {
                    c4 = 3;
                    break;
                }
                break;
            case 3556653:
                if (str.equals("text")) {
                    c4 = 4;
                    break;
                }
                break;
            case 100313435:
                if (str.equals("image")) {
                    c4 = 5;
                    break;
                }
                break;
            case 100358090:
                if (str.equals("input")) {
                    c4 = 6;
                    break;
                }
                break;
            case 109526418:
                if (str.equals("slice")) {
                    c4 = 7;
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
                c cVar = (c) obj;
                Object obj2 = cVar.f1016a;
                if (obj2 instanceof PendingIntent) {
                    this.f4065b = (Parcelable) obj2;
                    this.f4064a = (e) cVar.f1017b;
                    break;
                } else {
                    throw new IllegalArgumentException("Cannot write callback to parcel");
                }
            case 1:
                this.f4069f = (Bundle) obj;
                break;
            case 2:
                this.f4067d = ((Integer) obj).intValue();
                break;
            case 3:
                this.f4068e = ((Long) obj).longValue();
                break;
            case 4:
                if (obj instanceof Spanned) {
                    str2 = Html.toHtml((Spanned) obj, 0);
                } else {
                    str2 = (String) obj;
                }
                this.f4066c = str2;
                break;
            case 5:
            case 7:
                this.f4064a = (e) obj;
                break;
            case 6:
                this.f4065b = (Parcelable) obj;
                break;
        }
        C0321a c0321a = f4063i;
        if (c0321a != null) {
            c0321a.a(this);
        }
    }
}
