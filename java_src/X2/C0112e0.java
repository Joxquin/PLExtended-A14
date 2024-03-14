package X2;

import io.grpc.internal.O1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: X2.e0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0112e0 {

    /* renamed from: c  reason: collision with root package name */
    public static final Logger f2184c;

    /* renamed from: d  reason: collision with root package name */
    public static C0112e0 f2185d;

    /* renamed from: e  reason: collision with root package name */
    public static final Iterable f2186e;

    /* renamed from: a  reason: collision with root package name */
    public final LinkedHashSet f2187a = new LinkedHashSet();

    /* renamed from: b  reason: collision with root package name */
    public final LinkedHashMap f2188b = new LinkedHashMap();

    static {
        Logger logger = Logger.getLogger(C0112e0.class.getName());
        f2184c = logger;
        ArrayList arrayList = new ArrayList();
        try {
            int i4 = O1.f9972b;
            arrayList.add(O1.class);
        } catch (ClassNotFoundException e4) {
            logger.log(Level.WARNING, "Unable to find pick-first LoadBalancer", (Throwable) e4);
        }
        try {
            int i5 = b3.g.f4251b;
            arrayList.add(b3.g.class);
        } catch (ClassNotFoundException e5) {
            logger.log(Level.FINE, "Unable to find round-robin LoadBalancer", (Throwable) e5);
        }
        f2186e = Collections.unmodifiableList(arrayList);
    }

    public final synchronized AbstractC0108c0 a(String str) {
        LinkedHashMap linkedHashMap;
        linkedHashMap = this.f2188b;
        O2.m.h(str, "policy");
        return (AbstractC0108c0) linkedHashMap.get(str);
    }

    public final synchronized void b() {
        this.f2188b.clear();
        Iterator it = this.f2187a.iterator();
        while (it.hasNext()) {
            AbstractC0108c0 abstractC0108c0 = (AbstractC0108c0) it.next();
            String h4 = abstractC0108c0.h();
            AbstractC0108c0 abstractC0108c02 = (AbstractC0108c0) this.f2188b.get(h4);
            if (abstractC0108c02 == null || abstractC0108c02.i() < abstractC0108c0.i()) {
                this.f2188b.put(h4, abstractC0108c0);
            }
        }
    }
}
