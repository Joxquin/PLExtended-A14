package com.android.launcher3.folder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.android.launcher3.Alarm;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.CellLayout;
import com.android.launcher3.CheckLongPressHelper;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.DropTarget;
import com.android.launcher3.OnAlarmListener;
import com.android.launcher3.Reorderable;
import com.android.launcher3.Utilities;
import com.android.launcher3.celllayout.CellLayoutLayoutParams;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.dot.FolderDotInfo;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.dragndrop.PinItemDragListener;
import com.android.launcher3.icons.DotRenderer;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemFactory;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.MultiTranslateDelegate;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.IconLabelDotView;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Stream;
/* loaded from: classes.dex */
public class FolderIcon extends FrameLayout implements FolderInfo.FolderListener, IconLabelDotView, DraggableView, Reorderable {
    private static final Property DOT_SCALE_PROPERTY = new Property(Float.TYPE) { // from class: com.android.launcher3.folder.FolderIcon.1
        @Override // android.util.Property
        public final Object get(Object obj) {
            return Float.valueOf(((FolderIcon) obj).mDotScale);
        }

        @Override // android.util.Property
        public final void set(Object obj, Object obj2) {
            FolderIcon folderIcon = (FolderIcon) obj;
            folderIcon.mDotScale = ((Float) obj2).floatValue();
            folderIcon.invalidate();
        }
    };

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f4594d = 0;
    ActivityContext mActivity;
    PreviewBackground mBackground;
    private boolean mBackgroundIsVisible;
    private List mCurrentPreviewItems;
    @ViewDebug.ExportedProperty(category = "launcher", deepExport = true)
    private FolderDotInfo mDotInfo;
    @ViewDebug.ExportedProperty(category = "launcher", deepExport = true)
    private DotRenderer.DrawParams mDotParams;
    private DotRenderer mDotRenderer;
    private float mDotScale;
    private Animator mDotScaleAnim;
    Folder mFolder;
    BubbleTextView mFolderName;
    private boolean mForceHideDot;
    public FolderInfo mInfo;
    private CheckLongPressHelper mLongPressHelper;
    OnAlarmListener mOnOpenListener;
    private Alarm mOpenAlarm;
    private PreviewItemManager mPreviewItemManager;
    ClippedFolderIconLayoutRule mPreviewLayoutRule;
    FolderGridOrganizer mPreviewVerifier;
    private float mScaleForReorderBounce;
    private PreviewItemDrawingParams mTmpParams;
    private Rect mTouchArea;
    private final MultiTranslateDelegate mTranslateDelegate;

    /* loaded from: classes.dex */
    public interface FolderIconParent {
        void clearFolderLeaveBehind(FolderIcon folderIcon);

        void drawFolderLeaveBehindForIcon(FolderIcon folderIcon);
    }

