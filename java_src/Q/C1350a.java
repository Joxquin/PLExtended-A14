package q;

import java.util.AbstractSet;
import java.util.Iterator;
/* renamed from: q.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1350a extends AbstractSet {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C1355f f11935d;

    public C1350a(C1355f c1355f) {
        this.f11935d = c1355f;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new C1353d(this.f11935d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f11935d.f11967f;
    }
}
