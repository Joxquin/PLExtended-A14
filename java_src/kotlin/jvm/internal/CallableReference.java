package kotlin.jvm.internal;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import kotlin.jvm.KotlinReflectionNotSupportedError;
import kotlin.reflect.KVisibility;
/* loaded from: classes.dex */
public abstract class CallableReference implements r3.b, Serializable {
    public static final Object NO_RECEIVER = NoReceiver.f11255d;
    private final boolean isTopLevel;
    private final String name;
    private final Class owner;
    protected final Object receiver;
    private transient r3.b reflected;
    private final String signature;

    /* loaded from: classes.dex */
    class NoReceiver implements Serializable {

        /* renamed from: d  reason: collision with root package name */
        public static final NoReceiver f11255d = new NoReceiver();

        private NoReceiver() {
        }

        private Object readResolve() {
            return f11255d;
        }
    }

    public CallableReference() {
        this(NO_RECEIVER);
    }

    @Override // r3.b
    public Object call(Object... objArr) {
        return getReflected().call(objArr);
    }

    @Override // r3.b
    public Object callBy(Map map) {
        return getReflected().callBy(map);
    }

    public r3.b compute() {
        r3.b bVar = this.reflected;
        if (bVar == null) {
            r3.b computeReflected = computeReflected();
            this.reflected = computeReflected;
            return computeReflected;
        }
        return bVar;
    }

    public abstract r3.b computeReflected();

    @Override // r3.a
    public List getAnnotations() {
        return getReflected().getAnnotations();
    }

    public Object getBoundReceiver() {
        return this.receiver;
    }

    public String getName() {
        return this.name;
    }

    public r3.d getOwner() {
        Class cls = this.owner;
        if (cls == null) {
            return null;
        }
        if (this.isTopLevel) {
            j.f11265a.getClass();
            return new i(cls);
        }
        return j.a(cls);
    }

    @Override // r3.b
    public List getParameters() {
        return getReflected().getParameters();
    }

    public r3.b getReflected() {
        r3.b compute = compute();
        if (compute != this) {
            return compute;
        }
        throw new KotlinReflectionNotSupportedError();
    }

    @Override // r3.b
    public r3.k getReturnType() {
        getReflected().getReturnType();
        return null;
    }

    public String getSignature() {
        return this.signature;
    }

    @Override // r3.b
    public List getTypeParameters() {
        return getReflected().getTypeParameters();
    }

    @Override // r3.b
    public KVisibility getVisibility() {
        return getReflected().getVisibility();
    }

    @Override // r3.b
    public boolean isAbstract() {
        return getReflected().isAbstract();
    }

    @Override // r3.b
    public boolean isFinal() {
        return getReflected().isFinal();
    }

    @Override // r3.b
    public boolean isOpen() {
        return getReflected().isOpen();
    }

    @Override // r3.b
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    public CallableReference(Object obj) {
        this(obj, null, null, null, false);
    }

    public CallableReference(Object obj, Class cls, String str, String str2, boolean z4) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = z4;
    }
}
