package O1;

import android.animation.ObjectAnimator;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.FloatProperty;
import com.android.launcher3.anim.AnimatedFloat;
import com.google.android.apps.nexuslauncher.customize.OptionsPopupDialog$PopupView;
import com.google.android.apps.nexuslauncher.customize.WallpaperCarouselView;
import java.util.Arrays;
import java.util.Collections;
/* renamed from: O1.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0075e implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f1445d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f1446e;

    public /* synthetic */ RunnableC0075e(int i4, Object obj) {
        this.f1445d = i4;
        this.f1446e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1445d) {
            case 0:
                l lVar = (l) this.f1446e;
                lVar.a();
                OptionsPopupDialog$PopupView optionsPopupDialog$PopupView = lVar.f1460i;
                optionsPopupDialog$PopupView.assignMarginsAndBackgrounds(optionsPopupDialog$PopupView);
                E e4 = lVar.f1466o;
                if (e4.f1437d) {
                    e4.f1437d = false;
                    D d4 = e4.f1438e;
                    if (d4 == null) {
                        WallpaperCarouselView wallpaperCarouselView = e4.f1436c;
                        w wVar = wallpaperCarouselView.f7343k;
                        w wVar2 = wallpaperCarouselView.f7342j;
                        if (wVar != wVar2) {
                            wallpaperCarouselView.a();
                            return;
                        }
                        wallpaperCarouselView.f7343k = null;
                        w.a(wVar2, 2);
                        return;
                    }
                    AnimatedFloat animatedFloat = d4.f1430g;
                    FloatProperty floatProperty = AnimatedFloat.VALUE;
                    Rect rect = new Rect();
                    e4.f1435b.getBoundsOnScreen(rect);
                    Point point = e4.f1438e.f1429f;
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(animatedFloat, floatProperty, 0.0f, (int) ((Double) Collections.max(Arrays.asList(Double.valueOf(Math.hypot(point.x - rect.left, point.y - rect.top)), Double.valueOf(Math.hypot(point.x - rect.left, point.y - rect.bottom)), Double.valueOf(Math.hypot(point.x - rect.right, point.y - rect.top)), Double.valueOf(Math.hypot(point.x - rect.right, point.y - rect.bottom))))).doubleValue());
                    e4.f1439f = ofFloat;
                    ofFloat.setInterpolator(E.f1433h);
                    e4.f1439f.addListener(new B(e4));
                    e4.f1439f.setDuration(e4.f1434a.getResources().getInteger(17694722)).start();
                    return;
                }
                return;
            default:
                j.b((j) this.f1446e);
                return;
        }
    }
}
