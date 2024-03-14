package kotlinx.coroutines.internal;

import java.util.ArrayList;
/* renamed from: kotlinx.coroutines.internal.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1242i {
    public static final Object a(Object obj, Object obj2) {
        if (obj == null) {
            return obj2;
        }
        if (obj instanceof ArrayList) {
            ((ArrayList) obj).add(obj2);
            return obj;
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(obj2);
        return arrayList;
    }
}
