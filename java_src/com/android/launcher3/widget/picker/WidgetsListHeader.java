package com.android.launcher3.widget.picker;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.R$styleable;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.icons.PlaceHolderIconDrawable;
import com.android.launcher3.icons.cache.HandlerRunnable;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.widget.model.WidgetsListHeaderEntry;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class WidgetsListHeader extends LinearLayout implements IconCache.ItemInfoUpdateReceiver {
    private static final int[] EXPANDED_DRAWABLE_STATE = {16842920};
    private ImageView mAppIcon;
    private boolean mEnableIconUpdateAnimation;
    private Drawable mIconDrawable;
    private HandlerRunnable mIconLoadRequest;
    private final int mIconSize;
    private boolean mIsExpanded;
    private WidgetsListDrawableState mListDrawableState;
    private TextView mSubtitle;
    private TextView mTitle;

    public WidgetsListHeader(Context context) {
        this(context, null);
    }

    public final void applyFromItemInfoWithIcon(WidgetsListHeaderEntry widgetsListHeaderEntry) {
        PackageItemInfo packageItemInfo = widgetsListHeaderEntry.mPkgItem;
        setIcon(packageItemInfo.newIcon(0, getContext()));
        this.mTitle.setText(widgetsListHeaderEntry.mPkgItem.title);
        String subtitle = widgetsListHeaderEntry.getSubtitle(getContext());
        if (TextUtils.isEmpty(subtitle)) {
            this.mSubtitle.setVisibility(8);
        } else {
            this.mSubtitle.setText(subtitle);
            this.mSubtitle.setVisibility(0);
        }
        setExpanded(widgetsListHeaderEntry.isWidgetListShown());
        setTag(packageItemInfo);
        HandlerRunnable handlerRunnable = this.mIconLoadRequest;
        if (handlerRunnable != null) {
            handlerRunnable.cancel();
            this.mIconLoadRequest = null;
        }
        if (getTag() instanceof ItemInfoWithIcon) {
            ItemInfoWithIcon itemInfoWithIcon = (ItemInfoWithIcon) getTag();
            if (itemInfoWithIcon.usingLowResIcon()) {
                this.mIconLoadRequest = LauncherAppState.getInstance(getContext()).getIconCache().updateIconInBackground(this, itemInfoWithIcon);
            }
        }
    }

    public final boolean isExpanded() {
        return this.mIsExpanded;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i4) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i4 + 2);
        if (this.mIsExpanded) {
            LinearLayout.mergeDrawableStates(onCreateDrawableState, EXPANDED_DRAWABLE_STATE);
        }
        WidgetsListDrawableState widgetsListDrawableState = this.mListDrawableState;
        if (widgetsListDrawableState != null) {
            LinearLayout.mergeDrawableStates(onCreateDrawableState, widgetsListDrawableState.mStateSet);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mAppIcon = (ImageView) findViewById(R.id.app_icon);
        this.mTitle = (TextView) findViewById(R.id.app_title);
        this.mSubtitle = (TextView) findViewById(R.id.app_subtitle);
        setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: com.android.launcher3.widget.picker.WidgetsListHeader.1
            @Override // android.view.View.AccessibilityDelegate
            public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                if (WidgetsListHeader.this.mIsExpanded) {
                    accessibilityNodeInfo.removeAction(262144);
                    accessibilityNodeInfo.addAction(524288);
                } else {
                    accessibilityNodeInfo.removeAction(524288);
                    accessibilityNodeInfo.addAction(262144);
                }
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            }

            @Override // android.view.View.AccessibilityDelegate
            public final boolean performAccessibilityAction(View view, int i4, Bundle bundle) {
                if (i4 == 262144 || i4 == 524288) {
                    WidgetsListHeader.this.callOnClick();
                    return true;
                }
                return super.performAccessibilityAction(view, i4, bundle);
            }
        });
    }

    @Override // com.android.launcher3.icons.IconCache.ItemInfoUpdateReceiver
    public final void reapplyItemInfo(ItemInfoWithIcon itemInfoWithIcon) {
        if (getTag() == itemInfoWithIcon) {
            this.mIconLoadRequest = null;
            this.mEnableIconUpdateAnimation = true;
            itemInfoWithIcon.bitmap.icon.prepareToDraw();
            setIcon(itemInfoWithIcon.newIcon(0, getContext()));
            this.mEnableIconUpdateAnimation = false;
        }
    }

    public final void setExpanded(boolean z4) {
        this.mIsExpanded = z4;
        refreshDrawableState();
    }

    public final void setIcon(Drawable drawable) {
        int i4 = this.mIconSize;
        drawable.setBounds(0, 0, i4, i4);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mAppIcon.getLayoutParams();
        int i5 = this.mIconSize;
        layoutParams.width = i5;
        layoutParams.height = i5;
        this.mAppIcon.setLayoutParams(layoutParams);
        this.mAppIcon.setImageDrawable(drawable);
        Drawable drawable2 = this.mIconDrawable;
        if (drawable2 != null && (drawable2 instanceof PlaceHolderIconDrawable) && this.mEnableIconUpdateAnimation) {
            ((PlaceHolderIconDrawable) drawable2).animateIconUpdate(drawable);
        }
        this.mIconDrawable = drawable;
        drawable.setVisible(getWindowVisibility() == 0 && isShown(), false);
    }

    public final void setListDrawableState(WidgetsListDrawableState widgetsListDrawableState) {
        if (widgetsListDrawableState == this.mListDrawableState) {
            return;
        }
        this.mListDrawableState = widgetsListDrawableState;
        refreshDrawableState();
    }

    public WidgetsListHeader(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WidgetsListHeader(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mEnableIconUpdateAnimation = false;
        this.mIsExpanded = false;
        this.mIconSize = context.obtainStyledAttributes(attributeSet, R$styleable.WidgetsListRowHeader, i4, 0).getDimensionPixelSize(0, ((ActivityContext) ActivityContext.lookupContext(context)).getDeviceProfile().iconSizePx);
    }
}
