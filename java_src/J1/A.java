package J1;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class A {

    /* renamed from: a  reason: collision with root package name */
    public String f645a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f646b;

    /* renamed from: c  reason: collision with root package name */
    public List f647c;

    /* renamed from: d  reason: collision with root package name */
    public J f648d;

    /* renamed from: e  reason: collision with root package name */
    public z f649e;

    /* renamed from: f  reason: collision with root package name */
    public D f650f;

    /* renamed from: g  reason: collision with root package name */
    public String f651g;

    /* renamed from: h  reason: collision with root package name */
    public I f652h;

    public A() {
    }

    public A(Bundle bundle) {
        if (bundle.containsKey("id")) {
            this.f645a = bundle.getString("id");
        }
        if (bundle.containsKey("success")) {
            this.f646b = bundle.getBoolean("success");
        }
        if (bundle.containsKey("entities")) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("entities");
            if (parcelableArrayList == null) {
                this.f647c = null;
            } else {
                this.f647c = new ArrayList(parcelableArrayList.size());
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    Bundle bundle2 = (Bundle) it.next();
                    if (bundle2 == null) {
                        ((ArrayList) this.f647c).add(null);
                    } else {
                        ((ArrayList) this.f647c).add(new B(bundle2));
                    }
                }
            }
        }
        if (bundle.containsKey("stats")) {
            Bundle bundle3 = bundle.getBundle("stats");
            if (bundle3 == null) {
                this.f648d = null;
            } else {
                this.f648d = new J(bundle3);
            }
        }
        if (bundle.containsKey("debugInfo")) {
            if (bundle.getBundle("debugInfo") == null) {
                this.f649e = null;
            } else {
                this.f649e = new z();
            }
        }
        if (bundle.containsKey("extrasInfo")) {
            Bundle bundle4 = bundle.getBundle("extrasInfo");
            if (bundle4 == null) {
                this.f650f = null;
            } else {
                this.f650f = new D(bundle4);
            }
        }
        if (bundle.containsKey("opaquePayload")) {
            this.f651g = bundle.getString("opaquePayload");
        }
        if (bundle.containsKey("setupInfo")) {
            Bundle bundle5 = bundle.getBundle("setupInfo");
            if (bundle5 == null) {
                this.f652h = null;
            } else {
                this.f652h = new I(bundle5);
            }
        }
    }
}
