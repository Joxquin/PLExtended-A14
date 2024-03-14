package com.android.launcher3.settings;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.Property;
import android.view.View;
import androidx.preference.Preference;
import androidx.recyclerview.widget.A0;
import androidx.recyclerview.widget.AbstractC0274i0;
import androidx.recyclerview.widget.E0;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.icons.GraphicsUtils;
/* loaded from: classes.dex */
public final class PreferenceHighlighter extends AbstractC0274i0 implements Runnable {
    private final int mIndex;
    private final Preference mPreference;
    private final RecyclerView mRv;
    private static final Property HIGHLIGHT_COLOR = new Property(Integer.TYPE) { // from class: com.android.launcher3.settings.PreferenceHighlighter.1
        @Override // android.util.Property
        public final Object get(Object obj) {
            return Integer.valueOf(((PreferenceHighlighter) obj).mHighlightColor);
        }

        @Override // android.util.Property
        public final void set(Object obj, Object obj2) {
            PreferenceHighlighter preferenceHighlighter = (PreferenceHighlighter) obj;
            preferenceHighlighter.mHighlightColor = ((Integer) obj2).intValue();
            preferenceHighlighter.mRv.invalidateItemDecorations();
        }
    };
    private static final int END_COLOR = GraphicsUtils.setColorAlphaBound(-1, 0);
    private final Paint mPaint = new Paint();
    private final RectF mDrawRect = new RectF();
    private boolean mHighLightStarted = false;
    private int mHighlightColor = END_COLOR;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.settings.PreferenceHighlighter$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends AnimatorListenerAdapter {

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ int f4976d;
        final /* synthetic */ PreferenceHighlighter this$0;

        public /* synthetic */ AnonymousClass2(PreferenceHighlighter preferenceHighlighter, int i4) {
            this.f4976d = i4;
            this.this$0 = preferenceHighlighter;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            switch (this.f4976d) {
                case 0:
                    PreferenceHighlighter.d(this.this$0);
                    return;
                default:
                    this.this$0.mRv.removeItemDecoration(this.this$0);
                    return;
            }
        }
    }

    /* loaded from: classes.dex */
    public interface HighlightDelegate {
        void offsetHighlight(View view, RectF rectF);
    }

    public PreferenceHighlighter(RecyclerView recyclerView, int i4, Preference preference) {
        this.mRv = recyclerView;
        this.mIndex = i4;
        this.mPreference = preference;
    }

    public static void d(PreferenceHighlighter preferenceHighlighter) {
        ObjectAnimator ofArgb = ObjectAnimator.ofArgb(preferenceHighlighter, HIGHLIGHT_COLOR, preferenceHighlighter.mHighlightColor, END_COLOR);
        ofArgb.setDuration(500L);
        ofArgb.setStartDelay(15000L);
        ofArgb.addListener(new AnonymousClass2(preferenceHighlighter, 1));
        ofArgb.start();
    }

    @Override // androidx.recyclerview.widget.AbstractC0274i0
    public final void onDraw(Canvas canvas, RecyclerView recyclerView, A0 a02) {
        E0 findViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(this.mIndex);
        if (findViewHolderForAdapterPosition == null) {
            return;
        }
        boolean z4 = this.mHighLightStarted;
        if (z4 || a02.f3772o == 0) {
            if (!z4) {
                ObjectAnimator ofArgb = ObjectAnimator.ofArgb(this, HIGHLIGHT_COLOR, END_COLOR, GraphicsUtils.setColorAlphaBound(GraphicsUtils.getAttrColor(16843829, this.mRv.getContext()), 66));
                ofArgb.setDuration(200L);
                ofArgb.setRepeatMode(2);
                ofArgb.setRepeatCount(4);
                ofArgb.addListener(new AnonymousClass2(this, 0));
                ofArgb.start();
                this.mHighLightStarted = true;
            }
            this.mPaint.setColor(this.mHighlightColor);
            RectF rectF = this.mDrawRect;
            View view = findViewHolderForAdapterPosition.itemView;
            rectF.set(0.0f, view.getY(), recyclerView.getWidth(), view.getY() + view.getHeight());
            Preference preference = this.mPreference;
            if (preference instanceof HighlightDelegate) {
                ((HighlightDelegate) preference).offsetHighlight(view, this.mDrawRect);
            }
            canvas.drawRect(this.mDrawRect, this.mPaint);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.mRv.addItemDecoration(this);
        this.mRv.smoothScrollToPosition(this.mIndex);
    }
}
