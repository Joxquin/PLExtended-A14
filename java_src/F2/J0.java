package f2;

import com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchEntryPoint;
import com.google.protobuf.AbstractC0743b;
import com.google.protobuf.AbstractC0745c;
import com.google.protobuf.C0748d0;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class J0 extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final J0 DEFAULT_INSTANCE;
    public static final int ENTRY_POINT_FIELD_NUMBER = 6;
    public static final int FIRST_EDIT_TIME_MS_FIELD_NUMBER = 2;
    public static final int LAST_EDIT_TIME_MS_FIELD_NUMBER = 3;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int QUERY_CLEAR_TAP_TIMES_MS_FIELD_NUMBER = 5;
    public static final int SUGGESTIONS_FIELD_NUMBER = 1;
    public static final int SUGGESTION_LONG_PRESS_TIMES_MS_FIELD_NUMBER = 4;
    private int bitField0_;
    private int entryPoint_;
    private long firstEditTimeMs_;
    private long lastEditTimeMs_;
    private com.google.protobuf.Q queryClearTapTimesMs_;
    private com.google.protobuf.Q suggestionLongPressTimesMs_;
    private int suggestionLongPressTimesMsMemoizedSerializedSize = -1;
    private int queryClearTapTimesMsMemoizedSerializedSize = -1;
    private com.google.protobuf.S suggestions_ = com.google.protobuf.A0.f8494g;

    static {
        J0 j02 = new J0();
        DEFAULT_INSTANCE = j02;
        com.google.protobuf.J.registerDefaultInstance(J0.class, j02);
    }

    public J0() {
        C0748d0 c0748d0 = C0748d0.f8631g;
        this.suggestionLongPressTimesMs_ = c0748d0;
        this.queryClearTapTimesMs_ = c0748d0;
    }

    public static void a(J0 j02, Iterable iterable) {
        com.google.protobuf.Q q4 = j02.queryClearTapTimesMs_;
        if (!((AbstractC0745c) q4).f8626d) {
            C0748d0 c0748d0 = (C0748d0) q4;
            int i4 = c0748d0.f8633f;
            int i5 = i4 == 0 ? 10 : i4 * 2;
            if (i5 < i4) {
                throw new IllegalArgumentException();
            }
            j02.queryClearTapTimesMs_ = new C0748d0(Arrays.copyOf(c0748d0.f8632e, i5), c0748d0.f8633f);
        }
        AbstractC0743b.addAll(iterable, j02.queryClearTapTimesMs_);
    }

    public static void b(J0 j02, Iterable iterable) {
        com.google.protobuf.Q q4 = j02.suggestionLongPressTimesMs_;
        if (!((AbstractC0745c) q4).f8626d) {
            C0748d0 c0748d0 = (C0748d0) q4;
            int i4 = c0748d0.f8633f;
            int i5 = i4 == 0 ? 10 : i4 * 2;
            if (i5 < i4) {
                throw new IllegalArgumentException();
            }
            j02.suggestionLongPressTimesMs_ = new C0748d0(Arrays.copyOf(c0748d0.f8632e, i5), c0748d0.f8633f);
        }
        AbstractC0743b.addAll(iterable, j02.suggestionLongPressTimesMs_);
    }

    public static void c(J0 j02, Iterable iterable) {
        com.google.protobuf.S s4 = j02.suggestions_;
        if (!s4.g()) {
            j02.suggestions_ = com.google.protobuf.J.mutableCopy(s4);
        }
        AbstractC0743b.addAll(iterable, j02.suggestions_);
    }

    public static void d(J0 j02, OneSearchEntryPoint oneSearchEntryPoint) {
        j02.getClass();
        j02.entryPoint_ = oneSearchEntryPoint.getNumber();
        j02.bitField0_ |= 4;
    }

    public static void e(J0 j02, long j4) {
        j02.bitField0_ |= 1;
        j02.firstEditTimeMs_ = j4;
    }

    public static void f(J0 j02, long j4) {
        j02.bitField0_ |= 2;
        j02.lastEditTimeMs_ = j4;
    }

    public static J0 h() {
        return DEFAULT_INSTANCE;
    }

    public static I0 p() {
        return (I0) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0003\u0000\u0001\u001b\u0002ဃ\u0000\u0003ဃ\u0001\u0004&\u0005&\u0006ဌ\u0002", new Object[]{"bitField0_", "suggestions_", x0.class, "firstEditTimeMs_", "lastEditTimeMs_", "suggestionLongPressTimesMs_", "queryClearTapTimesMs_", "entryPoint_", C0877U.f9322a});
            case 3:
                return new J0();
            case 4:
                return new I0();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (J0.class) {
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

    public final OneSearchEntryPoint i() {
        OneSearchEntryPoint a4 = OneSearchEntryPoint.a(this.entryPoint_);
        return a4 == null ? OneSearchEntryPoint.ENTRY_POINT_UNKNOWN : a4;
    }

    public final long j() {
        return this.firstEditTimeMs_;
    }

    public final long k() {
        return this.lastEditTimeMs_;
    }

    public final int l() {
        return ((C0748d0) this.queryClearTapTimesMs_).f8633f;
    }

    public final int m() {
        return ((C0748d0) this.suggestionLongPressTimesMs_).f8633f;
    }

    public final x0 n(int i4) {
        return (x0) this.suggestions_.get(i4);
    }

    public final int o() {
        return this.suggestions_.size();
    }
}
