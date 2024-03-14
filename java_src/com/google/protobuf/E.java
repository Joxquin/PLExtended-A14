package com.google.protobuf;
/* loaded from: classes.dex */
public abstract class E extends AbstractC0741a {
    private final J defaultInstance;
    protected J instance;

    public E(J j4) {
        this.defaultInstance = j4;
        if (j4.isMutable()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.instance = (J) j4.dynamicMethod(GeneratedMessageLite$MethodToInvoke.NEW_MUTABLE_INSTANCE);
    }

    private static void mergeFromInstance(J j4, Object obj) {
        C0791z0 c0791z0 = C0791z0.f8727c;
        c0791z0.getClass();
        c0791z0.a(j4.getClass()).a(j4, obj);
    }

    public final J build() {
        J buildPartial = buildPartial();
        buildPartial.getClass();
        if (J.isInitialized(buildPartial, true)) {
            return buildPartial;
        }
        throw new UninitializedMessageException();
    }

    public final J buildPartial() {
        if (this.instance.isMutable()) {
            this.instance.makeImmutable();
            return this.instance;
        }
        return this.instance;
    }

    public final Object clone() {
        E e4 = (E) this.defaultInstance.dynamicMethod(GeneratedMessageLite$MethodToInvoke.NEW_BUILDER);
        e4.instance = buildPartial();
        return e4;
    }

    public final void copyOnWrite() {
        if (this.instance.isMutable()) {
            return;
        }
        J j4 = (J) this.defaultInstance.dynamicMethod(GeneratedMessageLite$MethodToInvoke.NEW_MUTABLE_INSTANCE);
        mergeFromInstance(j4, this.instance);
        this.instance = j4;
    }

    @Override // com.google.protobuf.InterfaceC0774q0
    public final J getDefaultInstanceForType$1() {
        return this.defaultInstance;
    }

    @Override // com.google.protobuf.InterfaceC0774q0
    public final boolean isInitialized() {
        return J.isInitialized(this.instance, false);
    }

    public final void mergeFrom(J j4) {
        if (this.defaultInstance.equals(j4)) {
            return;
        }
        copyOnWrite();
        mergeFromInstance(this.instance, j4);
    }
}
