package r0;

import com.airbnb.lottie.model.content.ShapeStroke$LineCapType;
import com.airbnb.lottie.model.content.ShapeStroke$LineJoinType;
import java.util.List;
import m0.InterfaceC1303d;
import m0.u;
import q0.C1359a;
import q0.C1360b;
/* loaded from: classes.dex */
public final class q implements InterfaceC1372c {

    /* renamed from: a  reason: collision with root package name */
    public final String f12141a;

    /* renamed from: b  reason: collision with root package name */
    public final C1360b f12142b;

    /* renamed from: c  reason: collision with root package name */
    public final List f12143c;

    /* renamed from: d  reason: collision with root package name */
    public final C1359a f12144d;

    /* renamed from: e  reason: collision with root package name */
    public final q0.d f12145e;

    /* renamed from: f  reason: collision with root package name */
    public final C1360b f12146f;

    /* renamed from: g  reason: collision with root package name */
    public final ShapeStroke$LineCapType f12147g;

    /* renamed from: h  reason: collision with root package name */
    public final ShapeStroke$LineJoinType f12148h;

    /* renamed from: i  reason: collision with root package name */
    public final float f12149i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f12150j;

    public q(String str, C1360b c1360b, List list, C1359a c1359a, q0.d dVar, C1360b c1360b2, ShapeStroke$LineCapType shapeStroke$LineCapType, ShapeStroke$LineJoinType shapeStroke$LineJoinType, float f4, boolean z4) {
        this.f12141a = str;
        this.f12142b = c1360b;
        this.f12143c = list;
        this.f12144d = c1359a;
        this.f12145e = dVar;
        this.f12146f = c1360b2;
        this.f12147g = shapeStroke$LineCapType;
        this.f12148h = shapeStroke$LineJoinType;
        this.f12149i = f4;
        this.f12150j = z4;
    }

    @Override // r0.InterfaceC1372c
    public final InterfaceC1303d a(com.airbnb.lottie.a aVar, s0.b bVar) {
        return new u(aVar, bVar, this);
    }
}
