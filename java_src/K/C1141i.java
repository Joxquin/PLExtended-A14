package k;

import android.content.Context;
import android.view.View;
import j.C1070A;
import j.C1097o;
import j.SubMenuC1081L;
/* renamed from: k.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1141i extends C1070A {

    /* renamed from: m  reason: collision with root package name */
    public final /* synthetic */ int f10901m = 0;

    /* renamed from: n  reason: collision with root package name */
    public final /* synthetic */ C1151n f10902n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1141i(C1151n c1151n, Context context, C1097o c1097o, C1149m c1149m) {
        super(context, c1097o, c1149m, true);
        this.f10902n = c1151n;
        this.f10461g = 8388613;
        C1143j c1143j = c1151n.f10944x;
        this.f10463i = c1143j;
        j.y yVar = this.f10464j;
        if (yVar != null) {
            yVar.i(c1143j);
        }
    }

    @Override // j.C1070A
    public final void c() {
        int i4 = this.f10901m;
        C1151n c1151n = this.f10902n;
        switch (i4) {
            case 0:
                c1151n.f10941u = null;
                super.c();
                return;
            default:
                C1097o c1097o = c1151n.f10926f;
                if (c1097o != null) {
                    c1097o.c(true);
                }
                c1151n.f10940t = null;
                super.c();
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1141i(C1151n c1151n, Context context, SubMenuC1081L subMenuC1081L, View view) {
        super(context, subMenuC1081L, view, false);
        this.f10902n = c1151n;
        if (!subMenuC1081L.f10491B.f()) {
            View view2 = c1151n.f10932l;
            this.f10460f = view2 == null ? (View) c1151n.f10931k : view2;
        }
        C1143j c1143j = c1151n.f10944x;
        this.f10463i = c1143j;
        j.y yVar = this.f10464j;
        if (yVar != null) {
            yVar.i(c1143j);
        }
    }
}
