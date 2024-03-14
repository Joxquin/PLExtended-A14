package com.android.launcher3.taskbar;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import com.android.launcher3.views.ActivityContext;
/* loaded from: classes.dex */
public class TaskbarScrimView extends View {
    private final TaskbarBackgroundRenderer mRenderer;
    private boolean mShowScrim;

    public TaskbarScrimView(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mShowScrim) {
            this.mRenderer.draw(canvas);
        }
    }

    public final void setCornerRoundness(float f4) {
        this.mRenderer.setCornerRoundness(f4);
        invalidate();
    }

    public final void setScrimAlpha(float f4) {
        this.mShowScrim = f4 > 0.0f;
        this.mRenderer.getPaint().setAlpha((int) (f4 * 255.0f));
        invalidate();
    }

    public TaskbarScrimView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TaskbarScrimView(Context context, AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, 0);
    }

    public TaskbarScrimView(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        TaskbarBackgroundRenderer taskbarBackgroundRenderer = new TaskbarBackgroundRenderer((TaskbarActivityContext) ActivityContext.lookupContext(context));
        this.mRenderer = taskbarBackgroundRenderer;
        taskbarBackgroundRenderer.getPaint().setColor(getResources().getColor(17170473));
    }
}
