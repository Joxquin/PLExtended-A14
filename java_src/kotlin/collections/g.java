package kotlin.collections;

import java.util.AbstractList;
import java.util.List;
/* loaded from: classes.dex */
public abstract class g extends AbstractList implements List {
    public abstract int h();

    public abstract Object i(int i4);

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ Object remove(int i4) {
        return i(i4);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return h();
    }
}
