package com.android.launcher3.shortcuts;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import android.widget.Toast;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.Utilities;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class DeepShortcutTextView extends BubbleTextView {
    private final Rect mDragHandleBounds;
    private final int mDragHandleWidth;
    private Toast mInstructionToast;
    private final Rect mLoadingStateBounds;
    private Drawable mLoadingStatePlaceholder;
    private boolean mShowInstructionToast;
    private boolean mShowLoadingState;

    public DeepShortcutTextView(Context context) {
        this(context, null, 0);
    }

    private void setLoadingBounds() {
        if (this.mLoadingStatePlaceholder == null) {
            return;
        }
        this.mLoadingStateBounds.set(0, 0, (getMeasuredWidth() - this.mDragHandleWidth) - getPaddingStart(), this.mLoadingStatePlaceholder.getIntrinsicHeight());
        this.mLoadingStateBounds.offset(Utilities.isRtl(getResources()) ? this.mDragHandleWidth : getPaddingStart(), (int) ((getMeasuredHeight() - this.mLoadingStatePlaceholder.getIntrinsicHeight()) / 2.0f));
        this.mLoadingStatePlaceholder.setBounds(this.mLoadingStateBounds);
    }

    private void showLoadingState(boolean z4) {
        if (z4 == this.mShowLoadingState) {
            return;
        }
        this.mShowLoadingState = z4;
        if (z4) {
            this.mLoadingStatePlaceholder = getContext().getDrawable(R.drawable.deep_shortcuts_text_placeholder);
            setLoadingBounds();
        } else {
            this.mLoadingStatePlaceholder = null;
        }
        invalidate();
    }

    @Override // com.android.launcher3.BubbleTextView
    public final void applyCompoundDrawables(Drawable drawable) {
    }

    @Override // com.android.launcher3.BubbleTextView
    public final void drawDotIfNecessary(Canvas canvas) {
    }

    @Override // com.android.launcher3.BubbleTextView, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.mShowLoadingState) {
            this.mLoadingStatePlaceholder.draw(canvas);
        } else {
            super.onDraw(canvas);
        }
    }

    @Override // com.android.launcher3.BubbleTextView, android.widget.TextView, android.view.View
    public final void onMeasure(int i4, int i5) {
        super.onMeasure(i4, i5);
        this.mDragHandleBounds.set(0, 0, this.mDragHandleWidth, getMeasuredHeight());
        if (!Utilities.isRtl(getResources())) {
            this.mDragHandleBounds.offset(getMeasuredWidth() - this.mDragHandleBounds.width(), 0);
        }
        setLoadingBounds();
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (this.mShowInstructionToast) {
            Toast toast = this.mInstructionToast;
            if (toast != null) {
                toast.cancel();
            }
            Toast makeText = Toast.makeText(getContext(), Utilities.wrapForTts(getContext().getText(R.string.long_press_shortcut_to_add), getContext().getString(R.string.long_accessible_way_to_add_shortcut)), 0);
            this.mInstructionToast = makeText;
            makeText.show();
            return true;
        }
        return super.performClick();
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        showLoadingState(false);
    }

    @Override // com.android.launcher3.BubbleTextView
    public final boolean shouldIgnoreTouchDown(float f4, float f5) {
        this.mShowInstructionToast = this.mDragHandleBounds.contains((int) f4, (int) f5);
        return false;
    }

    public DeepShortcutTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DeepShortcutTextView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mDragHandleBounds = new Rect();
        this.mShowInstructionToast = false;
        this.mLoadingStateBounds = new Rect();
        Resources resources = getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.popup_padding_end);
        this.mDragHandleWidth = (resources.getDimensionPixelSize(R.dimen.deep_shortcut_drawable_padding) / 2) + resources.getDimensionPixelSize(R.dimen.deep_shortcut_drag_handle_size) + dimensionPixelSize;
        showLoadingState(true);
    }
}
