package com.android.launcher3.folder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.ShortcutAndWidgetContainer;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.PropertyResetListener;
import com.android.launcher3.celllayout.CellLayoutLayoutParams;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.views.BaseDragLayer;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class FolderAnimationManager {
    private FolderPagedView mContent;
    private Context mContext;
    private final int mDelay;
    private DeviceProfile mDeviceProfile;
    private final int mDuration;
    private Folder mFolder;
    private GradientDrawable mFolderBackground;
    private FolderIcon mFolderIcon;
    private final TimeInterpolator mFolderInterpolator;
    private final boolean mIsOpening;
    private final TimeInterpolator mLargeFolderPreviewItemCloseInterpolator;
    private final TimeInterpolator mLargeFolderPreviewItemOpenInterpolator;
    private PreviewBackground mPreviewBackground;
    private final FolderGridOrganizer mPreviewVerifier;
    private final PreviewItemDrawingParams mTmpParams = new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f);

    public FolderAnimationManager(Folder folder, boolean z4) {
        this.mFolder = folder;
        this.mContent = folder.mContent;
        this.mFolderBackground = (GradientDrawable) folder.getBackground();
        FolderIcon folderIcon = folder.mFolderIcon;
        this.mFolderIcon = folderIcon;
        this.mPreviewBackground = folderIcon.mBackground;
        this.mContext = folder.getContext();
        DeviceProfile deviceProfile = folder.mActivityContext.getDeviceProfile();
        this.mDeviceProfile = deviceProfile;
        this.mPreviewVerifier = new FolderGridOrganizer(deviceProfile.inv);
        this.mIsOpening = z4;
        Resources resources = this.mContent.getResources();
        this.mDuration = resources.getInteger(R.integer.config_materialFolderExpandDuration);
        this.mDelay = resources.getInteger(R.integer.config_folderDelay);
        this.mFolderInterpolator = AnimationUtils.loadInterpolator(this.mContext, R.interpolator.standard_interpolator);
        this.mLargeFolderPreviewItemOpenInterpolator = AnimationUtils.loadInterpolator(this.mContext, R.interpolator.large_folder_preview_item_open_interpolator);
        this.mLargeFolderPreviewItemCloseInterpolator = AnimationUtils.loadInterpolator(this.mContext, R.interpolator.standard_accelerate_interpolator);
    }

    private void play(AnimatorSet animatorSet, Animator animator) {
        animator.setStartDelay(animator.getStartDelay());
        animator.setDuration(this.mDuration);
        animatorSet.play(animator);
    }

    public final AnimatorSet getAnimator() {
        boolean z4;
        Animator ofArgb;
        float f4;
        int i4;
        int i5;
        TimeInterpolator timeInterpolator;
        boolean z5;
        int i6;
        ClippedFolderIconLayoutRule clippedFolderIconLayoutRule;
        Iterator it;
        float f5;
        BaseDragLayer.LayoutParams layoutParams = (BaseDragLayer.LayoutParams) this.mFolder.getLayoutParams();
        this.mFolderIcon.getPreviewItemManager().recomputePreviewDrawingParams();
        ClippedFolderIconLayoutRule clippedFolderIconLayoutRule2 = this.mFolderIcon.mPreviewLayoutRule;
        FolderInfo folderInfo = this.mFolder.mInfo;
        FolderGridOrganizer folderGridOrganizer = this.mPreviewVerifier;
        folderGridOrganizer.setFolderInfo(folderInfo);
        ArrayList previewItemsForPage = folderGridOrganizer.previewItemsForPage(0, this.mFolder.getIconsInReadingOrder());
        Rect rect = new Rect();
        float descendantRectRelativeToSelf = this.mFolder.mActivityContext.getDragLayer().getDescendantRectRelativeToSelf(this.mFolderIcon, rect);
        int scaledRadius = this.mPreviewBackground.getScaledRadius();
        float f6 = scaledRadius * 2 * descendantRectRelativeToSelf;
        float iconSize = clippedFolderIconLayoutRule2.getIconSize() * clippedFolderIconLayoutRule2.scaleForItem(previewItemsForPage.size());
        float iconSize2 = (iconSize / ((BubbleTextView) previewItemsForPage.get(0)).getIconSize()) * descendantRectRelativeToSelf;
        boolean z6 = this.mIsOpening;
        float f7 = z6 ? iconSize2 : 1.0f;
        this.mFolder.setPivotX(0.0f);
        this.mFolder.setPivotY(0.0f);
        this.mFolder.mContent.setScaleX(f7);
        this.mFolder.mContent.setScaleY(f7);
        this.mFolder.mContent.setPivotX(0.0f);
        this.mFolder.mContent.setPivotY(0.0f);
        this.mFolder.mFooter.setScaleX(f7);
        this.mFolder.mFooter.setScaleY(f7);
        this.mFolder.mFooter.setPivotX(0.0f);
        this.mFolder.mFooter.setPivotY(0.0f);
        int i7 = (int) (iconSize / 2.0f);
        if (Utilities.isRtl(this.mContext.getResources())) {
            i7 = (int) (((((FrameLayout.LayoutParams) layoutParams).width * iconSize2) - f6) - i7);
        }
        int paddingLeft = (int) (this.mContent.getPaddingLeft() * iconSize2);
        int paddingTop = (int) (this.mContent.getPaddingTop() * iconSize2);
        int paddingLeft2 = this.mFolder.getPaddingLeft() + rect.left;
        PreviewBackground previewBackground = this.mPreviewBackground;
        int paddingTop2 = this.mFolder.getPaddingTop() + rect.top;
        PreviewBackground previewBackground2 = this.mPreviewBackground;
        float round = (((Math.round((previewBackground.basePreviewOffsetX - (previewBackground.getScaledRadius() - (previewBackground.previewSize / 2))) * descendantRectRelativeToSelf) + paddingLeft2) - paddingLeft) - i7) - layoutParams.f5328x;
        float round2 = ((Math.round((previewBackground2.basePreviewOffsetY - (previewBackground2.getScaledRadius() - (previewBackground2.previewSize / 2))) * descendantRectRelativeToSelf) + paddingTop2) - paddingTop) - layoutParams.f5329y;
        int attrColor = GraphicsUtils.getAttrColor(R.attr.folderPreviewColor, this.mContext);
        int attrColor2 = GraphicsUtils.getAttrColor(R.attr.folderBackgroundColor, this.mContext);
        this.mFolderBackground.mutate();
        this.mFolderBackground.setColor(z6 ? attrColor : attrColor2);
        int i8 = paddingLeft + i7;
        int i9 = i7;
        Rect rect2 = new Rect(i8, paddingTop, Math.round(i8 + f6), Math.round(paddingTop + f6));
        Rect rect3 = new Rect(0, 0, ((FrameLayout.LayoutParams) layoutParams).width, ((FrameLayout.LayoutParams) layoutParams).height);
        float cornerRadius = this.mFolderBackground.getCornerRadius();
        AnimatorSet animatorSet = new AnimatorSet();
        PropertyResetListener propertyResetListener = new PropertyResetListener(BubbleTextView.TEXT_ALPHA_PROPERTY, Float.valueOf(1.0f));
        Folder folder = this.mFolder;
        int currentPage = folder.mContent.getCurrentPage();
        ArrayList iconsInReadingOrder = folder.getIconsInReadingOrder();
        int pageCount = folder.mContent.getPageCount() - 1;
        int size = iconsInReadingOrder.size();
        int itemsPerPage = folder.mContent.itemsPerPage();
        int i10 = currentPage == pageCount ? size - (itemsPerPage * currentPage) : itemsPerPage;
        int i11 = currentPage * itemsPerPage;
        ArrayList arrayList = new ArrayList(i10);
        int i12 = i11;
        for (int min = Math.min(i11 + i10, iconsInReadingOrder.size()); i12 < min; min = min) {
            arrayList.add((BubbleTextView) iconsInReadingOrder.get(i12));
            i12++;
        }
        Iterator it2 = arrayList.iterator();
        while (true) {
            z4 = true;
            if (!it2.hasNext()) {
                break;
            }
            BubbleTextView bubbleTextView = (BubbleTextView) it2.next();
            if (z6) {
                bubbleTextView.setTextVisibility(false);
            }
            if (bubbleTextView.shouldTextBeVisible() && z6) {
                it = it2;
                f5 = 1.0f;
            } else {
                it = it2;
                f5 = 0.0f;
            }
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(bubbleTextView, BubbleTextView.TEXT_ALPHA_PROPERTY, f5);
            ofFloat.addListener(propertyResetListener);
            play(animatorSet, ofFloat);
            it2 = it;
        }
        GradientDrawable gradientDrawable = this.mFolderBackground;
        if (z6) {
            ofArgb = ObjectAnimator.ofArgb(gradientDrawable, "color", attrColor, attrColor2);
        } else {
            ofArgb = ObjectAnimator.ofArgb(gradientDrawable, "color", attrColor2, attrColor);
        }
        play(animatorSet, ofArgb);
        play(animatorSet, getAnimator(this.mFolder, View.TRANSLATION_X, round, 0.0f));
        play(animatorSet, getAnimator(this.mFolder, View.TRANSLATION_Y, round2, 0.0f));
        View view = this.mFolder.mContent;
        Property property = LauncherAnimUtils.SCALE_PROPERTY;
        play(animatorSet, getAnimator(view, property, iconSize2, 1.0f));
        play(animatorSet, getAnimator(this.mFolder.mFooter, property, iconSize2, 1.0f));
        boolean z7 = this.mFolder.getItemCount() > 4;
        int i13 = this.mDuration;
        if (!z7) {
            f4 = 0.0f;
            i4 = i13;
            i5 = 0;
        } else if (z6) {
            f4 = 0.0f;
            this.mFolder.mFooter.setAlpha(0.0f);
            i5 = i13 - 128;
            i4 = 128;
        } else {
            f4 = 0.0f;
            i5 = 0;
            i4 = 0;
        }
        Animator animator = getAnimator(this.mFolder.mFooter, View.ALPHA, f4, 1.0f);
        animator.setStartDelay(i5);
        animator.setDuration(i4);
        animatorSet.play(animator);
        boolean z8 = !z6;
        play(animatorSet, IconShape.getShape().createRevealAnimator(this.mFolder, rect2, rect3, cornerRadius, z8));
        DeviceProfile deviceProfile = this.mDeviceProfile;
        Point point = deviceProfile.folderCellLayoutBorderSpacePx;
        int i14 = (deviceProfile.folderCellWidthPx * 2) + point.x;
        int i15 = (deviceProfile.folderCellHeightPx * 2) + point.y;
        FolderPagedView folderPagedView = this.mContent;
        int currentPage2 = ((z6 ? folderPagedView.getCurrentPage() : folderPagedView.getDestinationPage()) * ((FrameLayout.LayoutParams) layoutParams).width) + this.mContent.getPaddingLeft();
        play(animatorSet, IconShape.getShape().createRevealAnimator(this.mFolder.mContent, new Rect(currentPage2, 0, i14 + currentPage2, i15), new Rect(currentPage2, 0, ((FrameLayout.LayoutParams) layoutParams).width + currentPage2, ((FrameLayout.LayoutParams) layoutParams).height), cornerRadius, z8));
        this.mFolder.mFolderName.setAlpha(z6 ? 0.0f : 1.0f);
        Animator animator2 = getAnimator(this.mFolder.mFolderName, View.ALPHA, 0.0f, 1.0f);
        long j4 = z6 ? 32L : 0L;
        int i16 = z6 ? i13 - 32 : 32;
        animator2.setStartDelay(j4);
        animator2.setDuration(i16);
        animatorSet.play(animator2);
        float contentAreaHeight = this.mFolder.getContentAreaHeight();
        play(animatorSet, getAnimator(this.mFolder.mFooter, View.TRANSLATION_Y, -(contentAreaHeight - (contentAreaHeight * iconSize2)), 0.0f));
        int i17 = i13 / 2;
        Folder folder2 = this.mFolder;
        Animator animator3 = getAnimator(folder2, View.TRANSLATION_Z, -folder2.getElevation(), 0.0f);
        animator3.setStartDelay(z6 ? i17 : 0L);
        animator3.setDuration(i17);
        animatorSet.play(animator3);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.folder.FolderAnimationManager.1
            private CellLayout mCellLayout;
            private boolean mCellLayoutClipChildren;
            private boolean mCellLayoutClipPadding;
            private boolean mContentClipChildren;
            private boolean mContentClipToPadding;
            private boolean mFolderClipChildren;
            private boolean mFolderClipToPadding;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator4) {
                super.onAnimationEnd(animator4);
                FolderAnimationManager.this.mFolder.setTranslationX(0.0f);
                FolderAnimationManager.this.mFolder.setTranslationY(0.0f);
                FolderAnimationManager.this.mFolder.setTranslationZ(0.0f);
                FolderAnimationManager.this.mFolder.mContent.setScaleX(1.0f);
                FolderAnimationManager.this.mFolder.mContent.setScaleY(1.0f);
                FolderAnimationManager.this.mFolder.mFooter.setScaleX(1.0f);
                FolderAnimationManager.this.mFolder.mFooter.setScaleY(1.0f);
                FolderAnimationManager.this.mFolder.mFooter.setTranslationX(0.0f);
                FolderAnimationManager.this.mFolder.mFolderName.setAlpha(1.0f);
                FolderAnimationManager.this.mFolder.setClipChildren(this.mFolderClipChildren);
                FolderAnimationManager.this.mFolder.setClipToPadding(this.mFolderClipToPadding);
                FolderAnimationManager.this.mContent.setClipChildren(this.mContentClipChildren);
                FolderAnimationManager.this.mContent.setClipToPadding(this.mContentClipToPadding);
                this.mCellLayout.setClipChildren(this.mCellLayoutClipChildren);
                this.mCellLayout.setClipToPadding(this.mCellLayoutClipPadding);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator4) {
                super.onAnimationStart(animator4);
                this.mCellLayout = FolderAnimationManager.this.mContent.getCurrentCellLayout();
                this.mFolderClipChildren = FolderAnimationManager.this.mFolder.getClipChildren();
                this.mFolderClipToPadding = FolderAnimationManager.this.mFolder.getClipToPadding();
                this.mContentClipChildren = FolderAnimationManager.this.mContent.getClipChildren();
                this.mContentClipToPadding = FolderAnimationManager.this.mContent.getClipToPadding();
                this.mCellLayoutClipChildren = this.mCellLayout.getClipChildren();
                this.mCellLayoutClipPadding = this.mCellLayout.getClipToPadding();
                FolderAnimationManager.this.mFolder.setClipChildren(false);
                FolderAnimationManager.this.mFolder.setClipToPadding(false);
                FolderAnimationManager.this.mContent.setClipChildren(false);
                FolderAnimationManager.this.mContent.setClipToPadding(false);
                this.mCellLayout.setClipChildren(false);
                this.mCellLayout.setClipToPadding(false);
            }
        });
        Iterator<Animator> it3 = animatorSet.getChildAnimations().iterator();
        while (true) {
            boolean hasNext = it3.hasNext();
            timeInterpolator = this.mFolderInterpolator;
            if (!hasNext) {
                break;
            }
            it3.next().setInterpolator(timeInterpolator);
        }
        int i18 = scaledRadius - (this.mPreviewBackground.previewSize / 2);
        float f8 = iconSize2 / descendantRectRelativeToSelf;
        int i19 = ((int) (i9 / descendantRectRelativeToSelf)) + i18;
        ClippedFolderIconLayoutRule clippedFolderIconLayoutRule3 = this.mFolderIcon.mPreviewLayoutRule;
        boolean z9 = this.mFolder.mContent.getCurrentPage() == 0;
        int currentPage3 = z9 ? 0 : this.mFolder.mContent.getCurrentPage();
        folderGridOrganizer.setFolderInfo(this.mFolder.mInfo);
        ArrayList previewItemsForPage2 = folderGridOrganizer.previewItemsForPage(currentPage3, this.mFolder.getIconsInReadingOrder());
        int size2 = previewItemsForPage2.size();
        int i20 = z9 ? size2 : 4;
        if (this.mFolder.getItemCount() > 4) {
            if (z6) {
                timeInterpolator = this.mLargeFolderPreviewItemOpenInterpolator;
            } else {
                timeInterpolator = this.mLargeFolderPreviewItemCloseInterpolator;
            }
        }
        int i21 = 0;
        ShortcutAndWidgetContainer shortcutsAndWidgets = this.mContent.getPageAt(0).getShortcutsAndWidgets();
        while (i21 < size2) {
            final BubbleTextView bubbleTextView2 = (BubbleTextView) previewItemsForPage2.get(i21);
            CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) bubbleTextView2.getLayoutParams();
            cellLayoutLayoutParams.isLockedToGrid = z4;
            shortcutsAndWidgets.setupLp(bubbleTextView2);
            float iconSize3 = (clippedFolderIconLayoutRule3.getIconSize() * clippedFolderIconLayoutRule3.scaleForItem(i20)) / ((BubbleTextView) previewItemsForPage2.get(i21)).getIconSize();
            final float f9 = iconSize3 / f8;
            ShortcutAndWidgetContainer shortcutAndWidgetContainer = shortcutsAndWidgets;
            float f10 = z6 ? f9 : 1.0f;
            bubbleTextView2.setScaleX(f10);
            bubbleTextView2.setScaleY(f10);
            PreviewItemDrawingParams previewItemDrawingParams = this.mTmpParams;
            clippedFolderIconLayoutRule3.computePreviewItemDrawingParams(i21, i20, previewItemDrawingParams);
            int i22 = i21;
            int i23 = i20;
            int iconSize4 = (int) (((previewItemDrawingParams.transX - (((int) ((((ViewGroup.MarginLayoutParams) cellLayoutLayoutParams).width - bubbleTextView2.getIconSize()) * iconSize3)) / 2)) + i19) / f8);
            float paddingTop3 = bubbleTextView2.getPaddingTop() * iconSize3;
            int i24 = size2;
            final float f11 = iconSize4 - cellLayoutLayoutParams.f4575x;
            final float f12 = ((int) (((previewItemDrawingParams.transY + i18) - paddingTop3) / f8)) - cellLayoutLayoutParams.f4576y;
            Animator animator4 = getAnimator(bubbleTextView2, View.TRANSLATION_X, f11, 0.0f);
            animator4.setInterpolator(timeInterpolator);
            play(animatorSet, animator4);
            Animator animator5 = getAnimator(bubbleTextView2, View.TRANSLATION_Y, f12, 0.0f);
            animator5.setInterpolator(timeInterpolator);
            play(animatorSet, animator5);
            int i25 = i18;
            Animator animator6 = getAnimator(bubbleTextView2, LauncherAnimUtils.SCALE_PROPERTY, f9, 1.0f);
            animator6.setInterpolator(timeInterpolator);
            play(animatorSet, animator6);
            float f13 = f8;
            if (this.mFolder.getItemCount() > 4) {
                int i26 = this.mDelay;
                if (!z6) {
                    i26 *= 2;
                }
                z5 = z6;
                if (z6) {
                    long j5 = i26;
                    animator4.setStartDelay(j5);
                    animator5.setStartDelay(j5);
                    animator6.setStartDelay(j5);
                }
                i6 = i19;
                clippedFolderIconLayoutRule = clippedFolderIconLayoutRule3;
                long j6 = i26;
                animator4.setDuration(animator4.getDuration() - j6);
                animator5.setDuration(animator5.getDuration() - j6);
                animator6.setDuration(animator6.getDuration() - j6);
            } else {
                z5 = z6;
                i6 = i19;
                clippedFolderIconLayoutRule = clippedFolderIconLayoutRule3;
            }
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.folder.FolderAnimationManager.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator7) {
                    super.onAnimationEnd(animator7);
                    bubbleTextView2.setTranslationX(0.0f);
                    bubbleTextView2.setTranslationY(0.0f);
                    bubbleTextView2.setScaleX(1.0f);
                    bubbleTextView2.setScaleY(1.0f);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator7) {
                    super.onAnimationStart(animator7);
                    if (FolderAnimationManager.this.mIsOpening) {
                        bubbleTextView2.setTranslationX(f11);
                        bubbleTextView2.setTranslationY(f12);
                        bubbleTextView2.setScaleX(f9);
                        bubbleTextView2.setScaleY(f9);
                    }
                }
            });
            i21 = i22 + 1;
            shortcutsAndWidgets = shortcutAndWidgetContainer;
            timeInterpolator = timeInterpolator;
            i20 = i23;
            size2 = i24;
            z6 = z5;
            i18 = i25;
            f8 = f13;
            i19 = i6;
            clippedFolderIconLayoutRule3 = clippedFolderIconLayoutRule;
            z4 = true;
        }
        return animatorSet;
    }

    private Animator getAnimator(View view, Property property, float f4, float f5) {
        if (this.mIsOpening) {
            return ObjectAnimator.ofFloat(view, property, f4, f5);
        }
        return ObjectAnimator.ofFloat(view, property, f5, f4);
    }
}
