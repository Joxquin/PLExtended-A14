package j0;

import android.view.View;
import java.util.Comparator;
/* renamed from: j0.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1099b implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f10636a;

    public /* synthetic */ C1099b(int i4) {
        this.f10636a = i4;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f10636a) {
            case 0:
                return ((C1104g) obj).f10641b - ((C1104g) obj2).f10641b;
            default:
                C1105h c1105h = (C1105h) ((View) obj).getLayoutParams();
                C1105h c1105h2 = (C1105h) ((View) obj2).getLayoutParams();
                boolean z4 = c1105h.f10645a;
                return z4 != c1105h2.f10645a ? z4 ? 1 : -1 : c1105h.f10649e - c1105h2.f10649e;
        }
    }
}
