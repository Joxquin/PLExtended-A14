package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* renamed from: f2.e0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0892e0 extends com.google.protobuf.J implements InterfaceC0774q0 {
    public static final int ANNOTATION_FIELD_NUMBER = 2;
    private static final C0892e0 DEFAULT_INSTANCE;
    public static final int ENTITY_ID_FIELD_NUMBER = 3;
    public static final int NAME_FIELD_NUMBER = 1;
    private static volatile InterfaceC0787x0 PARSER;
    private int bitField0_;
    private String name_ = "";
    private String annotation_ = "";
    private String entityId_ = "";

    static {
        C0892e0 c0892e0 = new C0892e0();
        DEFAULT_INSTANCE = c0892e0;
        com.google.protobuf.J.registerDefaultInstance(C0892e0.class, c0892e0);
    }

    public static C0892e0 c() {
        return DEFAULT_INSTANCE;
    }

    public final String b() {
        return this.annotation_;
    }

    public final String d() {
        return this.name_;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002", new Object[]{"bitField0_", "name_", "annotation_", "entityId_"});
            case 3:
                return new C0892e0();
            case 4:
                return new C0886b0(3);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0892e0.class) {
                        interfaceC0787x0 = PARSER;
                        if (interfaceC0787x0 == null) {
                            interfaceC0787x0 = new com.google.protobuf.F(DEFAULT_INSTANCE);
                            PARSER = interfaceC0787x0;
                        }
                    }
                }
                return interfaceC0787x0;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
