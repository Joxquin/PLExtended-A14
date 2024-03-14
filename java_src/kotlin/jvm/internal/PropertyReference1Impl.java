package kotlin.jvm.internal;
/* loaded from: classes.dex */
public class PropertyReference1Impl extends PropertyReference1 {
    public PropertyReference1Impl(r3.d dVar, String str, String str2) {
        super(CallableReference.NO_RECEIVER, ((c) dVar).a(), str, str2, !(dVar instanceof r3.c) ? 1 : 0);
    }

    public Object get(Object obj) {
        mo11getGetter();
        throw null;
    }

    public PropertyReference1Impl(Class cls, String str, String str2, int i4) {
        super(CallableReference.NO_RECEIVER, cls, str, str2, i4);
    }

    public PropertyReference1Impl(Object obj, Class cls, String str, String str2, int i4) {
        super(obj, cls, str, str2, i4);
    }
}
