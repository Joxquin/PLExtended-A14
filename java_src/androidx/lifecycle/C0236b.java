package androidx.lifecycle;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Deprecated
/* renamed from: androidx.lifecycle.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0236b {

    /* renamed from: a  reason: collision with root package name */
    public final Map f3603a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public final Map f3604b;

    public C0236b(Map map) {
        this.f3604b = map;
        for (Map.Entry entry : ((HashMap) map).entrySet()) {
            Lifecycle$Event lifecycle$Event = (Lifecycle$Event) entry.getValue();
            List list = (List) ((HashMap) this.f3603a).get(lifecycle$Event);
            if (list == null) {
                list = new ArrayList();
                ((HashMap) this.f3603a).put(lifecycle$Event, list);
            }
            list.add((C0237c) entry.getKey());
        }
    }

    public static void a(List list, InterfaceC0251q interfaceC0251q, Lifecycle$Event lifecycle$Event, Object obj) {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                C0237c c0237c = (C0237c) list.get(size);
                c0237c.getClass();
                try {
                    int i4 = c0237c.f3605a;
                    Method method = c0237c.f3606b;
                    if (i4 == 0) {
                        method.invoke(obj, new Object[0]);
                    } else if (i4 == 1) {
                        method.invoke(obj, interfaceC0251q);
                    } else if (i4 == 2) {
                        method.invoke(obj, interfaceC0251q, lifecycle$Event);
                    }
                } catch (IllegalAccessException e4) {
                    throw new RuntimeException(e4);
                } catch (InvocationTargetException e5) {
                    throw new RuntimeException("Failed to call observer method", e5.getCause());
                }
            }
        }
    }
}
