package com.android.systemui.monet;

import com.android.internal.graphics.cam.Cam;
import java.util.List;
import kotlin.Pair;
import l1.C1267b;
import l1.C1270e;
import l1.C1272g;
import l1.C1275j;
import l1.C1281p;
import l1.C1282q;
import l1.C1286u;
import l1.InterfaceC1266a;
import l1.InterfaceC1277l;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum EF8 uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class Style {

    /* renamed from: d  reason: collision with root package name */
    public static final Style f6163d;

    /* renamed from: e  reason: collision with root package name */
    public static final Style f6164e;

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ Style[] f6165f;
    private final C1275j coreSpec;
    /* JADX INFO: Fake field, exist only in values array */
    Style EF0;
    /* JADX INFO: Fake field, exist only in values array */
    Style EF2;
    /* JADX INFO: Fake field, exist only in values array */
    Style EF3;
    /* JADX INFO: Fake field, exist only in values array */
    Style EF4;
    /* JADX INFO: Fake field, exist only in values array */
    Style EF5;
    /* JADX INFO: Fake field, exist only in values array */
    Style EF7;
    /* JADX INFO: Fake field, exist only in values array */
    Style EF8;

    static {
        Style style = new Style("SPRITZ", 0, new C1275j(new C1286u(new C1281p(), new InterfaceC1266a(12.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(8.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(16.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(2.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(2.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        })));
        Style style2 = new Style("TONAL_SPOT", 1, new C1275j(new C1286u(new C1281p(), new InterfaceC1266a(36.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(16.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new InterfaceC1277l(60.0d) { // from class: l1.m

            /* renamed from: a  reason: collision with root package name */
            public final double f11547a;

            {
                this.f11547a = r1;
            }

            @Override // l1.InterfaceC1277l
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                double hue = sourceColor.getHue() + this.f11547a;
                if (hue >= 0.0d) {
                    return hue >= 360.0d ? hue % 360 : hue;
                }
                double d4 = 360;
                return (hue % d4) + d4;
            }
        }, new InterfaceC1266a(24.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(6.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(8.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        })));
        f6163d = style2;
        Style style3 = new Style("VIBRANT", 2, new C1275j(new C1286u(new C1281p(), new C1270e()), new C1286u(new InterfaceC1277l() { // from class: l1.r

            /* renamed from: a  reason: collision with root package name */
            public final List f11550a = kotlin.collections.n.c(new Pair(0, 18), new Pair(41, 15), new Pair(61, 10), new Pair(101, 12), new Pair(131, 15), new Pair(181, 18), new Pair(251, 15), new Pair(301, 12), new Pair(360, 12));

            @Override // l1.InterfaceC1277l
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return C1276k.a(sourceColor.getHue(), this.f11550a);
            }
        }, new InterfaceC1266a(24.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new InterfaceC1277l() { // from class: l1.s

            /* renamed from: a  reason: collision with root package name */
            public final List f11551a = kotlin.collections.n.c(new Pair(0, 35), new Pair(41, 30), new Pair(61, 20), new Pair(101, 25), new Pair(131, 30), new Pair(181, 35), new Pair(251, 30), new Pair(301, 25), new Pair(360, 25));

            @Override // l1.InterfaceC1277l
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return C1276k.a(sourceColor.getHue(), this.f11551a);
            }
        }, new InterfaceC1266a(32.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(10.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(12.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        })));
        Style style4 = new Style("EXPRESSIVE", 3, new C1275j(new C1286u(new InterfaceC1277l(240.0d) { // from class: l1.m

            /* renamed from: a  reason: collision with root package name */
            public final double f11547a;

            {
                this.f11547a = r1;
            }

            @Override // l1.InterfaceC1277l
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                double hue = sourceColor.getHue() + this.f11547a;
                if (hue >= 0.0d) {
                    return hue >= 360.0d ? hue % 360 : hue;
                }
                double d4 = 360;
                return (hue % d4) + d4;
            }
        }, new InterfaceC1266a(40.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new InterfaceC1277l() { // from class: l1.n

            /* renamed from: a  reason: collision with root package name */
            public final List f11548a = kotlin.collections.n.c(new Pair(0, 45), new Pair(21, 95), new Pair(51, 45), new Pair(121, 20), new Pair(151, 45), new Pair(191, 90), new Pair(271, 45), new Pair(321, 45), new Pair(360, 45));

            @Override // l1.InterfaceC1277l
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return C1276k.a(sourceColor.getHue(), this.f11548a);
            }
        }, new InterfaceC1266a(24.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new InterfaceC1277l() { // from class: l1.o

            /* renamed from: a  reason: collision with root package name */
            public final List f11549a = kotlin.collections.n.c(new Pair(0, 120), new Pair(21, 120), new Pair(51, 20), new Pair(121, 45), new Pair(151, 20), new Pair(191, 15), new Pair(271, 20), new Pair(321, 120), new Pair(360, 120));

            @Override // l1.InterfaceC1277l
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return C1276k.a(sourceColor.getHue(), this.f11549a);
            }
        }, new InterfaceC1266a(32.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new InterfaceC1277l(15.0d) { // from class: l1.m

            /* renamed from: a  reason: collision with root package name */
            public final double f11547a;

            {
                this.f11547a = r1;
            }

            @Override // l1.InterfaceC1277l
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                double hue = sourceColor.getHue() + this.f11547a;
                if (hue >= 0.0d) {
                    return hue >= 360.0d ? hue % 360 : hue;
                }
                double d4 = 360;
                return (hue % d4) + d4;
            }
        }, new InterfaceC1266a(8.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new InterfaceC1277l(15.0d) { // from class: l1.m

            /* renamed from: a  reason: collision with root package name */
            public final double f11547a;

            {
                this.f11547a = r1;
            }

            @Override // l1.InterfaceC1277l
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                double hue = sourceColor.getHue() + this.f11547a;
                if (hue >= 0.0d) {
                    return hue >= 360.0d ? hue % 360 : hue;
                }
                double d4 = 360;
                return (hue % d4) + d4;
            }
        }, new InterfaceC1266a(12.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        })));
        Style style5 = new Style("RAINBOW", 4, new C1275j(new C1286u(new C1281p(), new InterfaceC1266a(48.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(16.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new InterfaceC1277l(60.0d) { // from class: l1.m

            /* renamed from: a  reason: collision with root package name */
            public final double f11547a;

            {
                this.f11547a = r1;
            }

            @Override // l1.InterfaceC1277l
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                double hue = sourceColor.getHue() + this.f11547a;
                if (hue >= 0.0d) {
                    return hue >= 360.0d ? hue % 360 : hue;
                }
                double d4 = 360;
                return (hue % d4) + d4;
            }
        }, new InterfaceC1266a(24.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(0.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(0.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        })));
        Style style6 = new Style("FRUIT_SALAD", 5, new C1275j(new C1286u(new C1282q(), new InterfaceC1266a(48.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1282q(), new InterfaceC1266a(36.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(36.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(10.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(16.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        })));
        Style style7 = new Style("CONTENT", 6, new C1275j(new C1286u(new C1281p(), new C1272g()), new C1286u(new C1281p(), new InterfaceC1266a(0.33d) { // from class: l1.f

            /* renamed from: a  reason: collision with root package name */
            public final double f11533a;

            {
                this.f11533a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return sourceColor.getChroma() * this.f11533a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(0.66d) { // from class: l1.f

            /* renamed from: a  reason: collision with root package name */
            public final double f11533a;

            {
                this.f11533a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return sourceColor.getChroma() * this.f11533a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(0.0833d) { // from class: l1.f

            /* renamed from: a  reason: collision with root package name */
            public final double f11533a;

            {
                this.f11533a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return sourceColor.getChroma() * this.f11533a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(0.1666d) { // from class: l1.f

            /* renamed from: a  reason: collision with root package name */
            public final double f11533a;

            {
                this.f11533a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return sourceColor.getChroma() * this.f11533a;
            }
        })));
        f6164e = style7;
        Style style8 = new Style("MONOCHROMATIC", 7, new C1275j(new C1286u(new C1281p(), new InterfaceC1266a(0.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(0.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(0.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(0.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(0.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        })));
        C1281p c1281p = new C1281p();
        final C1272g c1272g = new C1272g();
        C1286u c1286u = new C1286u(c1281p, new InterfaceC1266a(c1272g, 20.0d, 120.0d) { // from class: l1.c

            /* renamed from: a  reason: collision with root package name */
            public final InterfaceC1266a f11529a;

            /* renamed from: b  reason: collision with root package name */
            public final double f11530b;

            /* renamed from: c  reason: collision with root package name */
            public final double f11531c;

            {
                this.f11529a = c1272g;
                this.f11530b = r2;
                this.f11531c = r4;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return Math.min(Math.max(this.f11529a.a(sourceColor), this.f11530b), this.f11531c);
            }
        });
        InterfaceC1277l interfaceC1277l = new InterfaceC1277l(10.0d) { // from class: l1.m

            /* renamed from: a  reason: collision with root package name */
            public final double f11547a;

            {
                this.f11547a = r1;
            }

            @Override // l1.InterfaceC1277l
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                double hue = sourceColor.getHue() + this.f11547a;
                if (hue >= 0.0d) {
                    return hue >= 360.0d ? hue % 360 : hue;
                }
                double d4 = 360;
                return (hue % d4) + d4;
            }
        };
        final InterfaceC1266a interfaceC1266a = new InterfaceC1266a(0.85d) { // from class: l1.f

            /* renamed from: a  reason: collision with root package name */
            public final double f11533a;

            {
                this.f11533a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return sourceColor.getChroma() * this.f11533a;
            }
        };
        C1286u c1286u2 = new C1286u(interfaceC1277l, new InterfaceC1266a(interfaceC1266a, 17.0d, 40.0d) { // from class: l1.c

            /* renamed from: a  reason: collision with root package name */
            public final InterfaceC1266a f11529a;

            /* renamed from: b  reason: collision with root package name */
            public final double f11530b;

            /* renamed from: c  reason: collision with root package name */
            public final double f11531c;

            {
                this.f11529a = interfaceC1266a;
                this.f11530b = r2;
                this.f11531c = r4;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return Math.min(Math.max(this.f11529a.a(sourceColor), this.f11530b), this.f11531c);
            }
        });
        InterfaceC1277l interfaceC1277l2 = new InterfaceC1277l(20.0d) { // from class: l1.m

            /* renamed from: a  reason: collision with root package name */
            public final double f11547a;

            {
                this.f11547a = r1;
            }

            @Override // l1.InterfaceC1277l
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                double hue = sourceColor.getHue() + this.f11547a;
                if (hue >= 0.0d) {
                    return hue >= 360.0d ? hue % 360 : hue;
                }
                double d4 = 360;
                return (hue % d4) + d4;
            }
        };
        final C1267b c1267b = new C1267b();
        Style style9 = new Style("CLOCK", 8, new C1275j(c1286u, c1286u2, new C1286u(interfaceC1277l2, new InterfaceC1266a(c1267b, 50.0d, 120.0d) { // from class: l1.c

            /* renamed from: a  reason: collision with root package name */
            public final InterfaceC1266a f11529a;

            /* renamed from: b  reason: collision with root package name */
            public final double f11530b;

            /* renamed from: c  reason: collision with root package name */
            public final double f11531c;

            {
                this.f11529a = c1267b;
                this.f11530b = r2;
                this.f11531c = r4;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return Math.min(Math.max(this.f11529a.a(sourceColor), this.f11530b), this.f11531c);
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(0.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(0.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        })));
        C1281p c1281p2 = new C1281p();
        final C1272g c1272g2 = new C1272g();
        C1286u c1286u3 = new C1286u(c1281p2, new InterfaceC1266a(c1272g2, 70.0d, 120.0d) { // from class: l1.c

            /* renamed from: a  reason: collision with root package name */
            public final InterfaceC1266a f11529a;

            /* renamed from: b  reason: collision with root package name */
            public final double f11530b;

            /* renamed from: c  reason: collision with root package name */
            public final double f11531c;

            {
                this.f11529a = c1272g2;
                this.f11530b = r2;
                this.f11531c = r4;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return Math.min(Math.max(this.f11529a.a(sourceColor), this.f11530b), this.f11531c);
            }
        });
        InterfaceC1277l interfaceC1277l3 = new InterfaceC1277l(20.0d) { // from class: l1.m

            /* renamed from: a  reason: collision with root package name */
            public final double f11547a;

            {
                this.f11547a = r1;
            }

            @Override // l1.InterfaceC1277l
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                double hue = sourceColor.getHue() + this.f11547a;
                if (hue >= 0.0d) {
                    return hue >= 360.0d ? hue % 360 : hue;
                }
                double d4 = 360;
                return (hue % d4) + d4;
            }
        };
        final C1272g c1272g3 = new C1272g();
        C1286u c1286u4 = new C1286u(interfaceC1277l3, new InterfaceC1266a(c1272g3, 70.0d, 120.0d) { // from class: l1.c

            /* renamed from: a  reason: collision with root package name */
            public final InterfaceC1266a f11529a;

            /* renamed from: b  reason: collision with root package name */
            public final double f11530b;

            /* renamed from: c  reason: collision with root package name */
            public final double f11531c;

            {
                this.f11529a = c1272g3;
                this.f11530b = r2;
                this.f11531c = r4;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return Math.min(Math.max(this.f11529a.a(sourceColor), this.f11530b), this.f11531c);
            }
        });
        InterfaceC1277l interfaceC1277l4 = new InterfaceC1277l(60.0d) { // from class: l1.m

            /* renamed from: a  reason: collision with root package name */
            public final double f11547a;

            {
                this.f11547a = r1;
            }

            @Override // l1.InterfaceC1277l
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                double hue = sourceColor.getHue() + this.f11547a;
                if (hue >= 0.0d) {
                    return hue >= 360.0d ? hue % 360 : hue;
                }
                double d4 = 360;
                return (hue % d4) + d4;
            }
        };
        final C1272g c1272g4 = new C1272g();
        f6165f = new Style[]{style, style2, style3, style4, style5, style6, style7, style8, style9, new Style("CLOCK_VIBRANT", 9, new C1275j(c1286u3, c1286u4, new C1286u(interfaceC1277l4, new InterfaceC1266a(c1272g4, 70.0d, 120.0d) { // from class: l1.c

            /* renamed from: a  reason: collision with root package name */
            public final InterfaceC1266a f11529a;

            /* renamed from: b  reason: collision with root package name */
            public final double f11530b;

            /* renamed from: c  reason: collision with root package name */
            public final double f11531c;

            {
                this.f11529a = c1272g4;
                this.f11530b = r2;
                this.f11531c = r4;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return Math.min(Math.max(this.f11529a.a(sourceColor), this.f11530b), this.f11531c);
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(0.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        }), new C1286u(new C1281p(), new InterfaceC1266a(0.0d) { // from class: l1.d

            /* renamed from: a  reason: collision with root package name */
            public final double f11532a;

            {
                this.f11532a = r1;
            }

            @Override // l1.InterfaceC1266a
            public final double a(Cam sourceColor) {
                kotlin.jvm.internal.h.e(sourceColor, "sourceColor");
                return this.f11532a;
            }
        })))};
    }

    public Style(String str, int i4, C1275j c1275j) {
        this.coreSpec = c1275j;
    }

    public static Style valueOf(String str) {
        return (Style) Enum.valueOf(Style.class, str);
    }

    public static Style[] values() {
        return (Style[]) f6165f.clone();
    }

    public final C1275j a() {
        return this.coreSpec;
    }
}
