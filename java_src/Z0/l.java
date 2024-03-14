package Z0;

import android.graphics.PointF;
import android.view.View;
import androidx.dynamicanimation.animation.q;
import com.android.launcher3.taskbar.bubbles.BubbleDragAnimator;
/* loaded from: classes.dex */
public final /* synthetic */ class l implements com.android.wm.shell.animation.d {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f2361a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ BubbleDragAnimator f2362b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ PointF f2363c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Runnable f2364d;

    public /* synthetic */ l(BubbleDragAnimator bubbleDragAnimator, PointF pointF, com.android.launcher3.taskbar.bubbles.c cVar, int i4) {
        this.f2361a = i4;
        this.f2362b = bubbleDragAnimator;
        this.f2363c = pointF;
        this.f2364d = cVar;
    }

    @Override // com.android.wm.shell.animation.d
    public final void a(Object obj, q qVar, boolean z4, boolean z5, float f4, float f5, boolean z6) {
        int i4 = this.f2361a;
        Runnable runnable = this.f2364d;
        PointF pointF = this.f2363c;
        BubbleDragAnimator bubbleDragAnimator = this.f2362b;
        switch (i4) {
            case 0:
                View view = (View) obj;
                BubbleDragAnimator.b(bubbleDragAnimator, pointF, runnable, z5, z6);
                return;
            default:
                View view2 = (View) obj;
                BubbleDragAnimator.a(bubbleDragAnimator, pointF, runnable, z5, z6);
                return;
        }
    }
}
