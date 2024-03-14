package kotlin.jvm.internal;
/* loaded from: classes.dex */
public abstract class PropertyReference1 extends PropertyReference implements r3.i {
    public PropertyReference1() {
    }

    @Override // kotlin.jvm.internal.CallableReference
    public r3.b computeReflected() {
        j.f11265a.getClass();
        return this;
    }

    @Override // r3.i
    public Object getDelegate(Object obj) {
        return ((r3.i) getReflected()).getDelegate(obj);
    }

    public /* bridge */ /* synthetic */ r3.f getGetter() {
        mo11getGetter();
        return null;
    }

    @Override // m3.l
    public Object invoke(Object obj) {
        return get(obj);
    }

    public PropertyReference1(Object obj) {
        super(obj);
    }

    @Override // r3.i
    /* renamed from: getGetter  reason: collision with other method in class */
    public r3.h mo11getGetter() {
        ((r3.i) getReflected()).mo11getGetter();
        return null;
    }

    public PropertyReference1(Object obj, Class cls, String str, String str2, int i4) {
        super(obj, cls, str, str2, i4);
    }
}
