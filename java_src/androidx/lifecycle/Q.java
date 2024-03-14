package androidx.lifecycle;
/* loaded from: classes.dex */
public interface Q {
    default N a(Class cls) {
        throw new UnsupportedOperationException("Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method.");
    }

    default N b(Class cls, V.d dVar) {
        return a(cls);
    }
}
