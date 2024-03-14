package V1;

import L1.A;
import L1.B;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class b extends Q.c {

    /* renamed from: d  reason: collision with root package name */
    public final int[] f1805d;

    /* renamed from: e  reason: collision with root package name */
    public final Rect f1806e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ c f1807f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(c cVar, B b4) {
        super(b4);
        this.f1807f = cVar;
        this.f1805d = new int[2];
        this.f1806e = new Rect();
    }

    @Override // Q.c
    public final int getVirtualViewAt(float f4, float f5) {
        Iterator it = this.f1807f.f1811d.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar.f1803b.contains(f4, f5)) {
                return aVar.f1802a;
            }
        }
        return Integer.MIN_VALUE;
    }

    @Override // Q.c
    public final void getVisibleVirtualViews(List list) {
        Iterator it = this.f1807f.f1811d.iterator();
        while (it.hasNext()) {
            ((ArrayList) list).add(Integer.valueOf(((a) it.next()).f1802a));
        }
    }

    @Override // Q.c
    public final boolean onPerformActionForVirtualView(int i4, int i5) {
        if (i5 == 16) {
            c cVar = this.f1807f;
            Iterator it = cVar.f1811d.iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                if (aVar.f1802a == i4) {
                    A a4 = cVar.f1808a;
                    if (a4 != null) {
                        RectF rectF = aVar.f1803b;
                        a4.a(rectF.centerX(), rectF.centerY());
                        return true;
                    }
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // Q.c
    public final void onPopulateNodeForVirtualView(int i4, M.e eVar) {
        c cVar = this.f1807f;
        Iterator it = cVar.f1811d.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar.f1802a == i4) {
                BaseDragLayer dragLayer = ((ActivityContext) ActivityContext.lookupContext(cVar.f1812e)).getDragLayer();
                int[] iArr = this.f1805d;
                iArr[1] = 0;
                iArr[0] = 0;
                float descendantCoordRelativeToSelf = dragLayer.getDescendantCoordRelativeToSelf((View) cVar.f1810c, iArr);
                RectF rectF = aVar.f1803b;
                Rect rect = this.f1806e;
                rectF.round(rect);
                eVar.g(rect);
                int i5 = iArr[0];
                rect.left = ((int) (rect.left * descendantCoordRelativeToSelf)) + i5;
                rect.right = i5 + ((int) (rect.right * descendantCoordRelativeToSelf));
                int i6 = iArr[1];
                rect.top = ((int) (rect.top * descendantCoordRelativeToSelf)) + i6;
                rect.bottom = i6 + ((int) (rect.bottom * descendantCoordRelativeToSelf));
                eVar.f1349a.setBoundsInScreen(rect);
                eVar.k(aVar.f1804c);
                eVar.b(M.c.f1334e);
                return;
            }
        }
    }
}
