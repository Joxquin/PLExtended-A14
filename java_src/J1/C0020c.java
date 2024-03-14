package J1;

import android.os.Bundle;
/* renamed from: J1.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0020c {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f714a;

    /* renamed from: b  reason: collision with root package name */
    public String f715b;

    public C0020c(int i4, Bundle bundle) {
        this.f714a = i4;
        if (i4 != 1) {
            a(bundle);
        } else {
            a(bundle);
        }
    }

    public final void a(Bundle bundle) {
        switch (this.f714a) {
            case 0:
                if (bundle.containsKey("packageName")) {
                    this.f715b = bundle.getString("packageName");
                    return;
                }
                return;
            default:
                if (bundle.containsKey("deeplinkUri")) {
                    this.f715b = bundle.getString("deeplinkUri");
                    return;
                }
                return;
        }
    }

    public final Bundle b() {
        switch (this.f714a) {
            case 0:
                Bundle bundle = new Bundle();
                bundle.putString("packageName", this.f715b);
                return bundle;
            default:
                Bundle bundle2 = new Bundle();
                bundle2.putString("deeplinkUri", this.f715b);
                return bundle2;
        }
    }
}
