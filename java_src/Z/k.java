package z;

import java.util.ArrayList;
import java.util.HashSet;
import q.m;
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public final L.d f12986a = new L.d(10);

    /* renamed from: b  reason: collision with root package name */
    public final m f12987b = new m();

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList f12988c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    public final HashSet f12989d = new HashSet();

    public final void a(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (hashSet.contains(obj)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(obj);
        ArrayList arrayList2 = (ArrayList) this.f12987b.get(obj);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i4 = 0; i4 < size; i4++) {
                a(arrayList2.get(i4), arrayList, hashSet);
            }
        }
        hashSet.remove(obj);
        arrayList.add(obj);
    }
}
