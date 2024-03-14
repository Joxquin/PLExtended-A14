package androidx.dynamicanimation.animation;

import android.view.View;
import androidx.core.view.D;
import androidx.core.view.J;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class h extends l {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f3180a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h(String str, int i4) {
        super(str);
        this.f3180a = i4;
    }

    public final float a(View view) {
        switch (this.f3180a) {
            case 0:
                return view.getY();
            case 1:
                WeakHashMap weakHashMap = J.f3079a;
                return D.g(view);
            case 2:
                return view.getAlpha();
            case 3:
                return view.getScrollX();
            case 4:
                return view.getScrollY();
            case 5:
                return view.getTranslationX();
            case 6:
                return view.getTranslationY();
            case 7:
                WeakHashMap weakHashMap2 = J.f3079a;
                return D.f(view);
            case 8:
                return view.getScaleX();
            case 9:
                return view.getScaleY();
            case 10:
                return view.getRotation();
            case 11:
                return view.getRotationX();
            case 12:
                return view.getRotationY();
            default:
                return view.getX();
        }
    }

    public final void b(View view, float f4) {
        switch (this.f3180a) {
            case 0:
                view.setY(f4);
                return;
            case 1:
                WeakHashMap weakHashMap = J.f3079a;
                D.o(view, f4);
                return;
            case 2:
                view.setAlpha(f4);
                return;
            case 3:
                view.setScrollX((int) f4);
                return;
            case 4:
                view.setScrollY((int) f4);
                return;
            case 5:
                view.setTranslationX(f4);
                return;
            case 6:
                view.setTranslationY(f4);
                return;
            case 7:
                WeakHashMap weakHashMap2 = J.f3079a;
                D.n(view, f4);
                return;
            case 8:
                view.setScaleX(f4);
                return;
            case 9:
                view.setScaleY(f4);
                return;
            case 10:
                view.setRotation(f4);
                return;
            case 11:
                view.setRotationX(f4);
                return;
            case 12:
                view.setRotationY(f4);
                return;
            default:
                view.setX(f4);
                return;
        }
    }

    @Override // androidx.dynamicanimation.animation.q
    public final /* bridge */ /* synthetic */ float getValue(Object obj) {
        switch (this.f3180a) {
            case 0:
                return a((View) obj);
            case 1:
                return a((View) obj);
            case 2:
                return a((View) obj);
            case 3:
                return a((View) obj);
            case 4:
                return a((View) obj);
            case 5:
                return a((View) obj);
            case 6:
                return a((View) obj);
            case 7:
                return a((View) obj);
            case 8:
                return a((View) obj);
            case 9:
                return a((View) obj);
            case 10:
                return a((View) obj);
            case 11:
                return a((View) obj);
            case 12:
                return a((View) obj);
            default:
                return a((View) obj);
        }
    }

    @Override // androidx.dynamicanimation.animation.q
    public final /* bridge */ /* synthetic */ void setValue(Object obj, float f4) {
        switch (this.f3180a) {
            case 0:
                b((View) obj, f4);
                return;
            case 1:
                b((View) obj, f4);
                return;
            case 2:
                b((View) obj, f4);
                return;
            case 3:
                b((View) obj, f4);
                return;
            case 4:
                b((View) obj, f4);
                return;
            case 5:
                b((View) obj, f4);
                return;
            case 6:
                b((View) obj, f4);
                return;
            case 7:
                b((View) obj, f4);
                return;
            case 8:
                b((View) obj, f4);
                return;
            case 9:
                b((View) obj, f4);
                return;
            case 10:
                b((View) obj, f4);
                return;
            case 11:
                b((View) obj, f4);
                return;
            case 12:
                b((View) obj, f4);
                return;
            default:
                b((View) obj, f4);
                return;
        }
    }
}
