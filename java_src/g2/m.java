package g2;

import com.google.protobuf.B0;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class m extends J implements InterfaceC0774q0 {
    private static final m DEFAULT_INSTANCE;
    public static final int ENTRY_POINT_FIELD_NUMBER = 4;
    public static final int ICON_SIZE_FIELD_NUMBER = 7;
    public static final int INITIATE_ASSET_DOWNLOAD_FIELD_NUMBER = 3;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int RAW_QUERY_FIELD_NUMBER = 2;
    public static final int REQUEST_CONTEXT_FIELD_NUMBER = 1;
    public static final int REQUEST_TIMESTAMP_MS_FIELD_NUMBER = 5;
    public static final int RESULT_COUNT_FIELD_NUMBER = 6;
    private int bitField0_;
    private int entryPoint_;
    private int iconSize_;
    private boolean initiateAssetDownload_;
    private String rawQuery_ = "";
    private B requestContext_;
    private long requestTimestampMs_;
    private int resultCount_;

    static {
        m mVar = new m();
        DEFAULT_INSTANCE = mVar;
        J.registerDefaultInstance(m.class, mVar);
    }

    public static void a(m mVar, int i4) {
        mVar.bitField0_ |= 64;
        mVar.iconSize_ = i4;
    }

    public static void b(m mVar) {
        mVar.bitField0_ |= 4;
        mVar.initiateAssetDownload_ = true;
    }

    public static void c(m mVar, String str) {
        mVar.getClass();
        str.getClass();
        mVar.bitField0_ |= 2;
        mVar.rawQuery_ = str;
    }

    public static void d(m mVar, B b4) {
        mVar.getClass();
        mVar.requestContext_ = b4;
        mVar.bitField0_ |= 1;
    }

    public static void e(m mVar, long j4) {
        mVar.bitField0_ |= 16;
        mVar.requestTimestampMs_ = j4;
    }

    public static void f(m mVar, int i4) {
        mVar.bitField0_ |= 32;
        mVar.resultCount_ = i4;
    }

    public static m h() {
        return DEFAULT_INSTANCE;
    }

    public static l i() {
        return (l) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဈ\u0001\u0003ဇ\u0002\u0004ဌ\u0003\u0005ဃ\u0004\u0006င\u0005\u0007င\u0006", new Object[]{"bitField0_", "requestContext_", "rawQuery_", "initiateAssetDownload_", "entryPoint_", C0960g.f9474a, "requestTimestampMs_", "resultCount_", "iconSize_"});
            case 3:
                return new m();
            case 4:
                return new l();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (m.class) {
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
