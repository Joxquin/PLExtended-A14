package com.android.launcher3.folder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.FloatProperty;
import android.view.View;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.Utilities;
import com.android.launcher3.graphics.PreloadIconDrawable;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.views.ActivityContext;
import com.android.quickstep.util.WorkspaceRevealAnim;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class PreviewItemManager {
    private static final FloatProperty CURRENT_PAGE_ITEMS_TRANS_X = new FloatProperty() { // from class: com.android.launcher3.folder.PreviewItemManager.1
        @Override // android.util.Property
        public final Float get(Object obj) {
            return Float.valueOf(((PreviewItemManager) obj).mCurrentPageItemsTransX);
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f4) {
            PreviewItemManager previewItemManager = (PreviewItemManager) obj;
            previewItemManager.mCurrentPageItemsTransX = f4;
            previewItemManager.onParamsChanged();
        }
    };
    private final float mClipThreshold;
    private final Context mContext;
    private final FolderIcon mIcon;
    private final int mIconSize;
    private boolean mShouldSlideInFirstPage;
    private float mIntrinsicIconSize = -1.0f;
    private int mTotalWidth = -1;
    private int mPrevTopPadding = -1;
    private FastBitmapDrawable mReferenceDrawable = null;
    private int mNumOfPrevItems = 0;
    private ArrayList mFirstPageParams = new ArrayList();
    private ArrayList mCurrentPageParams = new ArrayList();
    private float mCurrentPageItemsTransX = 0.0f;

    public PreviewItemManager(FolderIcon folderIcon) {
        Context context = folderIcon.getContext();
        this.mContext = context;
        this.mIcon = folderIcon;
        this.mIconSize = ((ActivityContext) ActivityContext.lookupContext(context)).getDeviceProfile().folderChildIconSizePx;
        this.mClipThreshold = Utilities.dpToPx(1.0f);
    }

    private void computePreviewDrawingParams(int i4, int i5) {
        float f4 = i4;
        int i6 = (this.mIntrinsicIconSize > f4 ? 1 : (this.mIntrinsicIconSize == f4 ? 0 : -1));
        FolderIcon folderIcon = this.mIcon;
        if (i6 == 0 && this.mTotalWidth == i5 && this.mPrevTopPadding == folderIcon.getPaddingTop()) {
            return;
        }
        this.mIntrinsicIconSize = f4;
        this.mTotalWidth = i5;
        this.mPrevTopPadding = folderIcon.getPaddingTop();
        folderIcon.mBackground.setup(folderIcon.getContext(), folderIcon.mActivity, folderIcon, this.mTotalWidth, folderIcon.getPaddingTop());
        folderIcon.mPreviewLayoutRule.init(folderIcon.mBackground.previewSize, this.mIntrinsicIconSize, Utilities.isRtl(folderIcon.getResources()));
        updatePreviewItems(false);
    }

    private void setDrawable(PreviewItemDrawingParams previewItemDrawingParams, WorkspaceItemInfo workspaceItemInfo) {
        boolean hasPromiseIconUi = workspaceItemInfo.hasPromiseIconUi();
        Context context = this.mContext;
        if (hasPromiseIconUi || (workspaceItemInfo.runtimeStatusFlags & 3072) != 0) {
            PreloadIconDrawable newPendingIcon = PreloadIconDrawable.newPendingIcon(context, workspaceItemInfo);
            newPendingIcon.setLevel(workspaceItemInfo.getProgressLevel());
            previewItemDrawingParams.drawable = newPendingIcon;
        } else {
            previewItemDrawingParams.drawable = workspaceItemInfo.newIcon(1, context);
        }
        FastBitmapDrawable fastBitmapDrawable = previewItemDrawingParams.drawable;
        int i4 = this.mIconSize;
        fastBitmapDrawable.setBounds(0, 0, i4, i4);
        previewItemDrawingParams.item = workspaceItemInfo;
        previewItemDrawingParams.drawable.setCallback(this.mIcon);
    }

    private void updateTransitionParam(PreviewItemDrawingParams previewItemDrawingParams, WorkspaceItemInfo workspaceItemInfo, int i4, int i5, int i6) {
        setDrawable(previewItemDrawingParams, workspaceItemInfo);
        FolderPreviewItemAnim folderPreviewItemAnim = new FolderPreviewItemAnim(this, previewItemDrawingParams, i4, i6, i5, i6, 400, null);
        FolderPreviewItemAnim folderPreviewItemAnim2 = previewItemDrawingParams.anim;
        if (folderPreviewItemAnim2 != null && !Arrays.equals(folderPreviewItemAnim2.finalState, folderPreviewItemAnim.finalState)) {
            previewItemDrawingParams.anim.cancel();
        }
        previewItemDrawingParams.anim = folderPreviewItemAnim;
    }

    public final void buildParamsForPage(int i4, ArrayList arrayList, boolean z4) {
        FolderIcon folderIcon = this.mIcon;
        FolderGridOrganizer folderGridOrganizer = folderIcon.mPreviewVerifier;
        folderGridOrganizer.setFolderInfo(folderIcon.mInfo);
        ArrayList previewItemsForPage = folderGridOrganizer.previewItemsForPage(i4, folderIcon.mInfo.contents);
        while (previewItemsForPage.size() < arrayList.size()) {
            arrayList.remove(arrayList.size() - 1);
        }
        while (previewItemsForPage.size() > arrayList.size()) {
            arrayList.add(new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f));
        }
        int size = i4 == 0 ? previewItemsForPage.size() : 4;
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            PreviewItemDrawingParams previewItemDrawingParams = (PreviewItemDrawingParams) arrayList.get(i5);
            setDrawable(previewItemDrawingParams, (WorkspaceItemInfo) previewItemsForPage.get(i5));
            if (z4) {
                FolderPreviewItemAnim folderPreviewItemAnim = new FolderPreviewItemAnim(this, previewItemDrawingParams, i5, this.mNumOfPrevItems, i5, size, 400, null);
                FolderPreviewItemAnim folderPreviewItemAnim2 = previewItemDrawingParams.anim;
                if (folderPreviewItemAnim2 != null) {
                    if (!Arrays.equals(folderPreviewItemAnim2.finalState, folderPreviewItemAnim.finalState)) {
                        previewItemDrawingParams.anim.cancel();
                    }
                }
                previewItemDrawingParams.anim = folderPreviewItemAnim;
                folderPreviewItemAnim.start();
            } else {
                FolderPreviewItemAnim folderPreviewItemAnim3 = previewItemDrawingParams.anim;
                if (folderPreviewItemAnim3 != null) {
                    folderPreviewItemAnim3.cancel();
                }
                computePreviewItemDrawingParams(i5, size, previewItemDrawingParams);
                if (this.mReferenceDrawable == null) {
                    this.mReferenceDrawable = previewItemDrawingParams.drawable;
                }
            }
        }
    }

    public final PreviewItemDrawingParams computePreviewItemDrawingParams(int i4, int i5, PreviewItemDrawingParams previewItemDrawingParams) {
        FolderIcon folderIcon = this.mIcon;
        if (i4 == -1) {
            float f4 = folderIcon.mActivity.getDeviceProfile().iconSizePx;
            float f5 = (folderIcon.mBackground.previewSize - f4) / 2.0f;
            previewItemDrawingParams.update(f5, f5, f4 / this.mReferenceDrawable.getIntrinsicWidth());
            return previewItemDrawingParams;
        }
        return folderIcon.mPreviewLayoutRule.computePreviewItemDrawingParams(i4, i5, previewItemDrawingParams);
    }

    public final FolderPreviewItemAnim createFirstItemAnimation(boolean z4, Runnable runnable) {
        return z4 ? new FolderPreviewItemAnim(this, (PreviewItemDrawingParams) this.mFirstPageParams.get(0), 0, 2, -1, -1, 200, runnable) : new FolderPreviewItemAnim(this, (PreviewItemDrawingParams) this.mFirstPageParams.get(0), -1, -1, 0, 2, WorkspaceRevealAnim.DURATION_MS, runnable);
    }

    public final void draw(Canvas canvas) {
        PreviewBackground previewBackground;
        float f4;
        int saveCount = canvas.getSaveCount();
        Path clipPath = this.mIcon.mBackground.getClipPath();
        boolean z4 = this.mShouldSlideInFirstPage;
        float f5 = this.mClipThreshold;
        if (z4) {
            drawParams(canvas, this.mCurrentPageParams, new PointF(previewBackground.basePreviewOffsetX + this.mCurrentPageItemsTransX, previewBackground.basePreviewOffsetY), this.mCurrentPageItemsTransX > f5, clipPath);
            f4 = this.mCurrentPageItemsTransX - 200.0f;
        } else {
            f4 = 0.0f;
        }
        drawParams(canvas, this.mFirstPageParams, new PointF(previewBackground.basePreviewOffsetX + f4, previewBackground.basePreviewOffsetY), f4 < (-f5), clipPath);
        canvas.restoreToCount(saveCount);
    }

    public final void drawParams(Canvas canvas, ArrayList arrayList, PointF pointF, boolean z4, Path path) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            PreviewItemDrawingParams previewItemDrawingParams = (PreviewItemDrawingParams) arrayList.get(size);
            if (!previewItemDrawingParams.hidden) {
                boolean z5 = (previewItemDrawingParams.index == -2.0f) | z4;
                canvas.save();
                if (z5) {
                    canvas.clipPath(path);
                }
                canvas.translate(pointF.x + previewItemDrawingParams.transX, pointF.y + previewItemDrawingParams.transY);
                float f4 = previewItemDrawingParams.scale;
                canvas.scale(f4, f4);
                FastBitmapDrawable fastBitmapDrawable = previewItemDrawingParams.drawable;
                if (fastBitmapDrawable != null) {
                    Rect bounds = fastBitmapDrawable.getBounds();
                    canvas.save();
                    canvas.translate(-bounds.left, -bounds.top);
                    canvas.scale(this.mIntrinsicIconSize / bounds.width(), this.mIntrinsicIconSize / bounds.height());
                    fastBitmapDrawable.draw(canvas);
                    canvas.restore();
                }
                canvas.restore();
            }
        }
    }

    public final float getIntrinsicIconSize() {
        return this.mIntrinsicIconSize;
    }

    public final void hidePreviewItem(int i4, boolean z4) {
        int max = Math.max(this.mFirstPageParams.size() - 4, 0) + i4;
        PreviewItemDrawingParams previewItemDrawingParams = max < this.mFirstPageParams.size() ? (PreviewItemDrawingParams) this.mFirstPageParams.get(max) : null;
        if (previewItemDrawingParams != null) {
            previewItemDrawingParams.hidden = z4;
        }
    }

    public final void onDrop(List list, List list2, WorkspaceItemInfo workspaceItemInfo) {
        ArrayList<WorkspaceItemInfo> arrayList = (ArrayList) list2;
        int size = arrayList.size();
        ArrayList arrayList2 = this.mFirstPageParams;
        buildParamsForPage(0, arrayList2, false);
        ArrayList arrayList3 = new ArrayList();
        for (WorkspaceItemInfo workspaceItemInfo2 : arrayList) {
            if (!((ArrayList) list).contains(workspaceItemInfo2) && !workspaceItemInfo2.equals(workspaceItemInfo)) {
                arrayList3.add(workspaceItemInfo2);
            }
        }
        for (int i4 = 0; i4 < arrayList3.size(); i4++) {
            int indexOf = arrayList.indexOf(arrayList3.get(i4));
            PreviewItemDrawingParams previewItemDrawingParams = (PreviewItemDrawingParams) arrayList2.get(indexOf);
            computePreviewItemDrawingParams(indexOf, size, previewItemDrawingParams);
            updateTransitionParam(previewItemDrawingParams, (WorkspaceItemInfo) arrayList3.get(i4), -3, arrayList.indexOf(arrayList3.get(i4)), size);
        }
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            int indexOf2 = ((ArrayList) list).indexOf(arrayList.get(i5));
            if (indexOf2 >= 0 && i5 != indexOf2) {
                updateTransitionParam((PreviewItemDrawingParams) arrayList2.get(i5), (WorkspaceItemInfo) arrayList.get(i5), indexOf2, i5, size);
            }
        }
        ArrayList arrayList4 = new ArrayList(list);
        arrayList4.removeAll(arrayList);
        for (int i6 = 0; i6 < arrayList4.size(); i6++) {
            WorkspaceItemInfo workspaceItemInfo3 = (WorkspaceItemInfo) arrayList4.get(i6);
            int indexOf3 = ((ArrayList) list).indexOf(workspaceItemInfo3);
            PreviewItemDrawingParams computePreviewItemDrawingParams = computePreviewItemDrawingParams(indexOf3, size, null);
            updateTransitionParam(computePreviewItemDrawingParams, workspaceItemInfo3, indexOf3, -2, size);
            arrayList2.add(0, computePreviewItemDrawingParams);
        }
        for (int i7 = 0; i7 < arrayList2.size(); i7++) {
            if (((PreviewItemDrawingParams) arrayList2.get(i7)).anim != null) {
                ((PreviewItemDrawingParams) arrayList2.get(i7)).anim.start();
            }
        }
    }

    public final void onFolderClose(int i4) {
        boolean z4 = i4 != 0;
        this.mShouldSlideInFirstPage = z4;
        if (z4) {
            this.mCurrentPageItemsTransX = 0.0f;
            buildParamsForPage(i4, this.mCurrentPageParams, false);
            onParamsChanged();
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, CURRENT_PAGE_ITEMS_TRANS_X, 0.0f, 200.0f);
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.folder.PreviewItemManager.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    PreviewItemManager.this.mCurrentPageParams.clear();
                }
            });
            ofFloat.setStartDelay(100L);
            ofFloat.setDuration(300L);
            ofFloat.start();
        }
    }

    public final void onParamsChanged() {
        this.mIcon.invalidate();
    }

    public final FastBitmapDrawable prepareCreateAnimation(View view) {
        FastBitmapDrawable icon = ((BubbleTextView) view).getIcon();
        computePreviewDrawingParams(icon.getIntrinsicWidth(), view.getMeasuredWidth());
        this.mReferenceDrawable = icon;
        return icon;
    }

    public final void recomputePreviewDrawingParams() {
        FastBitmapDrawable fastBitmapDrawable = this.mReferenceDrawable;
        if (fastBitmapDrawable != null) {
            computePreviewDrawingParams(fastBitmapDrawable.getIntrinsicWidth(), this.mIcon.getMeasuredWidth());
        }
    }

    public final void updatePreviewItems(boolean z4) {
        int size = this.mFirstPageParams.size();
        buildParamsForPage(0, this.mFirstPageParams, z4);
        this.mNumOfPrevItems = size;
    }

    public final boolean verifyDrawable(Drawable drawable) {
        for (int i4 = 0; i4 < this.mFirstPageParams.size(); i4++) {
            if (((PreviewItemDrawingParams) this.mFirstPageParams.get(i4)).drawable == drawable) {
                return true;
            }
        }
        return false;
    }

    public final void updatePreviewItems(com.android.launcher3.util.r rVar) {
        Iterator it = this.mFirstPageParams.iterator();
        boolean z4 = false;
        while (it.hasNext()) {
            PreviewItemDrawingParams previewItemDrawingParams = (PreviewItemDrawingParams) it.next();
            if (rVar.test(previewItemDrawingParams.item)) {
                setDrawable(previewItemDrawingParams, previewItemDrawingParams.item);
                z4 = true;
            }
        }
        Iterator it2 = this.mCurrentPageParams.iterator();
        while (it2.hasNext()) {
            PreviewItemDrawingParams previewItemDrawingParams2 = (PreviewItemDrawingParams) it2.next();
            if (rVar.test(previewItemDrawingParams2.item)) {
                setDrawable(previewItemDrawingParams2, previewItemDrawingParams2.item);
                z4 = true;
            }
        }
        if (z4) {
            this.mIcon.invalidate();
        }
    }
}
