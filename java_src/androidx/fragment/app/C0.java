package androidx.fragment.app;

import android.view.View;
import g0.C0945n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import q.C1350a;
import q.C1355f;
/* loaded from: classes.dex */
public final class C0 {

    /* renamed from: a  reason: collision with root package name */
    public static final H0 f3244a = new H0();

    /* renamed from: b  reason: collision with root package name */
    public static final J0 f3245b;

    static {
        J0 j02;
        try {
            j02 = (J0) C0945n.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            j02 = null;
        }
        f3245b = j02;
    }

    public static final void a(K inFragment, K outFragment, boolean z4, C1355f c1355f) {
        kotlin.jvm.internal.h.e(inFragment, "inFragment");
        kotlin.jvm.internal.h.e(outFragment, "outFragment");
        if ((z4 ? outFragment.getEnterTransitionCallback() : inFragment.getEnterTransitionCallback()) != null) {
            ArrayList arrayList = new ArrayList(c1355f.f11967f);
            Iterator it = ((C1350a) c1355f.entrySet()).iterator();
            while (it.hasNext()) {
                arrayList.add((View) ((Map.Entry) it.next()).getValue());
            }
            ArrayList arrayList2 = new ArrayList(c1355f.f11967f);
            Iterator it2 = ((C1350a) c1355f.entrySet()).iterator();
            while (it2.hasNext()) {
                arrayList2.add((String) ((Map.Entry) it2.next()).getKey());
            }
        }
    }

    public static final String b(C1355f c1355f, String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = ((C1350a) c1355f.entrySet()).iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (kotlin.jvm.internal.h.a(entry.getValue(), str)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            arrayList.add((String) entry2.getKey());
        }
        return (String) (arrayList.isEmpty() ? null : arrayList.get(0));
    }

    public static final void c(int i4, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((View) it.next()).setVisibility(i4);
        }
    }
}
