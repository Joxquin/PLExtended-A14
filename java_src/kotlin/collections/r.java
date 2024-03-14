package kotlin.collections;

import java.util.Iterator;
/* loaded from: classes.dex */
public final class r implements kotlin.sequences.g {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Iterable f11243a;

    public r(Iterable iterable) {
        this.f11243a = iterable;
    }

    @Override // kotlin.sequences.g
    public final Iterator iterator() {
        return this.f11243a.iterator();
    }
}
