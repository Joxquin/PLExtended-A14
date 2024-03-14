package J1;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    public String f823a;

    /* renamed from: b  reason: collision with root package name */
    public String f824b;

    /* renamed from: c  reason: collision with root package name */
    public String f825c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f826d;

    /* renamed from: e  reason: collision with root package name */
    public String f827e;

    /* renamed from: f  reason: collision with root package name */
    public F f828f;

    /* renamed from: g  reason: collision with root package name */
    public F f829g;

    /* renamed from: h  reason: collision with root package name */
    public String f830h;

    public w() {
    }

    public w(Bundle bundle) {
        if (bundle.containsKey("id")) {
            this.f823a = bundle.getString("id");
        }
        if (bundle.containsKey("displayName")) {
            this.f824b = bundle.getString("displayName");
        }
        if (bundle.containsKey("dEPRECATEDIconBitmapId")) {
            this.f825c = bundle.getString("dEPRECATEDIconBitmapId");
        }
        if (!bundle.containsKey("fullDisplayName")) {
            this.f826d = false;
        } else {
            this.f826d = true;
            this.f827e = bundle.getString("fullDisplayName");
        }
        if (bundle.containsKey("dEPRECATEDIntentInfo")) {
            Bundle bundle2 = bundle.getBundle("dEPRECATEDIntentInfo");
            if (bundle2 == null) {
                this.f828f = null;
            } else {
                this.f828f = new F(bundle2);
            }
        }
        if (bundle.containsKey("proxiedIntentInfo")) {
            Bundle bundle3 = bundle.getBundle("proxiedIntentInfo");
            if (bundle3 == null) {
                this.f829g = null;
            } else {
                this.f829g = new F(bundle3);
            }
        }
        if (bundle.containsKey("opaquePayload")) {
            this.f830h = bundle.getString("opaquePayload");
        }
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString("id", this.f823a);
        bundle.putString("displayName", this.f824b);
        bundle.putString("dEPRECATEDIconBitmapId", this.f825c);
        bundle.putString("fullDisplayName", this.f827e);
        F f4 = this.f828f;
        if (f4 == null) {
            bundle.putBundle("dEPRECATEDIntentInfo", null);
        } else {
            bundle.putBundle("dEPRECATEDIntentInfo", f4.a());
        }
        F f5 = this.f829g;
        if (f5 == null) {
            bundle.putBundle("proxiedIntentInfo", null);
        } else {
            bundle.putBundle("proxiedIntentInfo", f5.a());
        }
        bundle.putString("opaquePayload", this.f830h);
        return bundle;
    }
}
