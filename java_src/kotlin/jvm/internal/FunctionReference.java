package kotlin.jvm.internal;
/* loaded from: classes.dex */
public class FunctionReference extends CallableReference implements g, r3.e {
    private final int arity;
    private final int flags;

    public FunctionReference(int i4, Object obj, Class cls, String str, String str2, int i5) {
        super(obj, cls, str, str2, (i5 & 1) == 1);
        this.arity = i4;
        this.flags = i5 >> 1;
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final r3.b computeReflected() {
        j.f11265a.getClass();
        return this;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FunctionReference) {
            FunctionReference functionReference = (FunctionReference) obj;
            return getName().equals(functionReference.getName()) && getSignature().equals(functionReference.getSignature()) && this.flags == functionReference.flags && this.arity == functionReference.arity && h.a(getBoundReceiver(), functionReference.getBoundReceiver()) && h.a(getOwner(), functionReference.getOwner());
        } else if (obj instanceof r3.e) {
            return obj.equals(compute());
        } else {
            return false;
        }
    }

    @Override // kotlin.jvm.internal.g
    public final int getArity() {
        return this.arity;
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final r3.b getReflected() {
        return (r3.e) super.getReflected();
    }

    public final int hashCode() {
        return getSignature().hashCode() + ((getName().hashCode() + (getOwner() == null ? 0 : getOwner().hashCode() * 31)) * 31);
    }

    @Override // kotlin.jvm.internal.CallableReference, r3.b
    public final boolean isSuspend() {
        return ((r3.e) super.getReflected()).isSuspend();
    }

    public final String toString() {
        r3.b compute = compute();
        if (compute != this) {
            return compute.toString();
        }
        if ("<init>".equals(getName())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + getName() + " (Kotlin reflection is not available)";
    }
}