    public FolderIcon(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTranslateDelegate = new MultiTranslateDelegate(5, this);
        this.mBackground = new PreviewBackground();
        this.mBackgroundIsVisible = true;
        this.mTmpParams = new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f);
        this.mCurrentPreviewItems = new ArrayList();
        this.mOpenAlarm = new Alarm();
        this.mDotInfo = new FolderDotInfo();
        this.mTouchArea = new Rect();
        this.mScaleForReorderBounce = 1.0f;
        this.mOnOpenListener = new OnAlarmListener() { // from class: com.android.launcher3.folder.FolderIcon.2
            @Override // com.android.launcher3.OnAlarmListener
            public final void onAlarm(Alarm alarm) {
                FolderIcon.this.mFolder.beginExternalDrag();
            }
        };
        init();
    }

    public static /* synthetic */ void a(FolderIcon folderIcon, int i4, WorkspaceItemInfo workspaceItemInfo) {
        folderIcon.mPreviewItemManager.hidePreviewItem(i4, false);
        folderIcon.mFolder.showItem(workspaceItemInfo);
    }

    public static FolderIcon inflateFolderAndIcon(int i4, Context context, ViewGroup viewGroup, FolderInfo folderInfo) {
        Comparator comparator = Folder.ITEM_POS_COMPARATOR;
        Folder folder = (Folder) LayoutInflater.from(context).cloneInContext(context).inflate(R.layout.user_folder_icon_normalized, (ViewGroup) null);
        FolderIcon inflateIcon = inflateIcon(i4, (ActivityContext) context, viewGroup, folderInfo);
        folder.mFolderIcon = inflateIcon;
        folder.mLauncherDelegate.init(folder, inflateIcon);
        folder.bind(folderInfo);
        inflateIcon.mFolder = folder;
        return inflateIcon;
    }

    public static FolderIcon inflateIcon(int i4, ActivityContext activityContext, ViewGroup viewGroup, FolderInfo folderInfo) {
        DeviceProfile deviceProfile = activityContext.getDeviceProfile();
        FolderIcon folderIcon = (FolderIcon) (viewGroup != null ? LayoutInflater.from(viewGroup.getContext()) : activityContext.getLayoutInflater()).inflate(i4, viewGroup, false);
        folderIcon.setClipToPadding(false);
        BubbleTextView bubbleTextView = (BubbleTextView) folderIcon.findViewById(R.id.folder_icon_name);
        folderIcon.mFolderName = bubbleTextView;
        bubbleTextView.setText(folderInfo.title);
        folderIcon.mFolderName.setCompoundDrawablePadding(0);
        ((FrameLayout.LayoutParams) folderIcon.mFolderName.getLayoutParams()).topMargin = deviceProfile.iconSizePx + deviceProfile.iconDrawablePaddingPx;
        folderIcon.setTag(folderInfo);
        folderIcon.setOnClickListener(activityContext.getItemOnClickListener());
        folderIcon.mInfo = folderInfo;
        folderIcon.mActivity = activityContext;
        folderIcon.mDotRenderer = deviceProfile.mDotRendererWorkSpace;
        folderIcon.setContentDescription(folderIcon.getAccessiblityTitle(folderInfo.title));
        FolderDotInfo folderDotInfo = new FolderDotInfo();
        Iterator it = folderInfo.contents.iterator();
        while (it.hasNext()) {
            folderDotInfo.addDotInfo(activityContext.getDotInfoForItem((WorkspaceItemInfo) it.next()));
        }
        folderIcon.setDotInfo(folderDotInfo);
        folderIcon.setAccessibilityDelegate(activityContext.getAccessibilityDelegate());
        FolderGridOrganizer folderGridOrganizer = new FolderGridOrganizer(activityContext.getDeviceProfile().inv);
        folderIcon.mPreviewVerifier = folderGridOrganizer;
        folderGridOrganizer.setFolderInfo(folderInfo);
        folderIcon.updatePreviewItems(false);
        folderInfo.addListener(folderIcon);
        return folderIcon;
    }

    private void init() {
        this.mLongPressHelper = new CheckLongPressHelper(this, null);
        this.mPreviewLayoutRule = new ClippedFolderIconLayoutRule();
        this.mPreviewItemManager = new PreviewItemManager(this);
        this.mDotParams = new DotRenderer.DrawParams();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0169  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void onDrop(final com.android.launcher3.model.data.WorkspaceItemInfo r19, com.android.launcher3.DropTarget.DragObject r20, android.graphics.Rect r21, float r22, int r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.folder.FolderIcon.onDrop(com.android.launcher3.model.data.WorkspaceItemInfo, com.android.launcher3.DropTarget$DragObject, android.graphics.Rect, float, int, boolean):void");
    }

    private void updateDotScale(boolean z4, boolean z5) {
        float f4 = z5 ? 1.0f : 0.0f;
        if ((z4 ^ z5) && isShown()) {
            animateDotScale(f4);
            return;
        }
        Animator animator = this.mDotScaleAnim;
        if (animator != null) {
            animator.cancel();
        }
        this.mDotScale = f4;
        invalidate();
    }

    private void updatePreviewItems(boolean z4) {
        this.mPreviewItemManager.updatePreviewItems(z4);
        ((ArrayList) this.mCurrentPreviewItems).clear();
        List list = this.mCurrentPreviewItems;
        FolderGridOrganizer folderGridOrganizer = this.mPreviewVerifier;
        folderGridOrganizer.setFolderInfo(this.mInfo);
        ((ArrayList) list).addAll(folderGridOrganizer.previewItemsForPage(0, this.mInfo.contents));
    }

    public final boolean acceptDrop(ItemInfo itemInfo) {
        if (this.mFolder.isDestroyed()) {
            return false;
        }
        int i4 = itemInfo.itemType;
        return (i4 == 0 || i4 == 6) && itemInfo != this.mInfo && !this.mFolder.isOpen();
    }

    public final void animateDotScale(float... fArr) {
        Animator animator = this.mDotScaleAnim;
        if (animator != null) {
            animator.cancel();
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, DOT_SCALE_PROPERTY, fArr);
        this.mDotScaleAnim = ofFloat;
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.folder.FolderIcon.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator2) {
                FolderIcon.this.mDotScaleAnim = null;
            }
        });
        this.mDotScaleAnim.start();
    }

    @Override // android.view.View
    public final void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.mBackgroundIsVisible) {
            this.mPreviewItemManager.recomputePreviewDrawingParams();
            if (!this.mBackground.drawingDelegated()) {
                this.mBackground.drawBackground(canvas);
            }
            if (((ArrayList) this.mCurrentPreviewItems).isEmpty()) {
                return;
            }
            this.mPreviewItemManager.draw(canvas);
            if (!this.mBackground.drawingDelegated()) {
                this.mBackground.getClass();
            }
            drawDot(canvas);
        }
    }

    public final void drawDot(Canvas canvas) {
        if (this.mForceHideDot) {
            return;
        }
        FolderDotInfo folderDotInfo = this.mDotInfo;
        if ((folderDotInfo == null || !folderDotInfo.hasDot()) && this.mDotScale <= 0.0f) {
            return;
        }
        Rect rect = this.mDotParams.iconBounds;
        int i4 = this.mActivity.getDeviceProfile().iconSizePx;
        int width = (getWidth() - i4) / 2;
        rect.left = width;
        rect.right = width + i4;
        int paddingTop = getPaddingTop();
        rect.top = paddingTop;
        rect.bottom = paddingTop + i4;
        Utilities.scaleRectAboutCenter(rect, this.mBackground.previewSize / i4);
        DotRenderer.DrawParams drawParams = this.mDotParams;
        float f4 = this.mDotScale;
        PreviewBackground previewBackground = this.mBackground;
        drawParams.scale = Math.max(0.0f, f4 - (previewBackground.mIsHoveredOrAnimating ? 0.0f : (previewBackground.mScale - 1.0f) / 0.20000005f));
        this.mDotParams.dotColor = this.mBackground.getDotColor();
        this.mDotRenderer.draw(canvas, this.mDotParams);
    }

    public final String getAccessiblityTitle(CharSequence charSequence) {
        int size = this.mInfo.contents.size();
        return size < 4 ? getContext().getString(R.string.folder_name_format_exact, charSequence, Integer.valueOf(size)) : getContext().getString(R.string.folder_name_format_overflow, charSequence, 4);
    }

    public final Folder getFolder() {
        return this.mFolder;
    }

    public final PreviewBackground getFolderBackground() {
        return this.mBackground;
    }

    public final boolean getIconVisible() {
        return this.mBackgroundIsVisible;
    }

    public final void getPreviewBounds(Rect rect) {
        this.mPreviewItemManager.recomputePreviewDrawingParams();
        PreviewBackground previewBackground = this.mBackground;
        int i4 = previewBackground.basePreviewOffsetY;
        int i5 = previewBackground.basePreviewOffsetX;
        int i6 = previewBackground.previewSize;
        rect.set(i5, i4, i5 + i6, i6 + i4);
        Utilities.scaleRectAboutCenter(rect, 1.125f);
    }

    public final PreviewItemManager getPreviewItemManager() {
        return this.mPreviewItemManager;
    }

    @Override // com.android.launcher3.Reorderable
    public final float getReorderBounceScale() {
        return this.mScaleForReorderBounce;
    }

    @Override // com.android.launcher3.Reorderable
    public final MultiTranslateDelegate getTranslateDelegate() {
        return this.mTranslateDelegate;
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public final int getViewType() {
        return 0;
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public final void getWorkspaceVisualDragBounds(Rect rect) {
        getPreviewBounds(rect);
    }

    public final boolean hasDot() {
        FolderDotInfo folderDotInfo = this.mDotInfo;
        return folderDotInfo != null && folderDotInfo.hasDot();
    }

    @Override // com.android.launcher3.model.data.FolderInfo.FolderListener
    public final void onAdd(int i4, WorkspaceItemInfo workspaceItemInfo) {
        updatePreviewItems(false);
        boolean hasDot = this.mDotInfo.hasDot();
        this.mDotInfo.addDotInfo(this.mActivity.getDotInfoForItem(workspaceItemInfo));
        updateDotScale(hasDot, this.mDotInfo.hasDot());
        setContentDescription(getAccessiblityTitle(this.mInfo.title));
        invalidate();
        requestLayout();
    }

    public final void onDragEnter(ItemInfo itemInfo) {
        if (this.mFolder.isDestroyed()) {
            return;
        }
        int i4 = itemInfo.itemType;
        if (((i4 != 0 && i4 != 6) || itemInfo == this.mInfo || this.mFolder.isOpen()) ? false : true) {
            CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) getLayoutParams();
            this.mBackground.animateToAccept((CellLayout) getParent().getParent(), cellLayoutLayoutParams.getCellX(), cellLayoutLayoutParams.getCellY());
            this.mOpenAlarm.setOnAlarmListener(this.mOnOpenListener);
            if ((itemInfo instanceof WorkspaceItemFactory) || (itemInfo instanceof WorkspaceItemInfo) || (itemInfo instanceof PendingAddShortcutInfo)) {
                this.mOpenAlarm.setAlarm(800L);
            }
        }
    }

    public final void onDragExit() {
        this.mBackground.animateToRest();
        this.mOpenAlarm.cancelAlarm();
    }

    public final void onFolderClose(int i4) {
        this.mPreviewItemManager.onFolderClose(i4);
    }

    @Override // android.view.View
    public final void onHoverChanged(boolean z4) {
        super.onHoverChanged(z4);
        if (FeatureFlags.ENABLE_CURSOR_HOVER_STATES.get()) {
            PreviewBackground previewBackground = this.mBackground;
            previewBackground.animateScale(previewBackground.mIsAccepting, z4);
        }
    }

    @Override // com.android.launcher3.model.data.FolderInfo.FolderListener
    public final void onItemsChanged(boolean z4) {
        updatePreviewItems(z4);
        invalidate();
        requestLayout();
    }

    @Override // com.android.launcher3.model.data.FolderInfo.FolderListener
    public final void onRemove(List list) {
        updatePreviewItems(false);
        boolean hasDot = this.mDotInfo.hasDot();
        Stream stream = list.stream();
        final ActivityContext activityContext = this.mActivity;
        Objects.requireNonNull(activityContext);
        Stream map = stream.map(new Function() { // from class: com.android.launcher3.folder.i
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ActivityContext.this.getDotInfoForItem((WorkspaceItemInfo) obj);
            }
        });
        final FolderDotInfo folderDotInfo = this.mDotInfo;
        Objects.requireNonNull(folderDotInfo);
        map.forEach(new Consumer() { // from class: com.android.launcher3.folder.j
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                FolderDotInfo.this.subtractDotInfo((DotInfo) obj);
            }
        });
        updateDotScale(hasDot, this.mDotInfo.hasDot());
        setContentDescription(getAccessiblityTitle(this.mInfo.title));
        invalidate();
        requestLayout();
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            float x4 = motionEvent.getX();
            float y4 = motionEvent.getY();
            this.mTouchArea.set(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
            if (!this.mTouchArea.contains((int) x4, (int) y4)) {
                return false;
            }
        }
        super.onTouchEvent(motionEvent);
        this.mLongPressHelper.onTouchEvent(motionEvent);
        return true;
    }

    public final void performCreateAnimation(WorkspaceItemInfo workspaceItemInfo, View view, WorkspaceItemInfo workspaceItemInfo2, DropTarget.DragObject dragObject, Rect rect, float f4) {
        DragView dragView = dragObject.dragView;
        this.mPreviewItemManager.prepareCreateAnimation(view);
        FolderInfo folderInfo = this.mInfo;
        folderInfo.add(folderInfo.contents.size(), workspaceItemInfo, true);
        this.mPreviewItemManager.createFirstItemAnimation(false, null).start();
        onDrop(workspaceItemInfo2, dragObject, rect, f4, 1, false);
    }

    public final void performDestroyAnimation(Runnable runnable) {
        this.mPreviewItemManager.createFirstItemAnimation(true, runnable).start();
    }

    public final void removeListeners() {
        this.mInfo.removeListener(this);
        this.mInfo.removeListener(this.mFolder);
    }

    public final void setDotInfo(FolderDotInfo folderDotInfo) {
        updateDotScale(this.mDotInfo.hasDot(), folderDotInfo.hasDot());
        this.mDotInfo = folderDotInfo;
    }

    public final void setFolderBackground(PreviewBackground previewBackground) {
        this.mBackground = previewBackground;
        previewBackground.setInvalidateDelegate(this);
    }

    @Override // com.android.launcher3.views.IconLabelDotView
    public final void setForceHideDot(boolean z4) {
        if (this.mForceHideDot == z4) {
            return;
        }
        this.mForceHideDot = z4;
        if (z4) {
            invalidate();
        } else if (hasDot()) {
            animateDotScale(0.0f, 1.0f);
        }
    }

    @Override // com.android.launcher3.views.IconLabelDotView
    public final void setIconVisible(boolean z4) {
        this.mBackgroundIsVisible = z4;
        invalidate();
    }

    @Override // com.android.launcher3.Reorderable
    public final void setReorderBounceScale(float f4) {
        this.mScaleForReorderBounce = f4;
        super.setScaleX(f4);
        super.setScaleY(f4);
    }

    public final void setTextVisible(boolean z4) {
        if (z4) {
            this.mFolderName.setVisibility(0);
        } else {
            this.mFolderName.setVisibility(4);
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return this.mPreviewItemManager.verifyDrawable(drawable) || super.verifyDrawable(drawable);
    }

    public final void updatePreviewItems(com.android.launcher3.util.r rVar) {
        this.mPreviewItemManager.updatePreviewItems(rVar);
    }

    public FolderIcon(Context context) {
        super(context);
        this.mTranslateDelegate = new MultiTranslateDelegate(5, this);
        this.mBackground = new PreviewBackground();
        this.mBackgroundIsVisible = true;
        this.mTmpParams = new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f);
        this.mCurrentPreviewItems = new ArrayList();
        this.mOpenAlarm = new Alarm();
        this.mDotInfo = new FolderDotInfo();
        this.mTouchArea = new Rect();
        this.mScaleForReorderBounce = 1.0f;
        this.mOnOpenListener = new OnAlarmListener() { // from class: com.android.launcher3.folder.FolderIcon.2
            @Override // com.android.launcher3.OnAlarmListener
            public final void onAlarm(Alarm alarm) {
                FolderIcon.this.mFolder.beginExternalDrag();
            }
        };
        init();
    }

    public final void onDrop(DropTarget.DragObject dragObject, boolean z4) {
        WorkspaceItemInfo workspaceItemInfo;
        ItemInfo itemInfo = dragObject.dragInfo;
        if (itemInfo instanceof WorkspaceItemFactory) {
            workspaceItemInfo = ((WorkspaceItemFactory) itemInfo).makeWorkspaceItem(getContext());
        } else if (dragObject.dragSource instanceof PinItemDragListener) {
            workspaceItemInfo = new WorkspaceItemInfo((WorkspaceItemInfo) dragObject.dragInfo);
        } else {
            workspaceItemInfo = (WorkspaceItemInfo) itemInfo;
        }
        WorkspaceItemInfo workspaceItemInfo2 = workspaceItemInfo;
        this.mFolder.notifyDrop();
        onDrop(workspaceItemInfo2, dragObject, null, 1.0f, z4 ? workspaceItemInfo2.rank : this.mInfo.contents.size(), z4);
    }
}
