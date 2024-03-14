package Z0;

import android.animation.ValueAnimator;
import com.android.launcher3.taskbar.bubbles.BubbleBarView;
/* loaded from: classes.dex */
public final /* synthetic */ class e implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f2351d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ BubbleBarView f2352e;

    public /* synthetic */ e(BubbleBarView bubbleBarView, int i4) {
        this.f2351d = i4;
        this.f2352e = bubbleBarView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f2351d) {
            case 0:
                BubbleBarView.a(this.f2352e);
                return;
            default:
                BubbleBarView.c(this.f2352e, valueAnimator);
                return;
        }
    }
}
