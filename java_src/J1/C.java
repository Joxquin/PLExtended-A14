package J1;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class C {

    /* renamed from: a  reason: collision with root package name */
    public List f673a;

    /* renamed from: b  reason: collision with root package name */
    public String f674b;

    /* renamed from: c  reason: collision with root package name */
    public List f675c;

    public C() {
    }

    public C(Bundle bundle) {
        if (bundle.containsKey("rects")) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("rects");
            if (parcelableArrayList == null) {
                this.f673a = null;
            } else {
                this.f673a = new ArrayList(parcelableArrayList.size());
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    Bundle bundle2 = (Bundle) it.next();
                    if (bundle2 == null) {
                        ((ArrayList) this.f673a).add(null);
                    } else {
                        ((ArrayList) this.f673a).add(new y(bundle2));
                    }
                }
            }
        }
        if (bundle.containsKey("selectionId")) {
            this.f674b = bundle.getString("selectionId");
        }
        if (bundle.containsKey("rectIndices")) {
            this.f675c = bundle.getIntegerArrayList("rectIndices");
        }
    }
}
