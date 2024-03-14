package io.grpc.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* renamed from: io.grpc.internal.l2  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1028l2 {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f10163a;

    /* renamed from: b  reason: collision with root package name */
    public final List f10164b;

    /* renamed from: c  reason: collision with root package name */
    public final Collection f10165c;

    /* renamed from: d  reason: collision with root package name */
    public final Collection f10166d;

    /* renamed from: e  reason: collision with root package name */
    public final int f10167e;

    /* renamed from: f  reason: collision with root package name */
    public final p2 f10168f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f10169g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f10170h;

    public C1028l2(List list, Collection collection, Collection collection2, p2 p2Var, boolean z4, boolean z5, boolean z6, int i4) {
        this.f10164b = list;
        O2.m.h(collection, "drainedSubstreams");
        this.f10165c = collection;
        this.f10168f = p2Var;
        this.f10166d = collection2;
        this.f10169g = z4;
        this.f10163a = z5;
        this.f10170h = z6;
        this.f10167e = i4;
        boolean z7 = false;
        O2.m.k("passThrough should imply buffer is null", !z5 || list == null);
        O2.m.k("passThrough should imply winningSubstream != null", (z5 && p2Var == null) ? false : true);
        O2.m.k("passThrough should imply winningSubstream is drained", !z5 || (collection.size() == 1 && collection.contains(p2Var)) || (collection.size() == 0 && p2Var.f10207b));
        O2.m.k("cancelled should imply committed", (z4 && p2Var == null) ? z7 : true);
    }

    public final C1028l2 a(p2 p2Var) {
        Collection unmodifiableCollection;
        O2.m.k("hedging frozen", !this.f10170h);
        O2.m.k("already committed", this.f10168f == null);
        Collection collection = this.f10166d;
        if (collection == null) {
            unmodifiableCollection = Collections.singleton(p2Var);
        } else {
            ArrayList arrayList = new ArrayList(collection);
            arrayList.add(p2Var);
            unmodifiableCollection = Collections.unmodifiableCollection(arrayList);
        }
        return new C1028l2(this.f10164b, this.f10165c, unmodifiableCollection, this.f10168f, this.f10169g, this.f10163a, this.f10170h, this.f10167e + 1);
    }

    public final C1028l2 b(p2 p2Var) {
        ArrayList arrayList = new ArrayList(this.f10166d);
        arrayList.remove(p2Var);
        return new C1028l2(this.f10164b, this.f10165c, Collections.unmodifiableCollection(arrayList), this.f10168f, this.f10169g, this.f10163a, this.f10170h, this.f10167e);
    }

    public final C1028l2 c(p2 p2Var, p2 p2Var2) {
        ArrayList arrayList = new ArrayList(this.f10166d);
        arrayList.remove(p2Var);
        arrayList.add(p2Var2);
        return new C1028l2(this.f10164b, this.f10165c, Collections.unmodifiableCollection(arrayList), this.f10168f, this.f10169g, this.f10163a, this.f10170h, this.f10167e);
    }

    public final C1028l2 d(p2 p2Var) {
        p2Var.f10207b = true;
        Collection collection = this.f10165c;
        if (collection.contains(p2Var)) {
            ArrayList arrayList = new ArrayList(collection);
            arrayList.remove(p2Var);
            return new C1028l2(this.f10164b, Collections.unmodifiableCollection(arrayList), this.f10166d, this.f10168f, this.f10169g, this.f10163a, this.f10170h, this.f10167e);
        }
        return this;
    }

    public final C1028l2 e(p2 p2Var) {
        List list;
        O2.m.k("Already passThrough", !this.f10163a);
        boolean z4 = p2Var.f10207b;
        Collection collection = this.f10165c;
        if (!z4) {
            if (collection.isEmpty()) {
                collection = Collections.singletonList(p2Var);
            } else {
                ArrayList arrayList = new ArrayList(collection);
                arrayList.add(p2Var);
                collection = Collections.unmodifiableCollection(arrayList);
            }
        }
        Collection collection2 = collection;
        p2 p2Var2 = this.f10168f;
        boolean z5 = p2Var2 != null;
        if (z5) {
            O2.m.k("Another RPC attempt has already committed", p2Var2 == p2Var);
            list = null;
        } else {
            list = this.f10164b;
        }
        return new C1028l2(list, collection2, this.f10166d, this.f10168f, this.f10169g, z5, this.f10170h, this.f10167e);
    }
}
