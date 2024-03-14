package androidx.activity.result;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.fragment.app.C0198e0;
import androidx.lifecycle.AbstractC0247m;
import androidx.lifecycle.InterfaceC0249o;
import androidx.lifecycle.InterfaceC0251q;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import c.AbstractC0318b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    public Random f2466a = new Random();

    /* renamed from: b  reason: collision with root package name */
    public final Map f2467b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public final Map f2468c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public final Map f2469d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    public ArrayList f2470e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    public final transient Map f2471f = new HashMap();

    /* renamed from: g  reason: collision with root package name */
    public final Map f2472g = new HashMap();

    /* renamed from: h  reason: collision with root package name */
    public final Bundle f2473h = new Bundle();

    public final boolean a(int i4, int i5, Intent intent) {
        c cVar;
        String str = (String) ((HashMap) this.f2467b).get(Integer.valueOf(i4));
        if (str == null) {
            return false;
        }
        f fVar = (f) ((HashMap) this.f2471f).get(str);
        if (fVar == null || (cVar = fVar.f2462a) == null || !this.f2470e.contains(str)) {
            ((HashMap) this.f2472g).remove(str);
            this.f2473h.putParcelable(str, new b(intent, i5));
            return true;
        }
        ((C0198e0) cVar).b(fVar.f2463b.c(intent, i5));
        this.f2470e.remove(str);
        return true;
    }

    public abstract void b(int i4, AbstractC0318b abstractC0318b, Object obj);

    public final e c(final String str, InterfaceC0251q interfaceC0251q, final AbstractC0318b abstractC0318b, final c cVar) {
        AbstractC0247m lifecycle = interfaceC0251q.getLifecycle();
        if (lifecycle.b().compareTo(Lifecycle$State.STARTED) >= 0) {
            throw new IllegalStateException("LifecycleOwner " + interfaceC0251q + " is attempting to register while current state is " + lifecycle.b() + ". LifecycleOwners must call register before they are STARTED.");
        }
        e(str);
        HashMap hashMap = (HashMap) this.f2469d;
        g gVar = (g) hashMap.get(str);
        if (gVar == null) {
            gVar = new g(lifecycle);
        }
        InterfaceC0249o interfaceC0249o = new InterfaceC0249o() { // from class: androidx.activity.result.ActivityResultRegistry$1
            @Override // androidx.lifecycle.InterfaceC0249o
            public final void b(InterfaceC0251q interfaceC0251q2, Lifecycle$Event lifecycle$Event) {
                boolean equals = Lifecycle$Event.ON_START.equals(lifecycle$Event);
                String str2 = str;
                h hVar = h.this;
                if (!equals) {
                    if (Lifecycle$Event.ON_STOP.equals(lifecycle$Event)) {
                        ((HashMap) hVar.f2471f).remove(str2);
                        return;
                    } else if (Lifecycle$Event.ON_DESTROY.equals(lifecycle$Event)) {
                        hVar.f(str2);
                        return;
                    } else {
                        return;
                    }
                }
                Map map = hVar.f2471f;
                AbstractC0318b abstractC0318b2 = abstractC0318b;
                c cVar2 = cVar;
                ((HashMap) map).put(str2, new f(abstractC0318b2, cVar2));
                Map map2 = hVar.f2472g;
                if (((HashMap) map2).containsKey(str2)) {
                    Object obj = ((HashMap) map2).get(str2);
                    ((HashMap) map2).remove(str2);
                    ((C0198e0) cVar2).b(obj);
                }
                Bundle bundle = hVar.f2473h;
                b bVar = (b) bundle.getParcelable(str2);
                if (bVar != null) {
                    bundle.remove(str2);
                    C0198e0 c0198e0 = (C0198e0) cVar2;
                    c0198e0.b(abstractC0318b2.c(bVar.f2457e, bVar.f2456d));
                }
            }
        };
        gVar.f2464a.a(interfaceC0249o);
        gVar.f2465b.add(interfaceC0249o);
        hashMap.put(str, gVar);
        return new e(this, str, abstractC0318b, 0);
    }

    public final e d(String str, AbstractC0318b abstractC0318b, C0198e0 c0198e0) {
        e(str);
        ((HashMap) this.f2471f).put(str, new f(abstractC0318b, c0198e0));
        HashMap hashMap = (HashMap) this.f2472g;
        if (hashMap.containsKey(str)) {
            Object obj = hashMap.get(str);
            hashMap.remove(str);
            c0198e0.b(obj);
        }
        Bundle bundle = this.f2473h;
        b bVar = (b) bundle.getParcelable(str);
        if (bVar != null) {
            bundle.remove(str);
            c0198e0.b(abstractC0318b.c(bVar.f2457e, bVar.f2456d));
        }
        return new e(this, str, abstractC0318b, 1);
    }

    public final void e(String str) {
        Map map = this.f2468c;
        if (((Integer) ((HashMap) map).get(str)) != null) {
            return;
        }
        int nextInt = this.f2466a.nextInt(2147418112);
        while (true) {
            int i4 = nextInt + 65536;
            Map map2 = this.f2467b;
            if (!((HashMap) map2).containsKey(Integer.valueOf(i4))) {
                ((HashMap) map2).put(Integer.valueOf(i4), str);
                ((HashMap) map).put(str, Integer.valueOf(i4));
                return;
            }
            nextInt = this.f2466a.nextInt(2147418112);
        }
    }

    public final void f(String str) {
        Integer num;
        if (!this.f2470e.contains(str) && (num = (Integer) ((HashMap) this.f2468c).remove(str)) != null) {
            ((HashMap) this.f2467b).remove(num);
        }
        ((HashMap) this.f2471f).remove(str);
        Map map = this.f2472g;
        if (((HashMap) map).containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + ((HashMap) map).get(str));
            ((HashMap) map).remove(str);
        }
        Bundle bundle = this.f2473h;
        if (bundle.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + bundle.getParcelable(str));
            bundle.remove(str);
        }
        Map map2 = this.f2469d;
        g gVar = (g) ((HashMap) map2).get(str);
        if (gVar != null) {
            ArrayList arrayList = gVar.f2465b;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                gVar.f2464a.c((InterfaceC0249o) it.next());
            }
            arrayList.clear();
            ((HashMap) map2).remove(str);
        }
    }
}
