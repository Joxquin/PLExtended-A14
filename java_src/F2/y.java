package F2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
/* loaded from: classes.dex */
public final class y extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f501d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ TextView f502e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ int f503f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ TextView f504g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ A f505h;

    public y(A a4, int i4, TextView textView, int i5, TextView textView2) {
        this.f505h = a4;
        this.f501d = i4;
        this.f502e = textView;
        this.f503f = i5;
        this.f504g = textView2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        AppCompatTextView appCompatTextView;
        A a4 = this.f505h;
        a4.f396h = this.f501d;
        a4.f394f = null;
        TextView textView = this.f502e;
        if (textView != null) {
            textView.setVisibility(4);
            if (this.f503f == 1 && (appCompatTextView = this.f505h.f400l) != null) {
                appCompatTextView.setText((CharSequence) null);
            }
        }
        TextView textView2 = this.f504g;
        if (textView2 != null) {
            textView2.setTranslationY(0.0f);
            this.f504g.setAlpha(1.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        TextView textView = this.f504g;
        if (textView != null) {
            textView.setVisibility(0);
        }
    }
}
