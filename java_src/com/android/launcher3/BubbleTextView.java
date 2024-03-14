package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.icu.text.MessageFormat;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.widget.TextView;
import com.android.launcher3.accessibility.BaseAccessibilityDelegate;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.graphics.PreloadIconDrawable;
import com.android.launcher3.icons.DotRenderer;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.icons.PlaceHolderIconDrawable;
import com.android.launcher3.icons.cache.HandlerRunnable;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.search.StringMatcherUtility;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.MultiTranslateDelegate;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.util.ShortcutUtil;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.IconLabelDotView;
import com.android.systemui.shared.R;
import java.text.NumberFormat;
import java.util.HashMap;
import java.util.Locale;
/* loaded from: classes.dex */
public class BubbleTextView extends TextView implements IconCache.ItemInfoUpdateReceiver, IconLabelDotView, DraggableView, Reorderable {
    private final ActivityContext mActivity;
    private IntArray mBreakPointsIntArray;
    private boolean mCenterVertically;
    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mDisableRelayout;
    protected int mDisplay;
    @ViewDebug.ExportedProperty(category = "launcher")
    private DotInfo mDotInfo;
    @ViewDebug.ExportedProperty(category = "launcher", deepExport = true)
    protected DotRenderer.DrawParams mDotParams;
    private DotRenderer mDotRenderer;
    private Animator mDotScaleAnim;
    private boolean mEnableIconUpdateAnimation;
    private boolean mForceHideDot;
    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mHideBadge;
    private FastBitmapDrawable mIcon;
    private HandlerRunnable mIconLoadRequest;
    private final int mIconSize;
    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mIgnorePressedStateChange;
    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mIsIconVisible;
    private final boolean mIsRtl;
    private CharSequence mLastModifiedText;
    private CharSequence mLastOriginalText;
    private boolean mLayoutHorizontal;
    private final CheckLongPressHelper mLongPressHelper;
    private float mScaleForReorderBounce;
    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mStayPressed;
    @ViewDebug.ExportedProperty(category = "launcher")
    private float mTextAlpha;
    @ViewDebug.ExportedProperty(category = "launcher")
    private int mTextColor;
    @ViewDebug.ExportedProperty(category = "launcher")
    private ColorStateList mTextColorStateList;
    private final MultiTranslateDelegate mTranslateDelegate;
    private static final Character NEW_LINE = '\n';
    private static final StringMatcherUtility.StringMatcher MATCHER = new StringMatcherUtility.StringMatcher();
    private static final int[] STATE_PRESSED = {16842919};
    private static final Property DOT_SCALE_PROPERTY = new Property(Float.TYPE, "dotScale") { // from class: com.android.launcher3.BubbleTextView.1
        public final Float a(BubbleTextView bubbleTextView) {
            switch (r3) {
                case 0:
                    return Float.valueOf(bubbleTextView.mDotParams.scale);
                default:
                    return Float.valueOf(bubbleTextView.mTextAlpha);
            }
        }

        public final void b(BubbleTextView bubbleTextView, Float f4) {
            switch (r3) {
                case 0:
                    bubbleTextView.mDotParams.scale = f4.floatValue();
                    bubbleTextView.invalidate();
                    return;
                default:
                    bubbleTextView.setTextAlpha(f4.floatValue());
                    return;
            }
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            switch (r3) {
                case 0:
                    return a((BubbleTextView) obj);
                default:
                    return a((BubbleTextView) obj);
            }
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ void set(Object obj, Object obj2) {
            switch (r3) {
                case 0:
                    b((BubbleTextView) obj, (Float) obj2);
                    return;
                default:
                    b((BubbleTextView) obj, (Float) obj2);
                    return;
            }
        }
    };
    public static final Property TEXT_ALPHA_PROPERTY = new Property(Float.class, "textAlpha") { // from class: com.android.launcher3.BubbleTextView.1
        public final Float a(BubbleTextView bubbleTextView) {
            switch (r3) {
                case 0:
                    return Float.valueOf(bubbleTextView.mDotParams.scale);
                default:
                    return Float.valueOf(bubbleTextView.mTextAlpha);
            }
        }

        public final void b(BubbleTextView bubbleTextView, Float f4) {
            switch (r3) {
                case 0:
                    bubbleTextView.mDotParams.scale = f4.floatValue();
                    bubbleTextView.invalidate();
                    return;
                default:
                    bubbleTextView.setTextAlpha(f4.floatValue());
                    return;
            }
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            switch (r3) {
                case 0:
                    return a((BubbleTextView) obj);
                default:
                    return a((BubbleTextView) obj);
            }
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ void set(Object obj, Object obj2) {
            switch (r3) {
                case 0:
                    b((BubbleTextView) obj, (Float) obj2);
                    return;
                default:
                    b((BubbleTextView) obj, (Float) obj2);
                    return;
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.BubbleTextView$3  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 extends AnimatorListenerAdapter {
        public AnonymousClass3() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            BubbleTextView.this.mDotScaleAnim = null;
        }
    }

    public BubbleTextView(Context context) {
        this(context, null, 0);
    }

    private void checkForEllipsis() {
        if (FeatureFlags.ENABLE_ICON_LABEL_AUTO_SCALING.get()) {
            float width = (getWidth() - getCompoundPaddingLeft()) - getCompoundPaddingRight();
            if (width <= 0.0f) {
                return;
            }
            setLetterSpacing(0.0f);
            String charSequence = getText().toString();
            TextPaint paint = getPaint();
            if (paint.measureText(charSequence) < width) {
                return;
            }
            float f4 = -0.05f;
            paint.setLetterSpacing(-0.05f);
            if (paint.measureText(charSequence) <= width) {
                float f5 = 0.0f;
                for (int i4 = 0; i4 < 20; i4++) {
                    float f6 = (f5 + f4) / 2.0f;
                    paint.setLetterSpacing(f6);
                    if (paint.measureText(charSequence) < width) {
                        f4 = f6;
                    } else {
                        f5 = f6;
                    }
                }
            }
            paint.setLetterSpacing(0.0f);
            setLetterSpacing(f4);
        }
    }

    private int getModifiedColor() {
        if (this.mTextAlpha == 0.0f) {
            return 0;
        }
        int i4 = this.mTextColor;
        return GraphicsUtils.setColorAlphaBound(i4, Math.round(Color.alpha(i4) * this.mTextAlpha));
    }

    private void setDownloadStateContentDescription(ItemInfoWithIcon itemInfoWithIcon, int i4) {
        if ((itemInfoWithIcon.runtimeStatusFlags & 3072) != 0) {
            String format = NumberFormat.getPercentInstance().format(i4 * 0.01d);
            int i5 = itemInfoWithIcon.runtimeStatusFlags;
            if ((i5 & 1024) != 0) {
                setContentDescription(getContext().getString(R.string.app_installing_title, itemInfoWithIcon.title, format));
            } else if ((i5 & 2048) != 0) {
                setContentDescription(getContext().getString(R.string.app_downloading_title, itemInfoWithIcon.title, format));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTextAlpha(float f4) {
        this.mTextAlpha = f4;
        ColorStateList colorStateList = this.mTextColorStateList;
        if (colorStateList != null) {
            setTextColor(colorStateList);
        } else {
            super.setTextColor(getModifiedColor());
        }
    }

    public void applyCompoundDrawables(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        this.mDisableRelayout = this.mIcon != null;
        int i4 = this.mIconSize;
        drawable.setBounds(0, 0, i4, i4);
        if (this.mLayoutHorizontal) {
            setCompoundDrawablesRelative(drawable, null, null, null);
        } else {
            setCompoundDrawables(null, drawable, null, null);
        }
        FastBitmapDrawable fastBitmapDrawable = this.mIcon;
        if (fastBitmapDrawable != null && (fastBitmapDrawable instanceof PlaceHolderIconDrawable) && this.mEnableIconUpdateAnimation) {
            ((PlaceHolderIconDrawable) fastBitmapDrawable).animateIconUpdate(drawable);
        }
        this.mDisableRelayout = false;
    }

    public final void applyDotState(ItemInfo itemInfo, boolean z4) {
        if (this.mIcon instanceof FastBitmapDrawable) {
            boolean z5 = this.mDotInfo != null;
            DotInfo dotInfoForItem = this.mActivity.getDotInfoForItem(itemInfo);
            this.mDotInfo = dotInfoForItem;
            boolean z6 = dotInfoForItem != null;
            float f4 = z6 ? 1.0f : 0.0f;
            if (this.mDisplay == 1) {
                this.mDotRenderer = this.mActivity.getDeviceProfile().mDotRendererAllApps;
            } else {
                this.mDotRenderer = this.mActivity.getDeviceProfile().mDotRendererWorkSpace;
            }
            if (z5 || z6) {
                if (z4 && (z5 ^ z6) && isShown()) {
                    float[] fArr = {f4};
                    Animator animator = this.mDotScaleAnim;
                    if (animator != null) {
                        animator.cancel();
                    }
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, DOT_SCALE_PROPERTY, fArr);
                    this.mDotScaleAnim = ofFloat;
                    ofFloat.addListener(new AnonymousClass3());
                    this.mDotScaleAnim.start();
                } else {
                    Animator animator2 = this.mDotScaleAnim;
                    if (animator2 != null) {
                        animator2.cancel();
                    }
                    this.mDotParams.scale = f4;
                    invalidate();
                }
            }
            if (TextUtils.isEmpty(itemInfo.contentDescription)) {
                return;
            }
            if (itemInfo.isDisabled()) {
                setContentDescription(getContext().getString(R.string.disabled_app_label, itemInfo.contentDescription));
                return;
            }
            DotInfo dotInfo = this.mDotInfo;
            if (!(dotInfo != null)) {
                setContentDescription(itemInfo.contentDescription);
                return;
            }
            int notificationCount = dotInfo.getNotificationCount();
            String charSequence = itemInfo.contentDescription.toString();
            MessageFormat messageFormat = new MessageFormat(getResources().getString(R.string.dotted_app_label), Locale.getDefault());
            HashMap hashMap = new HashMap();
            hashMap.put("app_name", charSequence);
            hashMap.put("count", Integer.valueOf(notificationCount));
            setContentDescription(messageFormat.format(hashMap));
        }
    }

    public final void applyFromApplicationInfo(AppInfo appInfo) {
        applyIconAndLabel(appInfo);
        setItemInfo(appInfo);
        verifyHighRes();
        if ((appInfo.runtimeStatusFlags & 3072) != 0) {
            applyProgressLevel();
        }
        applyDotState(appInfo, false);
        setDownloadStateContentDescription(appInfo, appInfo.getProgressLevel());
    }

    public final void applyFromItemInfoWithIcon(ItemInfoWithIcon itemInfoWithIcon) {
        applyIconAndLabel(itemInfoWithIcon);
        setItemInfo(itemInfoWithIcon);
        verifyHighRes();
        setDownloadStateContentDescription(itemInfoWithIcon, itemInfoWithIcon.getProgressLevel());
    }

    public void applyFromWorkspaceItem(int i4, WorkspaceItemInfo workspaceItemInfo, boolean z4) {
        applyFromWorkspaceItem(workspaceItemInfo, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void applyIconAndLabel(ItemInfoWithIcon itemInfoWithIcon) {
        boolean shouldUseTheme = shouldUseTheme();
        int i4 = shouldUseTheme;
        if (this.mHideBadge) {
            i4 = (shouldUseTheme ? 1 : 0) | true;
        }
        FastBitmapDrawable newIcon = itemInfoWithIcon.newIcon(i4, getContext());
        this.mDotParams.appColor = newIcon.getIconColor();
        this.mDotParams.dotColor = GraphicsUtils.getAttrColor(R.attr.notificationDotColor, getContext());
        setIcon(newIcon);
        applyLabel(itemInfoWithIcon);
    }

    public void applyLabel(ItemInfoWithIcon itemInfoWithIcon) {
        CharSequence charSequence = itemInfoWithIcon.title;
        if (charSequence != null) {
            this.mLastOriginalText = charSequence;
            this.mLastModifiedText = charSequence;
            this.mBreakPointsIntArray = StringMatcherUtility.getListOfBreakpoints(charSequence, MATCHER);
            setText(charSequence);
        }
        if (itemInfoWithIcon.contentDescription != null) {
            setContentDescription(itemInfoWithIcon.isDisabled() ? getContext().getString(R.string.disabled_app_label, itemInfoWithIcon.contentDescription) : itemInfoWithIcon.contentDescription);
        }
    }

    public final void applyLoadingState(PreloadIconDrawable preloadIconDrawable) {
        if (getTag() instanceof ItemInfoWithIcon) {
            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) getTag();
            if ((workspaceItemInfo.runtimeStatusFlags & 2048) != 0 || workspaceItemInfo.hasPromiseIconUi() || (workspaceItemInfo.runtimeStatusFlags & 1024) != 0 || (FeatureFlags.ENABLE_DOWNLOAD_APP_UX_V2.get() && preloadIconDrawable != null)) {
                if (workspaceItemInfo.getProgressLevel() != 100) {
                    preloadIconDrawable = null;
                }
                FastBitmapDrawable fastBitmapDrawable = this.mIcon;
                PreloadIconDrawable applyProgressLevel = applyProgressLevel();
                if (applyProgressLevel == null || preloadIconDrawable == null) {
                    return;
                }
                applyProgressLevel.maybePerformFinishedAnimation(preloadIconDrawable, new RunnableC0345j(this, fastBitmapDrawable));
            }
        }
    }

    public final PreloadIconDrawable applyProgressLevel() {
        if (getTag() instanceof ItemInfoWithIcon) {
            ItemInfoWithIcon itemInfoWithIcon = (ItemInfoWithIcon) getTag();
            int progressLevel = itemInfoWithIcon.getProgressLevel();
            if (progressLevel >= 100) {
                CharSequence charSequence = itemInfoWithIcon.contentDescription;
                if (charSequence == null) {
                    charSequence = "";
                }
                setContentDescription(charSequence);
            } else if (progressLevel > 0) {
                setDownloadStateContentDescription(itemInfoWithIcon, progressLevel);
            } else {
                setContentDescription(getContext().getString(R.string.app_waiting_download_title, itemInfoWithIcon.title));
            }
            FastBitmapDrawable fastBitmapDrawable = this.mIcon;
            if (fastBitmapDrawable != null) {
                if (!(fastBitmapDrawable instanceof PreloadIconDrawable)) {
                    PreloadIconDrawable makePreloadIcon = makePreloadIcon();
                    setIcon(makePreloadIcon);
                    return makePreloadIcon;
                }
                PreloadIconDrawable preloadIconDrawable = (PreloadIconDrawable) fastBitmapDrawable;
                preloadIconDrawable.setLevel(progressLevel);
                boolean z4 = true;
                if (!FeatureFlags.ENABLE_DOWNLOAD_APP_UX_V2.get() ? itemInfoWithIcon.isAppStartable() : itemInfoWithIcon.getProgressLevel() != 0) {
                    z4 = false;
                }
                preloadIconDrawable.setIsDisabled(z4);
                return preloadIconDrawable;
            }
            return null;
        }
        return null;
    }

    public boolean canShowLongPressPopup() {
        return (getTag() instanceof ItemInfo) && ShortcutUtil.supportsShortcuts((ItemInfo) getTag());
    }

    @Override // android.widget.TextView, android.view.View
    public final void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }

    public void drawDotIfNecessary(Canvas canvas) {
        if (this.mForceHideDot) {
            return;
        }
        if ((this.mDotInfo != null) || this.mDotParams.scale > 0.0f) {
            getIconBounds(this.mDotParams.iconBounds);
            Utilities.scaleRectAboutCenter(this.mDotParams.iconBounds, IconShape.getNormalizationScale());
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            canvas.translate(scrollX, scrollY);
            this.mDotRenderer.draw(canvas, this.mDotParams);
            canvas.translate(-scrollX, -scrollY);
        }
    }

    public final void drawWithoutDot(Canvas canvas) {
        super.onDraw(canvas);
    }

    public CharSequence f() {
        return getText();
    }

    public boolean getForceHideDot() {
        return this.mForceHideDot;
    }

    public final FastBitmapDrawable getIcon() {
        return this.mIcon;
    }

    public void getIconBounds(Rect rect) {
        getIconBounds(this.mIconSize, rect);
    }

    public final int getIconDisplay() {
        return this.mDisplay;
    }

    public final int getIconSize() {
        return this.mIconSize;
    }

    @Override // com.android.launcher3.Reorderable
    public final float getReorderBounceScale() {
        return this.mScaleForReorderBounce;
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public void getSourceVisualDragBounds(Rect rect) {
        getIconBounds(this.mIconSize, rect);
    }

    @Override // com.android.launcher3.Reorderable
    public MultiTranslateDelegate getTranslateDelegate() {
        return this.mTranslateDelegate;
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public final int getViewType() {
        return 0;
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public final void getWorkspaceVisualDragBounds(Rect rect) {
        getIconBounds(this.mIconSize, rect);
    }

    public final PreloadIconDrawable makePreloadIcon() {
        if (getTag() instanceof ItemInfoWithIcon) {
            ItemInfoWithIcon itemInfoWithIcon = (ItemInfoWithIcon) getTag();
            int progressLevel = itemInfoWithIcon.getProgressLevel();
            PreloadIconDrawable newPendingIcon = PreloadIconDrawable.newPendingIcon(getContext(), itemInfoWithIcon);
            newPendingIcon.setLevel(progressLevel);
            boolean z4 = true;
            if (!FeatureFlags.ENABLE_DOWNLOAD_APP_UX_V2.get() ? itemInfoWithIcon.isAppStartable() : itemInfoWithIcon.getProgressLevel() != 0) {
                z4 = false;
            }
            newPendingIcon.setIsDisabled(z4);
            return newPendingIcon;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i4) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i4 + 1);
        if (this.mStayPressed) {
            TextView.mergeDrawableStates(onCreateDrawableState, STATE_PRESSED);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawDotIfNecessary(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z4, int i4, Rect rect) {
        setEllipsize(z4 ? TextUtils.TruncateAt.MARQUEE : TextUtils.TruncateAt.END);
        super.onFocusChanged(z4, i4, rect);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i4, KeyEvent keyEvent) {
        this.mIgnorePressedStateChange = true;
        boolean onKeyUp = super.onKeyUp(i4, keyEvent);
        this.mIgnorePressedStateChange = false;
        refreshDrawableState();
        return onKeyUp;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i4, int i5) {
        if (this.mCenterVertically) {
            Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
            setPadding(getPaddingLeft(), (View.MeasureSpec.getSize(i5) - ((getCompoundDrawablePadding() + this.mIconSize) + ((int) Math.ceil(fontMetrics.bottom - fontMetrics.top)))) / 2, getPaddingRight(), getPaddingBottom());
        }
        if (shouldUseTwoLine() && this.mLastOriginalText != null) {
            int size = (View.MeasureSpec.getSize(i4) - getCompoundPaddingLeft()) - getCompoundPaddingRight();
            CharSequence charSequence = this.mLastOriginalText;
            TextPaint paint = getPaint();
            IntArray intArray = this.mBreakPointsIntArray;
            Character ch = NEW_LINE;
            if (charSequence != null) {
                float f4 = size;
                if (paint.measureText(charSequence, 0, charSequence.length()) > f4) {
                    StringBuilder sb = new StringBuilder();
                    float f5 = 0.0f;
                    int i6 = 0;
                    int i7 = 0;
                    while (i6 < intArray.size() + 1) {
                        CharSequence subSequence = i6 < intArray.size() ? charSequence.subSequence(i7, intArray.get(i6) + 1) : charSequence.subSequence(i7, charSequence.length());
                        f5 += paint.measureText(subSequence, 0, subSequence.length());
                        if (f5 <= f4) {
                            sb.append(subSequence);
                            if (i6 >= intArray.size()) {
                                break;
                            }
                            i7 = intArray.get(i6) + 1;
                            i6++;
                        } else if (i6 != 0) {
                            String subSequence2 = charSequence.subSequence(i7, charSequence.length());
                            int type = Character.getType(Character.codePointAt(subSequence2, 0));
                            if (type == 12 || type == 13) {
                                subSequence2 = subSequence2.length() > 1 ? subSequence2.subSequence(1, subSequence2.length()) : "";
                            }
                            sb.append(ch);
                            sb.append(subSequence2);
                            charSequence = sb.toString();
                        }
                    }
                    charSequence = sb.toString();
                }
            }
            if (!TextUtils.equals(charSequence, this.mLastModifiedText)) {
                this.mLastModifiedText = charSequence;
                setText(charSequence);
                if (TextUtils.indexOf(charSequence, ch.charValue()) != -1) {
                    setSingleLine(false);
                    setMaxLines(2);
                } else {
                    setSingleLine(true);
                    setMaxLines(1);
                }
            }
        }
        super.onMeasure(i4, i5);
    }

    @Override // android.view.View
    public void onSizeChanged(int i4, int i5, int i6, int i7) {
        super.onSizeChanged(i4, i5, i6, i7);
        checkForEllipsis();
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
        super.onTextChanged(charSequence, i4, i5, i6);
        checkForEllipsis();
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && shouldIgnoreTouchDown(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        if (isLongClickable()) {
            super.onTouchEvent(motionEvent);
            this.mLongPressHelper.onTouchEvent(motionEvent);
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onVisibilityAggregated(boolean z4) {
        super.onVisibilityAggregated(z4);
        FastBitmapDrawable fastBitmapDrawable = this.mIcon;
        if (fastBitmapDrawable != null) {
            fastBitmapDrawable.setVisible(z4, false);
        }
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public SafeCloseable prepareDrawDragView() {
        FastBitmapDrawable fastBitmapDrawable = this.mIcon;
        if (fastBitmapDrawable != null) {
            fastBitmapDrawable.resetScale();
        }
        setForceHideDot(true);
        return new C0347k();
    }

    @Override // com.android.launcher3.icons.IconCache.ItemInfoUpdateReceiver
    public final void reapplyItemInfo(ItemInfoWithIcon itemInfoWithIcon) {
        if (getTag() == itemInfoWithIcon) {
            this.mIconLoadRequest = null;
            this.mDisableRelayout = true;
            this.mEnableIconUpdateAnimation = true;
            itemInfoWithIcon.bitmap.icon.prepareToDraw();
            if (itemInfoWithIcon instanceof AppInfo) {
                applyFromApplicationInfo((AppInfo) itemInfoWithIcon);
            } else if (itemInfoWithIcon instanceof WorkspaceItemInfo) {
                applyFromWorkspaceItem(0, (WorkspaceItemInfo) itemInfoWithIcon, false);
                this.mActivity.invalidateParent(itemInfoWithIcon);
            } else {
                applyFromItemInfoWithIcon(itemInfoWithIcon);
            }
            this.mDisableRelayout = false;
            this.mEnableIconUpdateAnimation = false;
        }
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
        if (this.mIgnorePressedStateChange) {
            return;
        }
        super.refreshDrawableState();
    }

    @Override // android.view.View
    public final void requestLayout() {
        if (this.mDisableRelayout) {
            return;
        }
        super.requestLayout();
    }

    public void reset() {
        this.mDotInfo = null;
        DotRenderer.DrawParams drawParams = this.mDotParams;
        drawParams.dotColor = 0;
        drawParams.appColor = 0;
        Animator animator = this.mDotScaleAnim;
        if (animator != null) {
            animator.cancel();
        }
        this.mDotParams.scale = 0.0f;
        this.mForceHideDot = false;
        setBackground(null);
        if (FeatureFlags.ENABLE_TWOLINE_ALLAPPS.get() || FeatureFlags.ENABLE_TWOLINE_DEVICESEARCH.get()) {
            setMaxLines(1);
        }
        setTag(null);
        HandlerRunnable handlerRunnable = this.mIconLoadRequest;
        if (handlerRunnable != null) {
            handlerRunnable.cancel();
            this.mIconLoadRequest = null;
        }
    }

    @Override // android.view.View
    public final void setAccessibilityDelegate(View.AccessibilityDelegate accessibilityDelegate) {
        if (accessibilityDelegate instanceof BaseAccessibilityDelegate) {
            super.setAccessibilityDelegate(accessibilityDelegate);
        }
    }

    public void setDisplay(int i4) {
        this.mDisplay = i4;
    }

    @Override // com.android.launcher3.views.IconLabelDotView
    public final void setForceHideDot(boolean z4) {
        if (this.mForceHideDot == z4) {
            return;
        }
        this.mForceHideDot = z4;
        if (z4) {
            invalidate();
            return;
        }
        if (this.mDotInfo != null) {
            float[] fArr = {0.0f, 1.0f};
            Animator animator = this.mDotScaleAnim;
            if (animator != null) {
                animator.cancel();
            }
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, DOT_SCALE_PROPERTY, fArr);
            this.mDotScaleAnim = ofFloat;
            ofFloat.addListener(new AnonymousClass3());
            this.mDotScaleAnim.start();
        }
    }

    public final void setHideBadge(boolean z4) {
        this.mHideBadge = z4;
    }

    public final void setIcon(FastBitmapDrawable fastBitmapDrawable) {
        if (this.mIsIconVisible) {
            applyCompoundDrawables(fastBitmapDrawable);
        }
        this.mIcon = fastBitmapDrawable;
        if (fastBitmapDrawable != null) {
            fastBitmapDrawable.setVisible(getWindowVisibility() == 0 && isShown(), false);
        }
    }

    public void setIconDisabled(boolean z4) {
        FastBitmapDrawable fastBitmapDrawable = this.mIcon;
        if (fastBitmapDrawable != null) {
            fastBitmapDrawable.setIsDisabled(z4);
        }
    }

    @Override // com.android.launcher3.views.IconLabelDotView
    public final void setIconVisible(boolean z4) {
        FastBitmapDrawable fastBitmapDrawable;
        this.mIsIconVisible = z4;
        if (!z4 && (fastBitmapDrawable = this.mIcon) != null) {
            fastBitmapDrawable.resetScale();
        }
        applyCompoundDrawables(this.mIsIconVisible ? this.mIcon : new ColorDrawable(0));
    }

    public void setItemInfo(ItemInfoWithIcon itemInfoWithIcon) {
        setTag(itemInfoWithIcon);
    }

    public final void setLayoutHorizontal(boolean z4) {
        if (this.mLayoutHorizontal == z4) {
            return;
        }
        this.mLayoutHorizontal = z4;
        applyCompoundDrawables(this.mIsIconVisible ? this.mIcon : new ColorDrawable(0));
    }

    public final void setLongPressTimeoutFactor() {
        this.mLongPressHelper.setLongPressTimeoutFactor();
    }

    @Override // com.android.launcher3.Reorderable
    public final void setReorderBounceScale(float f4) {
        this.mScaleForReorderBounce = f4;
        super.setScaleX(f4);
        super.setScaleY(f4);
    }

    public final void setStayPressed(boolean z4) {
        this.mStayPressed = z4;
        refreshDrawableState();
    }

    @Override // android.widget.TextView
    public final void setTextColor(int i4) {
        this.mTextColor = i4;
        this.mTextColorStateList = null;
        super.setTextColor(getModifiedColor());
    }

    public final void setTextVisibility(boolean z4) {
        setTextAlpha(z4 ? 1.0f : 0.0f);
    }

    public final boolean shouldAnimateIconChange(WorkspaceItemInfo workspaceItemInfo) {
        WorkspaceItemInfo workspaceItemInfo2 = getTag() instanceof WorkspaceItemInfo ? (WorkspaceItemInfo) getTag() : null;
        return (workspaceItemInfo2 != null && workspaceItemInfo2.getTargetComponent() != null && workspaceItemInfo.getTargetComponent() != null && !workspaceItemInfo2.getTargetComponent().equals(workspaceItemInfo.getTargetComponent())) && isShown();
    }

    public boolean shouldIgnoreTouchDown(float f4, float f5) {
        if (this.mDisplay == 5) {
            return false;
        }
        return f5 < ((float) getPaddingTop()) || f4 < ((float) getPaddingLeft()) || f5 > ((float) (getHeight() - getPaddingBottom())) || f4 > ((float) (getWidth() - getPaddingRight()));
    }

    public final boolean shouldTextBeVisible() {
        int i4;
        Object tag = getParent() instanceof FolderIcon ? ((View) getParent()).getTag() : getTag();
        ItemInfo itemInfo = tag instanceof ItemInfo ? (ItemInfo) tag : null;
        return itemInfo == null || !((i4 = itemInfo.container) == -101 || i4 == -103);
    }

    public boolean shouldUseTheme() {
        int i4 = this.mDisplay;
        return i4 == 0 || i4 == 2 || i4 == 5;
    }

    public boolean shouldUseTwoLine() {
        if (FeatureFlags.ENABLE_TWOLINE_ALLAPPS.get() && this.mDisplay == 1) {
            return true;
        }
        return FeatureFlags.ENABLE_TWOLINE_DEVICESEARCH.get() && this.mDisplay == 6;
    }

    public DragOptions.PreDragCondition startLongPressAction() {
        PopupContainerWithArrow showForIcon = PopupContainerWithArrow.showForIcon(this);
        if (showForIcon != null) {
            return showForIcon.createPreDragCondition(true);
        }
        return null;
    }

    public final void verifyHighRes() {
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

    public BubbleTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void applyFromWorkspaceItem(WorkspaceItemInfo workspaceItemInfo, PreloadIconDrawable preloadIconDrawable) {
        applyIconAndLabel(workspaceItemInfo);
        setItemInfo(workspaceItemInfo);
        applyLoadingState(preloadIconDrawable);
        applyDotState(workspaceItemInfo, false);
        setDownloadStateContentDescription(workspaceItemInfo, workspaceItemInfo.getProgressLevel());
    }

    public final void getIconBounds(int i4, Rect rect) {
        rect.set(0, 0, i4, i4);
        if (this.mLayoutHorizontal) {
            int height = (getHeight() - i4) / 2;
            if (this.mIsRtl) {
                rect.offsetTo((getWidth() - i4) - getPaddingRight(), height);
                return;
            } else {
                rect.offsetTo(getPaddingLeft(), height);
                return;
            }
        }
        rect.offset((getWidth() - i4) / 2, getPaddingTop());
    }

    public BubbleTextView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        int i5;
        this.mScaleForReorderBounce = 1.0f;
        this.mTranslateDelegate = new MultiTranslateDelegate(5, this);
        this.mHideBadge = false;
        this.mIsIconVisible = true;
        this.mTextAlpha = 1.0f;
        this.mDisableRelayout = false;
        this.mEnableIconUpdateAnimation = false;
        ActivityContext activityContext = (ActivityContext) ActivityContext.lookupContext(context);
        this.mActivity = activityContext;
        FastBitmapDrawable.setFlagHoverEnabled(FeatureFlags.ENABLE_CURSOR_HOVER_STATES.get());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.BubbleTextView, i4, 0);
        this.mLayoutHorizontal = obtainStyledAttributes.getBoolean(3, false);
        this.mIsRtl = getResources().getConfiguration().getLayoutDirection() == 1;
        DeviceProfile deviceProfile = activityContext.getDeviceProfile();
        int integer = obtainStyledAttributes.getInteger(1, 0);
        this.mDisplay = integer;
        if (integer == 0) {
            setTextSize(0, deviceProfile.iconTextSizePx);
            setCompoundDrawablePadding(deviceProfile.iconDrawablePaddingPx);
            i5 = deviceProfile.iconSizePx;
            this.mCenterVertically = deviceProfile.iconCenterVertically;
        } else if (integer == 1 || integer == 8 || integer == 9) {
            setTextSize(0, deviceProfile.allAppsIconTextSizePx);
            setCompoundDrawablePadding(deviceProfile.allAppsIconDrawablePaddingPx);
            i5 = deviceProfile.allAppsIconSizePx;
        } else if (integer == 2) {
            setTextSize(0, deviceProfile.folderChildTextSizePx);
            setCompoundDrawablePadding(deviceProfile.folderChildDrawablePaddingPx);
            i5 = deviceProfile.folderChildIconSizePx;
        } else if (integer == 6) {
            setTextSize(0, deviceProfile.allAppsIconTextSizePx);
            i5 = getResources().getDimensionPixelSize(R.dimen.search_row_icon_size);
        } else if (integer == 7) {
            i5 = getResources().getDimensionPixelSize(R.dimen.search_row_small_icon_size);
        } else if (integer == 5) {
            i5 = deviceProfile.iconSizePx;
        } else {
            i5 = deviceProfile.iconSizePx;
        }
        this.mCenterVertically = obtainStyledAttributes.getBoolean(0, false);
        this.mIconSize = obtainStyledAttributes.getDimensionPixelSize(2, i5);
        obtainStyledAttributes.recycle();
        this.mLongPressHelper = new CheckLongPressHelper(this, null);
        this.mDotParams = new DotRenderer.DrawParams();
        setEllipsize(TextUtils.TruncateAt.END);
        setAccessibilityDelegate(activityContext.getAccessibilityDelegate());
        setTextAlpha(1.0f);
    }

    @Override // android.widget.TextView
    public final void setTextColor(ColorStateList colorStateList) {
        this.mTextColor = colorStateList.getDefaultColor();
        this.mTextColorStateList = colorStateList;
        if (Float.compare(this.mTextAlpha, 1.0f) == 0) {
            super.setTextColor(colorStateList);
        } else {
            super.setTextColor(getModifiedColor());
        }
    }
}
