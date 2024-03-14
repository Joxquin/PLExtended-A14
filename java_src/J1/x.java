package J1;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    public String f831a;

    /* renamed from: b  reason: collision with root package name */
    public String f832b;

    /* renamed from: c  reason: collision with root package name */
    public w f833c;

    /* renamed from: d  reason: collision with root package name */
    public List f834d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f835e;

    /* renamed from: f  reason: collision with root package name */
    public String f836f;

    public x() {
    }

    public x(Bundle bundle) {
        if (bundle.containsKey("id")) {
            this.f831a = bundle.getString("id");
        }
        if (bundle.containsKey("displayName")) {
            this.f832b = bundle.getString("displayName");
        }
        if (bundle.containsKey("mainAction")) {
            Bundle bundle2 = bundle.getBundle("mainAction");
            if (bundle2 == null) {
                this.f833c = null;
            } else {
                this.f833c = new w(bundle2);
            }
        }
        if (bundle.containsKey("alternateActions")) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("alternateActions");
            if (parcelableArrayList == null) {
                this.f834d = null;
            } else {
                this.f834d = new ArrayList(parcelableArrayList.size());
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    Bundle bundle3 = (Bundle) it.next();
                    if (bundle3 == null) {
                        ((ArrayList) this.f834d).add(null);
                    } else {
                        ((ArrayList) this.f834d).add(new w(bundle3));
                    }
                }
            }
        }
        if (bundle.containsKey("isHiddenAction")) {
            this.f835e = bundle.getBoolean("isHiddenAction");
        }
        if (bundle.containsKey("opaquePayload")) {
            this.f836f = bundle.getString("opaquePayload");
        }
    }
}
