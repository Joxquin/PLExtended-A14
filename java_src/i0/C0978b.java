package i0;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
/* renamed from: i0.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0978b extends ObjectInputStream {
    @Override // java.io.ObjectInputStream
    public final Class resolveClass(ObjectStreamClass objectStreamClass) {
        Class<?> cls = Class.forName(objectStreamClass.getName(), false, C0978b.class.getClassLoader());
        return cls != null ? cls : super.resolveClass(objectStreamClass);
    }
}
