package kotlin.jvm.internal;
/* loaded from: classes.dex */
public abstract class PropertyReference extends CallableReference implements r3.j {
    public PropertyReference() {
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof PropertyReference) {
            PropertyReference propertyReference = (PropertyReference) obj;
            return getOwner().equals(propertyReference.getOwner()) && getName().equals(propertyReference.getName()) && getSignature().equals(propertyReference.getSignature()) && h.a(getBoundReceiver(), propertyReference.getBoundReceiver());
        } else if (obj instanceof r3.j) {
            return obj.equals(compute());
        } else {
            return false;
        }
    }

    public int hashCode() {
        int hashCode = getName().hashCode();
        return getSignature().hashCode() + ((hashCode + (getOwner().hashCode() * 31)) * 31);
    }

    @Override // r3.j
    public boolean isConst() {
        return getReflected().isConst();
    }

    @Override // r3.j
    public boolean isLateinit() {
        return getReflected().isLateinit();
    }

    public String toString() {
        r3.b compute = compute();
        if (compute != this) {
            return compute.toString();
        }
        return "property " + getName() + " (Kotlin reflection is not available)";
    }

    public PropertyReference(Object obj) {
        super(obj);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public r3.j getReflected() {
        return (r3.j) super.getReflected();
    }

    public PropertyReference(Object obj, Class cls, String str, String str2, int i4) {
        super(obj, cls, str, str2, (i4 & 1) == 1);
    }
}
