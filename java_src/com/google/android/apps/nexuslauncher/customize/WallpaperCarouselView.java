package com.google.android.apps.nexuslauncher.customize;

import O1.E;
import O1.j;
import O1.l;
import O1.n;
import O1.q;
import O1.w;
import O1.x;
import android.animation.Animator;
import android.animation.LayoutTransition;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.SurfaceControl;
import android.view.WindowManagerGlobal;
import android.widget.LinearLayout;
import android.window.ScreenCapture;
import com.android.launcher3.Launcher;
import com.android.launcher3.icons.cache.HandlerRunnable;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.RunnableList;
import com.android.systemui.shared.R;
import java.util.function.Consumer;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public class WallpaperCarouselView extends LinearLayout {

    /* renamed from: n  reason: collision with root package name */
    public static final /* synthetic */ int f7335n = 0;

    /* renamed from: d  reason: collision with root package name */
    public final RunnableList f7336d;

    /* renamed from: e  reason: collision with root package name */
    public final int f7337e;

    /* renamed from: f  reason: collision with root package name */
    public final float f7338f;

    /* renamed from: g  reason: collision with root package name */
    public final n f7339g;

    /* renamed from: h  reason: collision with root package name */
    public final int f7340h;

    /* renamed from: i  reason: collision with root package name */
    public w f7341i;

    /* renamed from: j  reason: collision with root package name */
    public w f7342j;

    /* renamed from: k  reason: collision with root package name */
    public w f7343k;

    /* renamed from: l  reason: collision with root package name */
    public x f7344l;

    /* renamed from: m  reason: collision with root package name */
    public Consumer f7345m;

    public WallpaperCarouselView(Context context) {
        this(context, null);
    }

    public final void a() {
        w wVar = this.f7342j;
        this.f7343k = wVar;
        x xVar = this.f7344l;
        final q qVar = new q(2, this);
        final E e4 = xVar.f1500a;
        if (e4.f1437d) {
            return;
        }
        e4.f1437d = true;
        Animator animator = e4.f1439f;
        if (animator != null) {
            animator.cancel();
        }
        HandlerRunnable handlerRunnable = e4.f1440g;
        if (handlerRunnable != null) {
            handlerRunnable.cancel();
        }
        l lVar = e4.f1434a;
        Launcher launcher = lVar.f1465n;
        if (launcher != null) {
            Rect rect = new Rect();
            j jVar = e4.f1435b;
            jVar.getViewRectRelativeToSelf(wVar, rect);
            final Point point = new Point(rect.centerX(), rect.centerY());
            final Rect rect2 = new Rect();
            jVar.getBoundsOnScreen(rect2);
            final SurfaceControl mirrorWallpaperSurface = WindowManagerGlobal.getInstance().mirrorWallpaperSurface(lVar.getDisplayId());
            if (mirrorWallpaperSurface == null) {
                qVar.run();
                return;
            }
            final SurfaceControl mirrorSurface = SurfaceControl.mirrorSurface(launcher.getDragLayer().getViewRootImpl().getSurfaceControl());
            final SurfaceControl build = new SurfaceControl.Builder().setName("NexusLauncher Screenshot").build();
            final SurfaceControl.Transaction layer = new SurfaceControl.Transaction().reparent(mirrorWallpaperSurface, build).setLayer(mirrorWallpaperSurface, -1).reparent(mirrorSurface, build).setLayer(mirrorSurface, 0);
            LooperExecutor looperExecutor = Executors.UI_HELPER_EXECUTOR;
            HandlerRunnable handlerRunnable2 = new HandlerRunnable(looperExecutor.getHandler(), new Supplier() { // from class: O1.y
                @Override // java.util.function.Supplier
                public final Object get() {
                    SurfaceControl.Transaction transaction = layer;
                    SurfaceControl surfaceControl = build;
                    Rect rect3 = rect2;
                    transaction.apply(true);
                    return ScreenCapture.captureLayers(surfaceControl, rect3, 1.0f);
                }
            }, Executors.MAIN_EXECUTOR, new Consumer() { // from class: O1.z
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    E e5 = E.this;
                    Point point2 = point;
                    Runnable runnable = qVar;
                    ScreenCapture.ScreenshotHardwareBuffer screenshotHardwareBuffer = (ScreenCapture.ScreenshotHardwareBuffer) obj;
                    e5.getClass();
                    if (screenshotHardwareBuffer == null) {
                        return;
                    }
                    D d4 = new D(e5.f1434a, screenshotHardwareBuffer.asBitmap(), point2, runnable);
                    e5.f1438e = d4;
                    e5.f1435b.addView(d4, 0);
                }
            }, new Runnable() { // from class: O1.A
                @Override // java.lang.Runnable
                public final void run() {
                    E e5 = E.this;
                    Runnable runnable = qVar;
                    SurfaceControl surfaceControl = build;
                    SurfaceControl surfaceControl2 = mirrorSurface;
                    SurfaceControl surfaceControl3 = mirrorWallpaperSurface;
                    if (e5.f1438e == null) {
                        runnable.run();
                    }
                    e5.f1440g = null;
                    surfaceControl.release();
                    surfaceControl2.release();
                    surfaceControl3.release();
                }
            });
            e4.f1440g = handlerRunnable2;
            looperExecutor.execute(handlerRunnable2);
        }
    }

    public final void b() {
        int i4 = getLayoutParams().height;
        int childCount = getChildCount();
        boolean z4 = childCount > 3 && i4 == this.f7340h;
        int i5 = 0;
        while (i5 < childCount) {
            w wVar = (w) getChildAt(i5);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) wVar.getLayoutParams();
            layoutParams.height = -1;
            if (this.f7342j == wVar) {
                layoutParams.width = z4 ? i4 : 0;
                layoutParams.weight = z4 ? 0.0f : 2.0f;
            } else {
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            }
            layoutParams.setMarginStart(i5 == 0 ? 0 : this.f7337e);
            i5++;
        }
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f7336d.executeAllAndDestroy();
    }

    public WallpaperCarouselView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WallpaperCarouselView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f7336d = new RunnableList();
        this.f7337e = getResources().getDimensionPixelSize(R.dimen.carousel_item_padding);
        this.f7338f = getResources().getDimension(R.dimen.carousel_item_corner_radius);
        this.f7340h = getResources().getDimensionPixelSize(R.dimen.wallpaper_carousel_height);
        this.f7339g = new n(context);
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.enableTransitionType(4);
        layoutTransition.setDuration(getResources().getInteger(17694720));
        setLayoutTransition(layoutTransition);
    }
}
