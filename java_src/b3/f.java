package b3;

import O2.m;
import X2.AbstractC0104a0;
import X2.C0105b;
import X2.C0107c;
import X2.C0144z;
import X2.I;
import X2.L0;
import X2.U;
import X2.V;
import X2.X;
import X2.Y;
import io.grpc.ConnectivityState;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
/* loaded from: classes.dex */
public final class f extends AbstractC0104a0 {

    /* renamed from: g  reason: collision with root package name */
    public static final C0105b f4244g = new C0105b("state-info");

    /* renamed from: h  reason: collision with root package name */
    public static final L0 f4245h = L0.f2126e.f("no subchannels ready");

    /* renamed from: b  reason: collision with root package name */
    public final V f4246b;

    /* renamed from: d  reason: collision with root package name */
    public final Random f4248d;

    /* renamed from: e  reason: collision with root package name */
    public ConnectivityState f4249e;

    /* renamed from: c  reason: collision with root package name */
    public final Map f4247c = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    public e f4250f = new b(f4245h);

    public f(V v4) {
        m.h(v4, "helper");
        this.f4246b = v4;
        this.f4248d = new Random();
    }

    public static d d(Y y4) {
        Object a4 = y4.b().a(f4244g);
        m.h(a4, "STATE_INFO");
        return (d) a4;
    }

    @Override // X2.AbstractC0104a0
    public final void a(L0 l02) {
        if (this.f4249e != ConnectivityState.READY) {
            f(ConnectivityState.TRANSIENT_FAILURE, new b(l02));
        }
    }

    @Override // X2.AbstractC0104a0
    public final void b(X x4) {
        HashMap hashMap = (HashMap) this.f4247c;
        Set keySet = hashMap.keySet();
        List<I> list = x4.f2174a;
        HashMap hashMap2 = new HashMap(list.size() * 2);
        for (I i4 : list) {
            hashMap2.put(new I(i4.f2114a, C0107c.f2181b), i4);
        }
        Set keySet2 = hashMap2.keySet();
        HashSet hashSet = new HashSet(keySet);
        hashSet.removeAll(keySet2);
        for (Map.Entry entry : hashMap2.entrySet()) {
            I i5 = (I) entry.getKey();
            I i6 = (I) entry.getValue();
            Y y4 = (Y) hashMap.get(i5);
            if (y4 != null) {
                y4.g(Collections.singletonList(i6));
            } else {
                C0107c c0107c = C0107c.f2181b;
                C0105b c0105b = f4244g;
                d dVar = new d(C0144z.a(ConnectivityState.IDLE));
                IdentityHashMap identityHashMap = new IdentityHashMap(1);
                identityHashMap.put(c0105b, dVar);
                C0107c c0107c2 = C0107c.f2181b;
                Object[][] objArr = (Object[][]) Array.newInstance(Object.class, 0, 2);
                List singletonList = Collections.singletonList(i6);
                for (Map.Entry entry2 : c0107c.f2182a.entrySet()) {
                    if (!identityHashMap.containsKey(entry2.getKey())) {
                        identityHashMap.put(entry2.getKey(), entry2.getValue());
                    }
                }
                Y a4 = this.f4246b.a(new U(singletonList, new C0107c(identityHashMap), objArr));
                m.h(a4, "subchannel");
                a4.f(new a(this, a4));
                hashMap.put(i5, a4);
                a4.d();
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            arrayList.add(hashMap.remove((I) it.next()));
        }
        e();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Y y5 = (Y) it2.next();
            y5.e();
            d(y5).f4243a = C0144z.a(ConnectivityState.SHUTDOWN);
        }
    }

    @Override // X2.AbstractC0104a0
    public final void c() {
        Map map = this.f4247c;
        for (Y y4 : ((HashMap) map).values()) {
            y4.e();
            d(y4).f4243a = C0144z.a(ConnectivityState.SHUTDOWN);
        }
        ((HashMap) map).clear();
    }

    public final void e() {
        ConnectivityState connectivityState;
        boolean z4;
        ConnectivityState connectivityState2;
        Map map = this.f4247c;
        Collection values = ((HashMap) map).values();
        ArrayList arrayList = new ArrayList(values.size());
        Iterator it = values.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            connectivityState = ConnectivityState.READY;
            z4 = false;
            if (!hasNext) {
                break;
            }
            Y y4 = (Y) it.next();
            if (((C0144z) d(y4).f4243a).f2251a == connectivityState) {
                arrayList.add(y4);
            }
        }
        if (!arrayList.isEmpty()) {
            f(connectivityState, new c(this.f4248d.nextInt(arrayList.size()), arrayList));
            return;
        }
        Iterator it2 = ((HashMap) map).values().iterator();
        L0 l02 = f4245h;
        L0 l03 = l02;
        while (true) {
            boolean hasNext2 = it2.hasNext();
            connectivityState2 = ConnectivityState.CONNECTING;
            if (!hasNext2) {
                break;
            }
            C0144z c0144z = (C0144z) d((Y) it2.next()).f4243a;
            ConnectivityState connectivityState3 = c0144z.f2251a;
            if (connectivityState3 == connectivityState2 || connectivityState3 == ConnectivityState.IDLE) {
                z4 = true;
            }
            if (l03 == l02 || !l03.d()) {
                l03 = c0144z.f2252b;
            }
        }
        if (!z4) {
            connectivityState2 = ConnectivityState.TRANSIENT_FAILURE;
        }
        f(connectivityState2, new b(l03));
    }

    public final void f(ConnectivityState connectivityState, e eVar) {
        if (connectivityState == this.f4249e && eVar.h(this.f4250f)) {
            return;
        }
        this.f4246b.g(connectivityState, eVar);
        this.f4249e = connectivityState;
        this.f4250f = eVar;
    }
}
