package J1;

import android.os.Bundle;
/* renamed from: J1.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0023f {

    /* renamed from: a  reason: collision with root package name */
    public C0018a f729a;

    /* renamed from: b  reason: collision with root package name */
    public C0019b f730b;

    /* renamed from: c  reason: collision with root package name */
    public C0020c f731c;

    /* renamed from: d  reason: collision with root package name */
    public float f732d;

    public C0023f() {
    }

    public C0023f(Bundle bundle) {
        if (bundle.containsKey("appActionSuggestion")) {
            Bundle bundle2 = bundle.getBundle("appActionSuggestion");
            if (bundle2 == null) {
                this.f729a = null;
            } else {
                this.f729a = new C0018a(bundle2);
            }
        }
        if (bundle.containsKey("appIcon")) {
            Bundle bundle3 = bundle.getBundle("appIcon");
            if (bundle3 == null) {
                this.f730b = null;
            } else {
                this.f730b = new C0019b(bundle3);
            }
        }
        if (bundle.containsKey("executionInfo")) {
            Bundle bundle4 = bundle.getBundle("executionInfo");
            if (bundle4 == null) {
                this.f731c = null;
            } else {
                this.f731c = new C0020c(1, bundle4);
            }
        }
        if (bundle.containsKey("confScore")) {
            this.f732d = bundle.getFloat("confScore");
        }
    }
}
