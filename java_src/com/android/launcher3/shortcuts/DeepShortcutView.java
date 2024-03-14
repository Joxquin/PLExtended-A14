package com.android.launcher3.shortcuts;

import android.content.Context;
import android.content.pm.ShortcutInfo;
import android.content.res.ColorStateList;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BubbleTextHolder;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class DeepShortcutView extends FrameLayout implements BubbleTextHolder {
    private static final Point sTempPoint = new Point();
    private BubbleTextView mBubbleText;
    private ShortcutInfo mDetail;
    private View mIconView;
    private WorkspaceItemInfo mInfo;
    private final Drawable mTransparentDrawable;

    public DeepShortcutView(Context context) {
        this(context, null, 0);
    }

    private void tryUpdateTextBackground() {
        if (!(getBackground() instanceof GradientDrawable) || this.mBubbleText == null) {
            return;
        }
        GradientDrawable gradientDrawable = (GradientDrawable) getBackground();
        int attrColor = GraphicsUtils.getAttrColor(16843820, getContext());
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(attrColor);
        gradientDrawable2.setShape(0);
        if (gradientDrawable.getCornerRadii() != null) {
            gradientDrawable2.setCornerRadii(gradientDrawable.getCornerRadii());
        } else {
            gradientDrawable2.setCornerRadius(gradientDrawable.getCornerRadius());
        }
        this.mBubbleText.setBackground(new RippleDrawable(ColorStateList.valueOf(attrColor), this.mTransparentDrawable, gradientDrawable2));
    }

    public final void applyShortcutInfo(WorkspaceItemInfo workspaceItemInfo, ShortcutInfo shortcutInfo, final PopupContainerWithArrow popupContainerWithArrow) {
        this.mInfo = workspaceItemInfo;
        this.mDetail = shortcutInfo;
        boolean z4 = false;
        this.mBubbleText.applyFromWorkspaceItem(0, workspaceItemInfo, false);
        this.mIconView.setBackground(this.mBubbleText.getIcon());
        CharSequence longLabel = this.mDetail.getLongLabel();
        int width = (this.mBubbleText.getWidth() - this.mBubbleText.getTotalPaddingLeft()) - this.mBubbleText.getTotalPaddingRight();
        if (!TextUtils.isEmpty(longLabel) && this.mBubbleText.getPaint().measureText(longLabel.toString()) <= width) {
            z4 = true;
        }
        BubbleTextView bubbleTextView = this.mBubbleText;
        if (!z4) {
            longLabel = this.mDetail.getShortLabel();
        }
        bubbleTextView.setText(longLabel);
        BubbleTextView bubbleTextView2 = this.mBubbleText;
        popupContainerWithArrow.getClass();
        bubbleTextView2.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.popup.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PopupContainerWithArrow popupContainerWithArrow2 = PopupContainerWithArrow.this;
                int i4 = PopupContainerWithArrow.f4922d;
                ((ActivityContext) popupContainerWithArrow2.mActivityContext).getItemOnClickListener().onClick(view);
            }
        });
        this.mBubbleText.setOnLongClickListener(popupContainerWithArrow.getItemDragHandler());
        this.mBubbleText.setOnTouchListener(popupContainerWithArrow.getItemDragHandler());
    }

    @Override // com.android.launcher3.views.BubbleTextHolder
    public final BubbleTextView getBubbleText() {
        return this.mBubbleText;
    }

    public final WorkspaceItemInfo getFinalInfo() {
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo(this.mInfo);
        Launcher.getLauncher(getContext()).getModel().updateAndBindWorkspaceItem(workspaceItemInfo, this.mDetail);
        return workspaceItemInfo;
    }

    public final Point getIconCenter() {
        Point point = sTempPoint;
        int measuredHeight = getMeasuredHeight() / 2;
        point.x = measuredHeight;
        point.y = measuredHeight;
        if (Utilities.isRtl(getResources())) {
            point.x = getMeasuredWidth() - point.x;
        }
        return point;
    }

    public final View getIconView() {
        return this.mIconView;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        BubbleTextView bubbleTextView = (BubbleTextView) findViewById(R.id.bubble_text);
        this.mBubbleText = bubbleTextView;
        bubbleTextView.setHideBadge(true);
        this.mIconView = findViewById(R.id.icon);
        tryUpdateTextBackground();
    }

    @Override // android.view.View
    public final void setBackground(Drawable drawable) {
        super.setBackground(drawable);
        tryUpdateTextBackground();
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i4) {
        super.setBackgroundResource(i4);
        tryUpdateTextBackground();
    }

    public final void setWillDrawIcon() {
        this.mIconView.setVisibility(4);
    }

    public DeepShortcutView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DeepShortcutView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mTransparentDrawable = new ColorDrawable(0);
    }
}
