package B0;

import com.google.protobuf.A0;
import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
import com.google.protobuf.S;
/* loaded from: classes.dex */
public final class f extends J implements InterfaceC0774q0 {
    public static final int ALPHA_FIELD_NUMBER = 15;
    public static final int CHILDREN_FIELD_NUMBER = 3;
    public static final int CLASSNAME_INDEX_FIELD_NUMBER = 1;
    public static final int CLIPCHILDREN_FIELD_NUMBER = 17;
    private static final f DEFAULT_INSTANCE;
    public static final int ELEVATION_FIELD_NUMBER = 19;
    public static final int HASHCODE_FIELD_NUMBER = 2;
    public static final int HEIGHT_FIELD_NUMBER = 8;
    public static final int ID_FIELD_NUMBER = 4;
    public static final int LEFT_FIELD_NUMBER = 5;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SCALEX_FIELD_NUMBER = 13;
    public static final int SCALEY_FIELD_NUMBER = 14;
    public static final int SCROLLX_FIELD_NUMBER = 9;
    public static final int SCROLLY_FIELD_NUMBER = 10;
    public static final int TOP_FIELD_NUMBER = 6;
    public static final int TRANSLATIONX_FIELD_NUMBER = 11;
    public static final int TRANSLATIONY_FIELD_NUMBER = 12;
    public static final int VISIBILITY_FIELD_NUMBER = 18;
    public static final int WIDTH_FIELD_NUMBER = 7;
    public static final int WILLNOTDRAW_FIELD_NUMBER = 16;
    private int bitField0_;
    private int classnameIndex_;
    private boolean clipChildren_;
    private float elevation_;
    private int hashcode_;
    private int height_;
    private int left_;
    private int scrollX_;
    private int scrollY_;
    private int top_;
    private float translationX_;
    private float translationY_;
    private int visibility_;
    private int width_;
    private boolean willNotDraw_;
    private S children_ = A0.f8494g;
    private String id_ = "";
    private float scaleX_ = 1.0f;
    private float scaleY_ = 1.0f;
    private float alpha_ = 1.0f;

    static {
        f fVar = new f();
        DEFAULT_INSTANCE = fVar;
        J.registerDefaultInstance(f.class, fVar);
    }

    public static void b(f fVar, int i4) {
        fVar.bitField0_ |= 1;
        fVar.classnameIndex_ = i4;
    }

    public static void c(f fVar, String str) {
        fVar.getClass();
        str.getClass();
        fVar.bitField0_ |= 4;
        fVar.id_ = str;
    }

    public static void d(f fVar, int i4) {
        fVar.bitField0_ |= 8;
        fVar.left_ = i4;
    }

    public static void e(f fVar, int i4) {
        fVar.bitField0_ |= 16;
        fVar.top_ = i4;
    }

    public static void f(f fVar, int i4) {
        fVar.bitField0_ |= 32;
        fVar.width_ = i4;
    }

    public static void g(f fVar, int i4) {
        fVar.bitField0_ |= 64;
        fVar.height_ = i4;
    }

    public static void h(f fVar, int i4) {
        fVar.bitField0_ |= 128;
        fVar.scrollX_ = i4;
    }

    public static void i(f fVar, int i4) {
        fVar.bitField0_ |= 256;
        fVar.scrollY_ = i4;
    }

    public static void j(f fVar, float f4) {
        fVar.bitField0_ |= 512;
        fVar.translationX_ = f4;
    }

    public static void k(f fVar, float f4) {
        fVar.bitField0_ |= 1024;
        fVar.translationY_ = f4;
    }

    public static void l(f fVar, int i4) {
        fVar.bitField0_ |= 2;
        fVar.hashcode_ = i4;
    }

    public static void m(f fVar, float f4) {
        fVar.bitField0_ |= 2048;
        fVar.scaleX_ = f4;
    }

    public static void n(f fVar, float f4) {
        fVar.bitField0_ |= 4096;
        fVar.scaleY_ = f4;
    }

    public static void o(f fVar, float f4) {
        fVar.bitField0_ |= 8192;
        fVar.alpha_ = f4;
    }

    public static void p(f fVar, boolean z4) {
        fVar.bitField0_ |= 16384;
        fVar.willNotDraw_ = z4;
    }

    public static void q(f fVar, boolean z4) {
        fVar.bitField0_ |= 32768;
        fVar.clipChildren_ = z4;
    }

    public static void r(f fVar, int i4) {
        fVar.bitField0_ |= 65536;
        fVar.visibility_ = i4;
    }

    public static void s(f fVar, float f4) {
        fVar.bitField0_ |= 131072;
        fVar.elevation_ = f4;
    }

    public static void t(f fVar, f fVar2) {
        fVar.getClass();
        S s4 = fVar.children_;
        if (!s4.g()) {
            fVar.children_ = J.mutableCopy(s4);
        }
        fVar.children_.add(fVar2);
    }

    public static e u() {
        return (e) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0001\u0000\u0001င\u0000\u0002င\u0001\u0003\u001b\u0004ဈ\u0002\u0005င\u0003\u0006င\u0004\u0007င\u0005\bင\u0006\tင\u0007\nင\b\u000bခ\t\fခ\n\rခ\u000b\u000eခ\f\u000fခ\r\u0010ဇ\u000e\u0011ဇ\u000f\u0012င\u0010\u0013ခ\u0011", new Object[]{"bitField0_", "classnameIndex_", "hashcode_", "children_", f.class, "id_", "left_", "top_", "width_", "height_", "scrollX_", "scrollY_", "translationX_", "translationY_", "scaleX_", "scaleY_", "alpha_", "willNotDraw_", "clipChildren_", "visibility_", "elevation_"});
            case 3:
                return new f();
            case 4:
                return new e();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (f.class) {
                        interfaceC0787x0 = PARSER;
                        if (interfaceC0787x0 == null) {
                            interfaceC0787x0 = new F(DEFAULT_INSTANCE);
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
