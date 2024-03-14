package J1;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: J1.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0021d {

    /* renamed from: a  reason: collision with root package name */
    public List f716a;

    /* renamed from: b  reason: collision with root package name */
    public List f717b;

    /* renamed from: c  reason: collision with root package name */
    public String f718c;

    /* renamed from: d  reason: collision with root package name */
    public int f719d;

    /* renamed from: e  reason: collision with root package name */
    public List f720e;

    public C0021d() {
    }

    public C0021d(Bundle bundle) {
        if (bundle.containsKey("contentRects")) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("contentRects");
            if (parcelableArrayList == null) {
                this.f716a = null;
            } else {
                this.f716a = new ArrayList(parcelableArrayList.size());
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    Bundle bundle2 = (Bundle) it.next();
                    if (bundle2 == null) {
                        ((ArrayList) this.f716a).add(null);
                    } else {
                        ((ArrayList) this.f716a).add(new y(bundle2));
                    }
                }
            }
        }
        if (bundle.containsKey("selections")) {
            ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("selections");
            if (parcelableArrayList2 == null) {
                this.f717b = null;
            } else {
                this.f717b = new ArrayList(parcelableArrayList2.size());
                Iterator it2 = parcelableArrayList2.iterator();
                while (it2.hasNext()) {
                    Bundle bundle3 = (Bundle) it2.next();
                    if (bundle3 == null) {
                        this.f717b.add(null);
                    } else {
                        this.f717b.add(new C0024g(bundle3));
                    }
                }
            }
        }
        if (bundle.containsKey("text")) {
            this.f718c = bundle.getString("text");
        }
        if (bundle.containsKey("numLines")) {
            this.f719d = bundle.getInt("numLines");
        }
        if (bundle.containsKey("searchSuggestions")) {
            ArrayList parcelableArrayList3 = bundle.getParcelableArrayList("searchSuggestions");
            if (parcelableArrayList3 == null) {
                this.f720e = null;
                return;
            }
            this.f720e = new ArrayList(parcelableArrayList3.size());
            Iterator it3 = parcelableArrayList3.iterator();
            while (it3.hasNext()) {
                Bundle bundle4 = (Bundle) it3.next();
                if (bundle4 == null) {
                    ((ArrayList) this.f720e).add(null);
                } else {
                    ((ArrayList) this.f720e).add(new C0023f(bundle4));
                }
            }
        }
    }
}
