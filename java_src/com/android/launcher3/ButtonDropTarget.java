package com.android.launcher3;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.android.launcher3.DropTarget;
import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public abstract class ButtonDropTarget extends TextView implements DropTarget, DragController.DragListener, View.OnClickListener {
    private static final int[] sTempCords = new int[2];
    private boolean mAccessibleDrag;
    protected boolean mActive;
    protected final ActivityContext mActivityContext;
    private final int mDragDistanceThreshold;
    protected Drawable mDrawable;
    private final int mDrawablePadding;
    private final int mDrawableSize;
    protected DropTargetBar mDropTargetBar;
    protected final DropTargetHandler mDropTargetHandler;
    private boolean mIconVisible;
    protected CharSequence mText;
    private boolean mTextMultiLine;
    private boolean mTextVisible;
    private PopupWindow mToolTip;
    private int mToolTipLocation;

    public ButtonDropTarget(Context context) {
        this(context, null, 0);
    }

    private void centerIcon() {
        int width = this.mTextVisible ? 0 : (((getWidth() - getPaddingLeft()) - getPaddingRight()) / 2) - (this.mDrawableSize / 2);
        Drawable drawable = this.mDrawable;
        int i4 = this.mDrawableSize;
        drawable.setBounds(width, 0, width + i4, i4);
    }

    private void updateIconVisibility() {
        if (this.mIconVisible) {
            centerIcon();
        }
        setCompoundDrawablesRelative(this.mIconVisible ? this.mDrawable : null, null, null, null);
        setCompoundDrawablePadding((this.mIconVisible && this.mTextVisible) ? this.mDrawablePadding : 0);
    }

    @Override // com.android.launcher3.DropTarget
    public final boolean acceptDrop(DropTarget.DragObject dragObject) {
        return supportsDrop(dragObject.dragInfo);
    }

    public abstract void completeDrop(DropTarget.DragObject dragObject);

    public abstract int getAccessibilityAction();

    @Override // com.android.launcher3.DropTarget
    public final void getHitRectRelativeToDragLayer(Rect rect) {
        super.getHitRect(rect);
        rect.bottom += this.mActivityContext.getDeviceProfile().dropTargetDragPaddingPx;
        int[] iArr = sTempCords;
        iArr[1] = 0;
        iArr[0] = 0;
        this.mActivityContext.getDragLayer().getDescendantCoordRelativeToSelf((View) this, iArr);
        rect.offsetTo(iArr[0], iArr[1]);
    }

    public final Rect getIconRect(DropTarget.DragObject dragObject) {
        int paddingLeft;
        int i4;
        int measuredWidth = dragObject.dragView.getMeasuredWidth();
        int measuredHeight = dragObject.dragView.getMeasuredHeight();
        int intrinsicWidth = this.mDrawable.getIntrinsicWidth();
        int intrinsicHeight = this.mDrawable.getIntrinsicHeight();
        DragLayer dragLayer = this.mDropTargetHandler.getDragLayer();
        Rect rect = new Rect();
        dragLayer.getViewRectRelativeToSelf(this, rect);
        if (Utilities.isRtl(getResources())) {
            i4 = rect.right - getPaddingRight();
            paddingLeft = i4 - intrinsicWidth;
        } else {
            paddingLeft = getPaddingLeft() + rect.left;
            i4 = paddingLeft + intrinsicWidth;
        }
        int measuredHeight2 = ((getMeasuredHeight() - intrinsicHeight) / 2) + rect.top;
        rect.set(paddingLeft, measuredHeight2, i4, measuredHeight2 + intrinsicHeight);
        rect.offset((-(measuredWidth - intrinsicWidth)) / 2, (-(measuredHeight - intrinsicHeight)) / 2);
        return rect;
    }

    @Override // com.android.launcher3.DropTarget
    public final boolean isDropEnabled() {
        return this.mActive && (this.mAccessibleDrag || this.mActivityContext.getDragController().getDistanceDragged() >= ((float) this.mDragDistanceThreshold));
    }

    public boolean isTextClippedVertically(int i4) {
        Paint.FontMetricsInt fontMetricsInt = getPaint().getFontMetricsInt();
        int lineCount = getLineCount() <= 0 ? 1 : getLineCount();
        return getPaddingBottom() + (getPaddingTop() + ((fontMetricsInt.bottom - fontMetricsInt.top) * lineCount)) >= i4;
    }

    public final boolean isTextTruncated(int i4) {
        int paddingRight = i4 - (getPaddingRight() + getPaddingLeft());
        if (this.mIconVisible) {
            paddingRight -= getCompoundDrawablePadding() + this.mDrawable.getIntrinsicWidth();
        }
        if (paddingRight <= 0) {
            return true;
        }
        float f4 = paddingRight;
        CharSequence ellipsize = TextUtils.ellipsize(this.mText, getPaint(), f4, TextUtils.TruncateAt.END);
        if (this.mTextMultiLine) {
            if (TextUtils.equals(this.mText, ellipsize)) {
                return false;
            }
            CharSequence ellipsize2 = TextUtils.ellipsize(this.mText.subSequence(ellipsize.length(), this.mText.length()), getPaint(), f4, TextUtils.TruncateAt.END);
            return (TextUtils.equals(this.mText.subSequence(0, ellipsize.length()), ellipsize) && TextUtils.equals(this.mText.subSequence(ellipsize.length(), ellipsize2.length()), ellipsize2)) ? false : true;
        }
        return !TextUtils.equals(this.mText, ellipsize);
    }

    public abstract void onAccessibilityDrop(View view, ItemInfo itemInfo);

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.mDropTargetHandler.onClick(this);
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragEnd() {
        this.mActive = false;
        setOnClickListener(null);
        setSelected(false);
    }

    @Override // com.android.launcher3.DropTarget
    public final void onDragEnter(DropTarget.DragObject dragObject) {
        int i4;
        if (!this.mAccessibleDrag && !this.mTextVisible) {
            PopupWindow popupWindow = this.mToolTip;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.mToolTip = null;
            }
            TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.drop_target_tool_tip, (ViewGroup) null);
            textView.setText(this.mText);
            this.mToolTip = new PopupWindow(textView, -2, -2);
            int i5 = 0;
            if (this.mToolTipLocation != 0) {
                i4 = -getMeasuredHeight();
                textView.measure(0, 0);
                i5 = this.mToolTipLocation == 1 ? (-getMeasuredWidth()) - (textView.getMeasuredWidth() / 2) : (getMeasuredWidth() / 2) + (textView.getMeasuredWidth() / 2);
            } else {
                i4 = 0;
            }
            this.mToolTip.showAsDropDown(this, i5, i4);
        }
        dragObject.dragView.setAlpha(0.65f);
        setSelected(true);
        DragViewStateAnnouncer dragViewStateAnnouncer = dragObject.stateAnnouncer;
        if (dragViewStateAnnouncer != null) {
            dragViewStateAnnouncer.cancel();
        }
        sendAccessibilityEvent(4);
    }

    @Override // com.android.launcher3.DropTarget
    public final void onDragExit(DropTarget.DragObject dragObject) {
        PopupWindow popupWindow = this.mToolTip;
        if (popupWindow != null) {
            popupWindow.dismiss();
            this.mToolTip = null;
        }
        if (dragObject.dragComplete) {
            dragObject.dragView.setAlpha(0.65f);
            return;
        }
        dragObject.dragView.setAlpha(1.0f);
        setSelected(false);
    }

    @Override // com.android.launcher3.DropTarget
    public final void onDragOver(DropTarget.DragObject dragObject) {
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        if (dragOptions.isKeyboardDrag) {
            this.mActive = false;
        } else {
            setupItemInfo(dragObject.dragInfo);
            this.mActive = supportsDrop(dragObject.dragInfo);
        }
        setVisibility(this.mActive ? 0 : 8);
        boolean z4 = dragOptions.isAccessibleDrag;
        this.mAccessibleDrag = z4;
        setOnClickListener(z4 ? this : null);
    }

    @Override // com.android.launcher3.DropTarget
    public void onDrop(final DropTarget.DragObject dragObject, DragOptions dragOptions) {
        if (dragOptions.isFlingToDelete) {
            return;
        }
        DragLayer dragLayer = this.mDropTargetHandler.getDragLayer();
        DragView dragView = dragObject.dragView;
        Rect iconRect = getIconRect(dragObject);
        float width = iconRect.width() / dragView.getMeasuredWidth();
        dragView.detachContentView(true);
        this.mDropTargetBar.mDeferOnDragEnd = true;
        dragLayer.animateView(dragObject.dragView, iconRect, width, 0.1f, 0.1f, 285, y0.e.f12929C, new Runnable() { // from class: com.android.launcher3.l
            @Override // java.lang.Runnable
            public final void run() {
                ButtonDropTarget buttonDropTarget = ButtonDropTarget.this;
                buttonDropTarget.completeDrop(dragObject);
                buttonDropTarget.mDropTargetBar.onDragEnd();
                buttonDropTarget.mDropTargetHandler.onDropAnimationComplete();
            }
        }, 0, null);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        CharSequence text = getText();
        this.mText = text;
        setContentDescription(text);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i4, int i5, int i6, int i7) {
        super.onSizeChanged(i4, i5, i6, i7);
        centerIcon();
    }

    @Override // com.android.launcher3.DropTarget
    public final void prepareAccessibilityDrop() {
    }

    public final float resizeTextToFit() {
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        float dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.button_drop_target_min_text_size) / Resources.getSystem().getDisplayMetrics().scaledDensity;
        float dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.button_drop_target_resize_text_increment) / Resources.getSystem().getDisplayMetrics().scaledDensity;
        float textSize = getTextSize() / Resources.getSystem().getDisplayMetrics().scaledDensity;
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        while (true) {
            if (!isTextTruncated(measuredWidth) && !isTextClippedVertically(measuredHeight)) {
                return textSize;
            }
            textSize -= dimensionPixelSize2;
            if (textSize < dimensionPixelSize) {
                setTextSize(dimensionPixelSize);
                return dimensionPixelSize;
            }
            setTextSize(textSize);
        }
    }

    public final void setDrawable(int i4) {
        Drawable mutate = getContext().getDrawable(i4).mutate();
        this.mDrawable = mutate;
        mutate.setTintList(getTextColors());
        updateIconVisibility();
    }

    public final void setIconVisible(boolean z4) {
        if (this.mIconVisible != z4) {
            this.mIconVisible = z4;
            updateIconVisibility();
        }
    }

    public final void setTextMultiLine(boolean z4) {
        if (this.mTextMultiLine != z4) {
            this.mTextMultiLine = z4;
            setSingleLine(!z4);
            setMaxLines(z4 ? 2 : 1);
            setInputType(z4 ? 131073 : 1);
        }
    }

    public final void setTextVisible(boolean z4) {
        CharSequence charSequence = this.mText;
        if (this.mTextVisible && TextUtils.equals(charSequence, getText())) {
            return;
        }
        this.mTextVisible = true;
        setText(charSequence);
        updateIconVisibility();
    }

    public final void setToolTipLocation() {
        this.mToolTipLocation = 0;
        PopupWindow popupWindow = this.mToolTip;
        if (popupWindow != null) {
            popupWindow.dismiss();
            this.mToolTip = null;
        }
    }

    public abstract void setupItemInfo(ItemInfo itemInfo);

    public abstract boolean supportsAccessibilityDrop(View view, ItemInfo itemInfo);

    public abstract boolean supportsDrop(ItemInfo itemInfo);

    public ButtonDropTarget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ButtonDropTarget(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mTextVisible = true;
        this.mIconVisible = true;
        this.mTextMultiLine = true;
        ActivityContext activityContext = (ActivityContext) ActivityContext.lookupContext(context);
        this.mActivityContext = activityContext;
        this.mDropTargetHandler = activityContext.getDropTargetHandler();
        Resources resources = getResources();
        this.mDragDistanceThreshold = resources.getDimensionPixelSize(R.dimen.drag_distanceThreshold);
        this.mDrawableSize = resources.getDimensionPixelSize(R.dimen.drop_target_button_drawable_size);
        this.mDrawablePadding = resources.getDimensionPixelSize(R.dimen.drop_target_button_drawable_padding);
    }
}
