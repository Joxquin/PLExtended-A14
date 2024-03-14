package kotlin.collections;

import java.util.AbstractSet;
import java.util.Set;
/* loaded from: classes.dex */
public abstract class h extends AbstractSet implements Set {
    public abstract int h();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return h();
    }
}
