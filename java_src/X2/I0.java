package X2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
/* loaded from: classes.dex */
public final class I0 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.util.ServiceLoader] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.util.ServiceLoader] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.util.ArrayList] */
    public static List a(Class cls, Iterable iterable, ClassLoader classLoader, H0 h02) {
        boolean z4;
        ?? load;
        try {
            Class.forName("android.app.Application", false, classLoader);
            z4 = true;
        } catch (Exception unused) {
            z4 = false;
        }
        if (z4) {
            load = new ArrayList();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                Class cls2 = (Class) it.next();
                try {
                    load.add(cls2.asSubclass(cls).getConstructor(new Class[0]).newInstance(new Object[0]));
                } catch (Throwable th) {
                    throw new ServiceConfigurationError(String.format("Provider %s could not be instantiated %s", cls2.getName(), th), th);
                }
            }
        } else {
            load = ServiceLoader.load(cls, classLoader);
            if (!load.iterator().hasNext()) {
                load = ServiceLoader.load(cls);
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : load) {
            if (h02.a(obj)) {
                arrayList.add(obj);
            }
        }
        Collections.sort(arrayList, Collections.reverseOrder(new G0(h02)));
        return Collections.unmodifiableList(arrayList);
    }
}
