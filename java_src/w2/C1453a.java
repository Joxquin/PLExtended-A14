package w2;

import android.util.Property;
import android.view.View;
import androidx.core.view.C0187y;
import androidx.core.view.J;
import java.util.WeakHashMap;
/* renamed from: w2.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1453a extends Property {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f12750a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1453a(String str, int i4) {
        super(Float.class, str);
        this.f12750a = i4;
    }

    public final Float a(View view) {
        switch (this.f12750a) {
            case 0:
                return Float.valueOf(view.getLayoutParams().width);
            case 1:
                return Float.valueOf(view.getLayoutParams().height);
            case 2:
                WeakHashMap weakHashMap = J.f3079a;
                return Float.valueOf(C0187y.e(view));
            default:
                WeakHashMap weakHashMap2 = J.f3079a;
                return Float.valueOf(C0187y.d(view));
        }
    }

    public final void b(View view, Float f4) {
        switch (this.f12750a) {
            case 0:
                view.getLayoutParams().width = f4.intValue();
                view.requestLayout();
                return;
            case 1:
                view.getLayoutParams().height = f4.intValue();
                view.requestLayout();
                return;
            case 2:
                int intValue = f4.intValue();
                int paddingTop = view.getPaddingTop();
                WeakHashMap weakHashMap = J.f3079a;
                C0187y.h(view, intValue, paddingTop, C0187y.d(view), view.getPaddingBottom());
                return;
            default:
                WeakHashMap weakHashMap2 = J.f3079a;
                C0187y.h(view, C0187y.e(view), view.getPaddingTop(), f4.intValue(), view.getPaddingBottom());
                return;
        }
    }

    @Override // android.util.Property
    public final /* bridge */ /* synthetic */ Object get(Object obj) {
        switch (this.f12750a) {
            case 0:
                return a((View) obj);
            case 1:
                return a((View) obj);
            case 2:
                return a((View) obj);
            default:
                return a((View) obj);
        }
    }

    @Override // android.util.Property
    public final /* bridge */ /* synthetic */ void set(Object obj, Object obj2) {
        switch (this.f12750a) {
            case 0:
                b((View) obj, (Float) obj2);
                return;
            case 1:
                b((View) obj, (Float) obj2);
                return;
            case 2:
                b((View) obj, (Float) obj2);
                return;
            default:
                b((View) obj, (Float) obj2);
                return;
        }
    }
}
