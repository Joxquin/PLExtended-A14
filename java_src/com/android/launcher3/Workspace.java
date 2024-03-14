package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.LayoutTransition;
import android.animation.ValueAnimator;
import android.app.WallpaperManager;
import android.content.Context;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DropTarget;
import com.android.launcher3.accessibility.AccessibleDragListenerAdapter;
import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import com.android.launcher3.accessibility.WorkspaceAccessibilityHelper;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.SpringProperty;
import com.android.launcher3.celllayout.CellLayoutLayoutParams;
import com.android.launcher3.celllayout.CellPosMapper;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.dragndrop.LauncherDragController;
import com.android.launcher3.dragndrop.SpringLoadedDragController;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.folder.PreviewBackground;
import com.android.launcher3.graphics.DragPreviewProvider;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pageindicators.PageIndicator;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.touch.WorkspaceTouchListener;
import com.android.launcher3.util.EdgeEffectCompat;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.IntSparseArrayMap;
import com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator;
import com.android.launcher3.util.OverlayEdgeEffect;
import com.android.launcher3.util.WallpaperOffsetInterpolator;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.launcher3.widget.LauncherWidgetHolder;
import com.android.launcher3.widget.PendingAppWidgetHostView;
import com.android.launcher3.widget.util.WidgetSizes;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import q1.InterfaceC1362b;
import q1.InterfaceC1363c;
/* loaded from: classes.dex */
public class Workspace extends PagedView implements DropTarget, DragSource, View.OnTouchListener, DragController.DragListener, Insettable, StateManager.StateHandler, WorkspaceLayoutManager, InterfaceC1363c {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f4511d = 0;
    private boolean mAddToExistingFolderOnDrop;
    private final int mAllAppsIconSize;
    boolean mChildrenLayersEnabled;
    private boolean mCreateUserFolderOnDrop;
    private float mCurrentScale;
    boolean mDeferRemoveExtraEmptyScreen;
    DragController mDragController;
    protected CellLayout.CellInfo mDragInfo;
    protected int mDragMode;
    private FolderIcon mDragOverFolderIcon;
    private int mDragOverX;
    private int mDragOverY;
    private CellLayout mDragOverlappingLayout;
    protected ShortcutAndWidgetContainer mDragSourceInternal;
    CellLayout mDragTargetLayout;
    float[] mDragViewVisualCenter;
    private CellLayout mDropToLayout;
    private View mFirstPagePinnedItem;
    private PreviewBackground mFolderCreateBg;
    private boolean mForceDrawAdjacentPages;
    private boolean mIsEventOverFirstPagePinnedItem;
    private boolean mIsSwitchingState;
    int mLastReorderX;
    int mLastReorderY;
    final Launcher mLauncher;
    private LayoutTransition mLayoutTransition;
    private final List mOverlayCallbacks;
    private OverlayEdgeEffect mOverlayEdgeEffect;
    private float mOverlayProgress;
    private boolean mOverlayShown;
    protected final Alarm mReorderAlarm;
    private final IntArray mRestoredPages;
    private SparseArray mSavedStates;
    final IntArray mScreenOrder;
    private SpringLoadedDragController mSpringLoadedDragController;
    private final WorkspaceStateTransitionAnimation mStateTransitionAnimation;
    private final StatsLogManager mStatsLogManager;
    private boolean mStripScreensOnPageStopMoving;
    int[] mTargetCell;
    private final float[] mTempFXY;
    private final Rect mTempRect;
    protected final int[] mTempXY;
    private float mTransitionProgress;
    private boolean mUnlockWallpaperFromDefaultPageOnLayout;
    final WallpaperManager mWallpaperManager;
    final WallpaperOffsetInterpolator mWallpaperOffset;
    private boolean mWorkspaceFadeInAdjacentScreens;
    public final IntSparseArrayMap mWorkspaceScreens;
    private float mXDown;
    private float mYDown;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.Workspace$6  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass6 implements LauncherBindableItemsContainer$ItemOperator {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ int f4512a;
        final /* synthetic */ Workspace this$0;

        public /* synthetic */ AnonymousClass6(Workspace workspace, int i4) {
            this.f4512a = i4;
            this.this$0 = workspace;
        }

        @Override // com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator
        public final boolean evaluate(View view, ItemInfo itemInfo) {
            switch (this.f4512a) {
                case 0:
                    if (view instanceof FolderIcon) {
                        ((FolderIcon) view).removeListeners();
                    }
                    return false;
                default:
                    if (view instanceof DropTarget) {
                        this.this$0.mDragController.removeDropTarget((DropTarget) view);
                    }
                    return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class DeferredWidgetRefresh implements Runnable, LauncherWidgetHolder.ProviderChangedListener {
        private final Handler mHandler;
        private final ArrayList mInfos;
        private boolean mRefreshPending;
        private final LauncherWidgetHolder mWidgetHolder;

        public DeferredWidgetRefresh(ArrayList arrayList, LauncherWidgetHolder launcherWidgetHolder) {
            this.mInfos = arrayList;
            this.mWidgetHolder = launcherWidgetHolder;
            Handler handler = Workspace.this.mLauncher.mHandler;
            this.mHandler = handler;
            this.mRefreshPending = true;
            launcherWidgetHolder.addProviderChangeListener(this);
            Message obtain = Message.obtain(handler, this);
            obtain.obj = DeferredWidgetRefresh.class;
            handler.sendMessageDelayed(obtain, 10000L);
        }

        public static /* synthetic */ void a(DeferredWidgetRefresh deferredWidgetRefresh, ArrayList arrayList, ItemInfo itemInfo, View view) {
            deferredWidgetRefresh.getClass();
            if ((view instanceof PendingAppWidgetHostView) && deferredWidgetRefresh.mInfos.contains(itemInfo)) {
                arrayList.add((PendingAppWidgetHostView) view);
            }
        }

        @Override // com.android.launcher3.widget.LauncherWidgetHolder.ProviderChangedListener
        public final void notifyWidgetProvidersChanged() {
            run();
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.mWidgetHolder.removeProviderChangeListener(this);
            this.mHandler.removeCallbacks(this);
            if (this.mRefreshPending) {
                this.mRefreshPending = false;
                ArrayList arrayList = new ArrayList(this.mInfos.size());
                Workspace.this.mapOverItems(new X0(0, this, arrayList));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PendingAppWidgetHostView) it.next()).reInflate();
                }
            }
        }
    }

    /* loaded from: classes.dex */
    final class ReorderAlarmListener implements OnAlarmListener {
        final View child;
        final DropTarget.DragObject dragObject;
        final int minSpanX;
        final int minSpanY;
        final int spanX;
        final int spanY;

        public ReorderAlarmListener(int i4, int i5, int i6, int i7, DropTarget.DragObject dragObject, View view) {
            this.minSpanX = i4;
            this.minSpanY = i5;
            this.spanX = i6;
            this.spanY = i7;
            this.child = view;
            this.dragObject = dragObject;
        }

        @Override // com.android.launcher3.OnAlarmListener
        public final void onAlarm(Alarm alarm) {
            int[] iArr = new int[2];
            Workspace workspace = Workspace.this;
            float[] fArr = workspace.mDragViewVisualCenter;
            workspace.mTargetCell = Workspace.findNearestArea((int) fArr[0], (int) fArr[1], this.minSpanX, this.minSpanY, workspace.mDragTargetLayout, workspace.mTargetCell);
            CellLayout cellLayout = workspace.mDragTargetLayout;
            float[] fArr2 = workspace.mDragViewVisualCenter;
            int[] performReorder = cellLayout.performReorder((int) fArr2[0], (int) fArr2[1], this.minSpanX, this.minSpanY, this.spanX, this.spanY, this.child, workspace.mTargetCell, iArr, 1);
            workspace.mTargetCell = performReorder;
            if (performReorder[0] < 0 || performReorder[1] < 0) {
                workspace.mDragTargetLayout.revertTempState();
            } else {
                workspace.setDragMode(3);
            }
            CellLayout cellLayout2 = workspace.mDragTargetLayout;
            int[] iArr2 = workspace.mTargetCell;
            cellLayout2.visualizeDropLocation(iArr2[0], iArr2[1], iArr[0], iArr[1], this.dragObject);
        }
    }

    /* loaded from: classes.dex */
    final class StateTransitionListener extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {
        public StateTransitionListener() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            Workspace.this.onEndStateTransition();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            Workspace.j(Workspace.this);
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            Workspace.this.mTransitionProgress = valueAnimator.getAnimatedFraction();
        }
    }

    public Workspace(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void enableHwLayersOnVisiblePages() {
        if (this.mChildrenLayersEnabled) {
            int childCount = getChildCount();
            int[] visibleChildrenRange = getVisibleChildrenRange();
            int i4 = visibleChildrenRange[0];
            int i5 = visibleChildrenRange[1];
            if (this.mForceDrawAdjacentPages) {
                i4 = Utilities.boundToRange(getCurrentPage() - 1, 0, i5);
                i5 = Utilities.boundToRange(getCurrentPage() + 1, i4, getPageCount() - 1);
            }
            if (i4 == i5) {
                if (i5 < childCount - 1) {
                    i5++;
                } else if (i4 > 0) {
                    i4--;
                }
            }
            int i6 = 0;
            while (i6 < childCount) {
                ((CellLayout) getPageAt(i6)).enableHardwareLayer(i4 <= i6 && i6 <= i5);
                i6++;
            }
        }
    }

    public static int[] findNearestArea(int i4, int i5, int i6, int i7, CellLayout cellLayout, int[] iArr) {
        return cellLayout.findNearestAreaIgnoreOccupied(i4, i5, i6, i7, iArr);
    }

    private void forEachExtraEmptyPageId(Consumer consumer) {
        consumer.accept(-201);
        if (isTwoPanelEnabled()) {
            consumer.accept(-200);
        }
    }

    public static int getScreenPair(int i4) {
        if (i4 == -201) {
            return -200;
        }
        if (i4 == -200) {
            return -201;
        }
        return i4 % 2 == 0 ? i4 + 1 : i4 - 1;
    }

    private CellLayout[] getWorkspaceAndHotseatCellLayouts() {
        CellLayout[] cellLayoutArr;
        int childCount = getChildCount();
        Hotseat hotseat = this.mLauncher.mHotseat;
        if (hotseat != null) {
            cellLayoutArr = new CellLayout[childCount + 1];
            cellLayoutArr[childCount] = hotseat;
        } else {
            cellLayoutArr = new CellLayout[childCount];
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            cellLayoutArr[i4] = (CellLayout) getChildAt(i4);
        }
        return cellLayoutArr;
    }

    private boolean isTwoPanelEnabled() {
        return !FeatureFlags.FOLDABLE_SINGLE_PAGE.get() && this.mLauncher.mDeviceProfile.isTwoPanels;
    }

    public static void j(Workspace workspace) {
        workspace.mIsSwitchingState = true;
        workspace.mTransitionProgress = 0.0f;
        workspace.updateChildrenLayersEnabled();
    }

    private void mapPointFromDropLayout(CellLayout cellLayout, float[] fArr) {
        if (this.mLauncher.isHotseatLayout(cellLayout)) {
            this.mLauncher.mDragLayer.getDescendantCoordRelativeToSelf(this, fArr, true);
            this.mLauncher.mDragLayer.mapCoordInSelfToDescendant(cellLayout, fArr);
            return;
        }
        fArr[0] = fArr[0] - cellLayout.getLeft();
        fArr[1] = fArr[1] - cellLayout.getTop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onEndStateTransition() {
        this.mIsSwitchingState = false;
        this.mForceDrawAdjacentPages = false;
        this.mTransitionProgress = 1.0f;
        updateChildrenLayersEnabled();
        LauncherState launcherState = LauncherState.NORMAL;
        int i4 = ((LauncherState) this.mLauncher.getStateManager().getState()).hasFlag(8) ? 4 : 0;
        if (this.mLauncher.getAccessibilityDelegate().isInAccessibleDrag()) {
            return;
        }
        int pageCount = getPageCount();
        for (int i5 = 0; i5 < pageCount; i5++) {
            CellLayout cellLayout = (CellLayout) getPageAt(i5);
            cellLayout.setImportantForAccessibility(2);
            cellLayout.mShortcutsAndWidgets.setImportantForAccessibility(i4);
            cellLayout.setContentDescription(null);
            cellLayout.setAccessibilityDelegate(null);
        }
        setImportantForAccessibility(i4);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0107 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean setDropLayoutForDragObject(com.android.launcher3.DropTarget.DragObject r9, float r10) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.Workspace.setDropLayoutForDragObject(com.android.launcher3.DropTarget$DragObject, float):boolean");
    }

    private void updateChildrenLayersEnabled() {
        boolean z4 = this.mIsSwitchingState || isPageInTransition();
        if (z4 != this.mChildrenLayersEnabled) {
            this.mChildrenLayersEnabled = z4;
            if (z4) {
                enableHwLayersOnVisiblePages();
                return;
            }
            for (int i4 = 0; i4 < getPageCount(); i4++) {
                ((CellLayout) getChildAt(i4)).enableHardwareLayer(false);
            }
        }
    }

    private void updatePageAlphaValues() {
        if (workspaceInModalState() || this.mIsSwitchingState || this.mDragController.isDragging()) {
            return;
        }
        int measuredWidth = (getMeasuredWidth() / 2) + getScrollX();
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            CellLayout cellLayout = (CellLayout) getChildAt(i4);
            if (cellLayout != null) {
                float abs = 1.0f - Math.abs(getScrollProgress(measuredWidth, cellLayout, i4));
                if (this.mWorkspaceFadeInAdjacentScreens) {
                    cellLayout.mShortcutsAndWidgets.setAlpha(abs);
                } else {
                    cellLayout.mShortcutsAndWidgets.setImportantForAccessibility(abs > 0.0f ? 0 : 4);
                }
            }
        }
    }

    private void updatePageScrollValues() {
        int measuredWidth = (getMeasuredWidth() / 2) + getScrollX();
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            CellLayout cellLayout = (CellLayout) getChildAt(i4);
            if (cellLayout != null) {
                cellLayout.setScrollProgress(getScrollProgress(measuredWidth, cellLayout, i4));
            }
        }
    }

    private CellLayout verifyInsidePage(float f4, float f5, int i4) {
        if (i4 < 0 || i4 >= getPageCount()) {
            return null;
        }
        CellLayout cellLayout = (CellLayout) getChildAt(i4);
        if (f4 < cellLayout.getLeft() || f4 > cellLayout.getRight() || f5 < cellLayout.getTop() || f5 > cellLayout.getBottom()) {
            return null;
        }
        return cellLayout;
    }

    public static boolean willAddToExistingUserFolder(View view, ItemInfo itemInfo) {
        if (view != null) {
            CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) view.getLayoutParams();
            if (cellLayoutLayoutParams.useTmpCoords && (cellLayoutLayoutParams.getTmpCellX() != cellLayoutLayoutParams.getCellX() || cellLayoutLayoutParams.getTmpCellY() != cellLayoutLayoutParams.getCellY())) {
                return false;
            }
        }
        return (view instanceof FolderIcon) && ((FolderIcon) view).acceptDrop(itemInfo);
    }

    private boolean workspaceInModalState() {
        return !this.mLauncher.isInState(LauncherState.NORMAL);
    }

    private boolean workspaceInScrollableState() {
        return this.mLauncher.isInState(LauncherState.SPRING_LOADED) || this.mLauncher.isInState(LauncherState.EDIT_MODE) || !workspaceInModalState();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0036 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0037  */
    @Override // com.android.launcher3.DropTarget
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean acceptDrop(com.android.launcher3.DropTarget.DragObject r19) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.Workspace.acceptDrop(com.android.launcher3.DropTarget$DragObject):boolean");
    }

    public final void addExtraEmptyScreens() {
        forEachExtraEmptyPageId(new P0(2, this));
    }

    public final void addOverlayCallback(InterfaceC1363c interfaceC1363c) {
        ((ArrayList) this.mOverlayCallbacks).add(interfaceC1363c);
        interfaceC1363c.onOverlayScrollChanged(this.mOverlayProgress);
    }

    public final boolean addToExistingFolderIfNecessary(CellLayout cellLayout, int[] iArr, float f4, DropTarget.DragObject dragObject, boolean z4) {
        if (f4 > cellLayout.getFolderCreationRadius(iArr)) {
            return false;
        }
        View childAt = cellLayout.getChildAt(iArr[0], iArr[1]);
        if (this.mAddToExistingFolderOnDrop) {
            this.mAddToExistingFolderOnDrop = false;
            if (childAt instanceof FolderIcon) {
                FolderIcon folderIcon = (FolderIcon) childAt;
                if (folderIcon.acceptDrop(dragObject.dragInfo)) {
                    this.mStatsLogManager.logger().withItemInfo(folderIcon.mInfo).withInstanceId(dragObject.logInstanceId).log(StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROP_COMPLETED_ON_FOLDER_ICON);
                    folderIcon.onDrop(dragObject, false);
                    if (!z4) {
                        getParentCellLayoutForView(this.mDragInfo.cell).removeView(this.mDragInfo.cell);
                    }
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void animateWidgetDrop(com.android.launcher3.model.data.ItemInfo r29, com.android.launcher3.CellLayout r30, com.android.launcher3.dragndrop.DragView r31, final java.lang.Runnable r32, int r33, android.view.View r34, boolean r35) {
        /*
            Method dump skipped, instructions count: 547
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.Workspace.animateWidgetDrop(com.android.launcher3.model.data.ItemInfo, com.android.launcher3.CellLayout, com.android.launcher3.dragndrop.DragView, java.lang.Runnable, int, android.view.View, boolean):void");
    }

    @Override // android.view.View
    public final void announceForAccessibility(CharSequence charSequence) {
        if (this.mLauncher.isInState(LauncherState.ALL_APPS)) {
            return;
        }
        super.announceForAccessibility(charSequence);
    }

    public final void beginDragShared(View view, DragSource dragSource, DragOptions dragOptions) {
        Object tag = view.getTag();
        if (tag instanceof ItemInfo) {
            beginDragShared(view, null, dragSource, (ItemInfo) tag, new DragPreviewProvider(view), dragOptions);
            return;
        }
        throw new IllegalStateException("Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: " + view + "  tag: " + view.getTag());
    }

    public final void bindAndInitFirstWorkspaceScreen() {
        CellLayout insertNewWorkspaceScreen = insertNewWorkspaceScreen(0, getChildCount());
        if (this.mFirstPagePinnedItem == null) {
            this.mFirstPagePinnedItem = LayoutInflater.from(getContext()).inflate(R.layout.search_container_workspace, (ViewGroup) insertNewWorkspaceScreen, false);
        }
        CellLayoutLayoutParams cellLayoutLayoutParams = new CellLayoutLayoutParams(0, 0, this.mLauncher.getDeviceProfile().inv.numSearchContainerColumns, 1);
        cellLayoutLayoutParams.canReorder = false;
        if (insertNewWorkspaceScreen.addViewToCellLayout(this.mFirstPagePinnedItem, 0, R.id.search_container_workspace, cellLayoutLayoutParams, true)) {
            return;
        }
        Log.e("Launcher.Workspace", "Failed to add to item at (0, 0) to CellLayout");
        this.mFirstPagePinnedItem = null;
    }

    @Override // com.android.launcher3.PagedView
    public final boolean canAnnouncePageDescription() {
        return Float.compare(this.mOverlayProgress, 0.0f) == 0;
    }

    public final void cleanupReorder(boolean z4) {
        if (z4) {
            this.mReorderAlarm.cancelAlarm();
        }
        this.mLastReorderX = -1;
        this.mLastReorderY = -1;
    }

    public final IntSet commitExtraEmptyScreens() {
        if (this.mLauncher.mWorkspaceLoading) {
            return new IntSet();
        }
        final IntSet intSet = new IntSet();
        forEachExtraEmptyPageId(new Consumer() { // from class: com.android.launcher3.U0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Workspace workspace = Workspace.this;
                IntSet intSet2 = intSet;
                int i4 = Workspace.f4511d;
                workspace.getClass();
                int intValue = ((Integer) obj).intValue();
                CellLayout cellLayout = (CellLayout) workspace.mWorkspaceScreens.get(intValue);
                workspace.mWorkspaceScreens.remove(intValue);
                workspace.mScreenOrder.removeValue(intValue);
                int newScreenId = LauncherAppState.getInstance(workspace.getContext()).getModel().getModelDbController().getNewScreenId();
                while (workspace.mWorkspaceScreens.containsKey(newScreenId)) {
                    newScreenId++;
                }
                workspace.mWorkspaceScreens.put(newScreenId, cellLayout);
                workspace.mScreenOrder.add(newScreenId);
                intSet2.add(newScreenId);
            }
        });
        return intSet;
    }

    @Override // com.android.launcher3.PagedView, android.view.View
    public final void computeScroll() {
        super.computeScroll();
        this.mWallpaperOffset.syncWithScroll();
    }

    @Override // android.view.View
    public final AccessibilityNodeInfo createAccessibilityNodeInfo() {
        return getImportantForAccessibility() == 4 ? AccessibilityNodeInfo.obtain() : super.createAccessibilityNodeInfo();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean createUserFolderIfNecessary(android.view.View r15, int r16, com.android.launcher3.CellLayout r17, int[] r18, float r19, boolean r20, com.android.launcher3.DropTarget.DragObject r21) {
        /*
            r14 = this;
            r0 = r14
            r2 = r17
            float r1 = r17.getFolderCreationRadius(r18)
            int r1 = (r19 > r1 ? 1 : (r19 == r1 ? 0 : -1))
            r3 = 0
            if (r1 <= 0) goto Ld
            return r3
        Ld:
            r1 = r18[r3]
            r7 = 1
            r4 = r18[r7]
            android.view.View r8 = r2.getChildAt(r1, r4)
            com.android.launcher3.CellLayout$CellInfo r1 = r0.mDragInfo
            if (r1 == 0) goto L32
            android.view.View r1 = r1.cell
            com.android.launcher3.CellLayout r1 = r14.getParentCellLayoutForView(r1)
            com.android.launcher3.CellLayout$CellInfo r4 = r0.mDragInfo
            int r5 = r4.cellX
            r6 = r18[r3]
            if (r5 != r6) goto L32
            int r4 = r4.cellY
            r5 = r18[r7]
            if (r4 != r5) goto L32
            if (r1 != r2) goto L32
            r1 = r7
            goto L33
        L32:
            r1 = r3
        L33:
            if (r8 == 0) goto Lcc
            if (r1 != 0) goto Lcc
            boolean r1 = r0.mCreateUserFolderOnDrop
            if (r1 != 0) goto L3d
            goto Lcc
        L3d:
            r0.mCreateUserFolderOnDrop = r3
            int r4 = r14.getIdForScreen(r2)
            java.lang.Object r1 = r8.getTag()
            boolean r1 = r1 instanceof com.android.launcher3.model.data.WorkspaceItemInfo
            java.lang.Object r5 = r15.getTag()
            boolean r5 = r5 instanceof com.android.launcher3.model.data.WorkspaceItemInfo
            if (r1 == 0) goto Lcc
            if (r5 == 0) goto Lcc
            java.lang.Object r1 = r15.getTag()
            r9 = r1
            com.android.launcher3.model.data.WorkspaceItemInfo r9 = (com.android.launcher3.model.data.WorkspaceItemInfo) r9
            java.lang.Object r1 = r8.getTag()
            r10 = r1
            com.android.launcher3.model.data.WorkspaceItemInfo r10 = (com.android.launcher3.model.data.WorkspaceItemInfo) r10
            if (r20 != 0) goto L72
            com.android.launcher3.CellLayout$CellInfo r1 = r0.mDragInfo
            android.view.View r1 = r1.cell
            com.android.launcher3.CellLayout r1 = r14.getParentCellLayoutForView(r1)
            com.android.launcher3.CellLayout$CellInfo r5 = r0.mDragInfo
            android.view.View r5 = r5.cell
            r1.removeView(r5)
        L72:
            android.graphics.Rect r11 = new android.graphics.Rect
            r11.<init>()
            com.android.launcher3.Launcher r1 = r0.mLauncher
            com.android.launcher3.dragndrop.DragLayer r1 = r1.mDragLayer
            float r12 = r1.getDescendantRectRelativeToSelf(r8, r11)
            r2.removeView(r8)
            com.android.launcher3.logging.StatsLogManager r1 = r0.mStatsLogManager
            com.android.launcher3.logging.StatsLogManager$StatsLogger r1 = r1.logger()
            com.android.launcher3.logging.StatsLogManager$StatsLogger r1 = r1.withItemInfo(r10)
            r13 = r21
            com.android.launcher3.logging.InstanceId r5 = r13.logInstanceId
            com.android.launcher3.logging.StatsLogManager$StatsLogger r1 = r1.withInstanceId(r5)
            com.android.launcher3.logging.StatsLogManager$LauncherEvent r5 = com.android.launcher3.logging.StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROP_FOLDER_CREATED
            r1.log(r5)
            com.android.launcher3.Launcher r1 = r0.mLauncher
            r5 = r18[r3]
            r6 = r18[r7]
            r2 = r17
            r3 = r16
            com.android.launcher3.folder.FolderIcon r1 = r1.addFolder(r2, r3, r4, r5, r6)
            r2 = -1
            r10.cellX = r2
            r10.cellY = r2
            r9.cellX = r2
            r9.cellY = r2
            com.android.launcher3.folder.PreviewBackground r2 = r0.mFolderCreateBg
            r1.setFolderBackground(r2)
            com.android.launcher3.folder.PreviewBackground r2 = new com.android.launcher3.folder.PreviewBackground
            r2.<init>()
            r0.mFolderCreateBg = r2
            r14 = r1
            r15 = r10
            r16 = r8
            r17 = r9
            r18 = r21
            r19 = r11
            r20 = r12
            r14.performCreateAnimation(r15, r16, r17, r18, r19, r20)
            return r7
        Lcc:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.Workspace.createUserFolderIfNecessary(android.view.View, int, com.android.launcher3.CellLayout, int[], float, boolean, com.android.launcher3.DropTarget$DragObject):boolean");
    }

    @Override // com.android.launcher3.PagedView
    public final void determineScrollingStart(MotionEvent motionEvent) {
        if (!isFinishedSwitchingState() || this.mIsEventOverFirstPagePinnedItem) {
            return;
        }
        float abs = Math.abs(motionEvent.getX() - this.mXDown);
        float abs2 = Math.abs(motionEvent.getY() - this.mYDown);
        if (Float.compare(abs, 0.0f) == 0) {
            return;
        }
        float atan = (float) Math.atan(abs2 / abs);
        int i4 = this.mTouchSlop;
        if (abs > i4 || abs2 > i4) {
            cancelCurrentPageLongPress();
        }
        if (atan > 1.0471976f) {
            return;
        }
        if (atan > 0.5235988f) {
            super.determineScrollingStart(motionEvent, (((float) Math.sqrt((atan - 0.5235988f) / 0.5235988f)) * 4.0f) + 1.0f);
        } else {
            super.determineScrollingStart(motionEvent);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.mSavedStates = sparseArray;
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup, android.view.View
    public final boolean dispatchUnhandledMove(View view, int i4) {
        if (workspaceInModalState() || !isFinishedSwitchingState()) {
            return false;
        }
        return super.dispatchUnhandledMove(view, i4);
    }

    public final int[] estimateItemSize(ItemInfo itemInfo) {
        float f4;
        int[] iArr = new int[2];
        if (getChildCount() <= 0) {
            iArr[0] = Integer.MAX_VALUE;
            iArr[1] = Integer.MAX_VALUE;
            return iArr;
        }
        CellLayout cellLayout = (CellLayout) getChildAt(0);
        boolean z4 = itemInfo.itemType == 4;
        int i4 = itemInfo.spanX;
        int i5 = itemInfo.spanY;
        Rect rect = new Rect();
        cellLayout.cellToRect(0, 0, i4, i5, rect);
        if (z4) {
            PointF appWidgetScale = this.mLauncher.getDeviceProfile().getAppWidgetScale(null);
            f4 = Utilities.shrinkRect(rect, appWidgetScale.x, appWidgetScale.y);
        } else {
            f4 = 1.0f;
        }
        iArr[0] = rect.width();
        int height = rect.height();
        iArr[1] = height;
        if (z4) {
            iArr[0] = (int) (iArr[0] / f4);
            iArr[1] = (int) (height / f4);
        }
        return iArr;
    }

    @Override // com.android.launcher3.WorkspaceLayoutManager
    public final CellPosMapper getCellPosMapper() {
        return this.mLauncher.getCellPosMapper();
    }

    @Override // com.android.launcher3.PagedView
    public final String getCurrentPageDescription() {
        int i4 = this.mNextPage;
        if (i4 == -1) {
            i4 = this.mCurrentPage;
        }
        return getPageDescription(i4);
    }

    public final IntSet getCurrentPageScreenIds() {
        return IntSet.wrap(getScreenIdForPageIndex(getCurrentPage()));
    }

    @Override // android.view.ViewGroup
    public final int getDescendantFocusability() {
        return workspaceInModalState() ? AbstractFloatingView.TYPE_TASKBAR_OVERLAYS : super.getDescendantFocusability();
    }

    @Override // com.android.launcher3.PagedView
    public final int getExpectedHeight() {
        return (getMeasuredHeight() <= 0 || !this.mIsLayoutValid) ? this.mLauncher.getDeviceProfile().heightPx : getMeasuredHeight();
    }

    @Override // com.android.launcher3.PagedView
    public final int getExpectedWidth() {
        return (getMeasuredWidth() <= 0 || !this.mIsLayoutValid) ? this.mLauncher.getDeviceProfile().widthPx : getMeasuredWidth();
    }

    public final View getFirstMatch(N0 n02) {
        CellLayout[] workspaceAndHotseatCellLayouts;
        View view;
        boolean z4;
        View[] viewArr = new View[1];
        for (CellLayout cellLayout : getWorkspaceAndHotseatCellLayouts()) {
            if (cellLayout != null) {
                ShortcutAndWidgetContainer shortcutAndWidgetContainer = cellLayout.mShortcutsAndWidgets;
                int childCount = shortcutAndWidgetContainer.getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    view = shortcutAndWidgetContainer.getChildAt(i4);
                    if (n02.evaluate(view, (ItemInfo) view.getTag())) {
                        viewArr[0] = view;
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (z4) {
                        break;
                    }
                }
            }
            view = null;
            if (view != null) {
                break;
            }
        }
        return viewArr[0];
    }

    @Override // com.android.launcher3.DropTarget
    public final void getHitRectRelativeToDragLayer(Rect rect) {
        this.mLauncher.mDragLayer.getDescendantRectRelativeToSelf(this, rect);
    }

    public final View getHomescreenIconByItemId(int i4) {
        return getFirstMatch(new N0(i4, 0));
    }

    @Override // com.android.launcher3.WorkspaceLayoutManager
    public final Hotseat getHotseat() {
        return this.mLauncher.mHotseat;
    }

    public final int getIdForScreen(CellLayout cellLayout) {
        int indexOfValue = this.mWorkspaceScreens.indexOfValue(cellLayout);
        if (indexOfValue != -1) {
            return this.mWorkspaceScreens.keyAt(indexOfValue);
        }
        return -1;
    }

    public final String getPageDescription(int i4) {
        int childCount = getChildCount();
        int indexOf = this.mScreenOrder.indexOf(-201);
        if (indexOf >= 0 && childCount > 1) {
            if (i4 == indexOf) {
                return getContext().getString(R.string.workspace_new_page);
            }
            childCount--;
        }
        if (childCount == 0) {
            return getContext().getString(R.string.home_screen);
        }
        int panelCount = getPanelCount();
        return getContext().getString(R.string.workspace_scroll_format, Integer.valueOf((i4 / panelCount) + 1), Integer.valueOf((childCount % panelCount) + (childCount / panelCount)));
    }

    public final int getPageIndexForScreenId(int i4) {
        return indexOfChild((View) this.mWorkspaceScreens.get(i4));
    }

    @Override // com.android.launcher3.PagedView
    public final int getPanelCount() {
        if (isTwoPanelEnabled()) {
            return 2;
        }
        return super.getPanelCount();
    }

    public final CellLayout getParentCellLayoutForView(View view) {
        CellLayout[] workspaceAndHotseatCellLayouts;
        for (CellLayout cellLayout : getWorkspaceAndHotseatCellLayouts()) {
            if (cellLayout.mShortcutsAndWidgets.indexOfChild(view) > -1) {
                return cellLayout;
            }
        }
        return null;
    }

    public final int getScreenIdForPageIndex(int i4) {
        if (i4 < 0 || i4 >= this.mScreenOrder.size()) {
            return -1;
        }
        return this.mScreenOrder.get(i4);
    }

    public final IntArray getScreenOrder() {
        return this.mScreenOrder;
    }

    @Override // com.android.launcher3.WorkspaceLayoutManager
    public final CellLayout getScreenWithId(int i4) {
        return (CellLayout) this.mWorkspaceScreens.get(i4);
    }

    public final WorkspaceStateTransitionAnimation getStateTransitionAnimation() {
        return this.mStateTransitionAnimation;
    }

    public final float getWallpaperOffsetForCenterPage() {
        return this.mWallpaperOffset.wallpaperOffsetForScroll(getScrollForPage(getPageNearestToCenterOfScreen()));
    }

    public final boolean hasExtraEmptyScreens() {
        return this.mWorkspaceScreens.containsKey(-201) && getChildCount() > getPanelCount() && (!isTwoPanelEnabled() || this.mWorkspaceScreens.containsKey(-200));
    }

    public final boolean hasOverlay() {
        return this.mOverlayEdgeEffect != null;
    }

    public final CellLayout insertNewWorkspaceScreen(int i4, int i5) {
        if (this.mWorkspaceScreens.containsKey(i4)) {
            throw new RuntimeException("Screen id " + i4 + " already exists!");
        }
        CellLayout cellLayout = (FeatureFlags.FOLDABLE_SINGLE_PAGE.get() && this.mLauncher.getDeviceProfile().isTwoPanels) ? (CellLayout) LayoutInflater.from(getContext()).inflate(R.layout.workspace_screen_foldable, (ViewGroup) this, false) : (CellLayout) LayoutInflater.from(getContext()).inflate(R.layout.workspace_screen, (ViewGroup) this, false);
        this.mWorkspaceScreens.put(i4, cellLayout);
        this.mScreenOrder.add(i5, i4);
        addView(cellLayout, i5);
        this.mStateTransitionAnimation.applyChildState((LauncherState) this.mLauncher.getStateManager().getState(), cellLayout, i5);
        updatePageScrollValues();
        this.mWorkspaceScreens.forEach(new P0(3, this.mLauncher.getDeviceProfile().cellLayoutPaddingPx));
        return cellLayout;
    }

    @Override // com.android.launcher3.DropTarget
    public final boolean isDropEnabled() {
        return true;
    }

    public final boolean isFinishedSwitchingState() {
        return !this.mIsSwitchingState || this.mTransitionProgress > 0.5f;
    }

    public final boolean isOverlayShown() {
        return this.mOverlayShown;
    }

    @Override // com.android.launcher3.PagedView
    public final boolean isSignificantMove(float f4, int i4) {
        DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        return !deviceProfile.isTablet ? super.isSignificantMove(f4, i4) : f4 > ((float) deviceProfile.availableWidthPx) * 0.15f;
    }

    public final boolean isSwitchingState() {
        return this.mIsSwitchingState;
    }

    public final void mapOverItems(LauncherBindableItemsContainer$ItemOperator launcherBindableItemsContainer$ItemOperator) {
        CellLayout[] workspaceAndHotseatCellLayouts;
        View view;
        for (CellLayout cellLayout : getWorkspaceAndHotseatCellLayouts()) {
            if (cellLayout != null) {
                ShortcutAndWidgetContainer shortcutAndWidgetContainer = cellLayout.mShortcutsAndWidgets;
                int childCount = shortcutAndWidgetContainer.getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    view = shortcutAndWidgetContainer.getChildAt(i4);
                    if (launcherBindableItemsContainer$ItemOperator.evaluate(view, (ItemInfo) view.getTag())) {
                        break;
                    }
                }
            }
            view = null;
            if (view != null) {
                return;
            }
        }
    }

    public final void moveToDefaultScreen() {
        if (!workspaceInModalState() && getNextPage() != 0) {
            snapToPage(0);
        }
        View childAt = getChildAt(0);
        if (childAt != null) {
            childAt.requestFocus();
        }
    }

    @Override // com.android.launcher3.PagedView
    public final void notifyPageSwitchListener(int i4) {
        super.notifyPageSwitchListener(i4);
        int i5 = this.mCurrentPage;
        if (i4 != i5) {
            StatsLogManager.LauncherEvent launcherEvent = i4 < i5 ? StatsLogManager.LauncherEvent.LAUNCHER_SWIPERIGHT : StatsLogManager.LauncherEvent.LAUNCHER_SWIPELEFT;
            StatsLogManager.StatsLogger withDstState = this.mLauncher.getStatsLogManager().logger().withSrcState(2).withDstState(2);
            LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
            LauncherAtom$WorkspaceContainer.Builder newBuilder2 = LauncherAtom$WorkspaceContainer.newBuilder();
            newBuilder2.setPageIndex$1(i4);
            newBuilder.setWorkspace(newBuilder2);
            withDstState.withContainerInfo((LauncherAtom$ContainerInfo) newBuilder.build()).log(launcherEvent);
        }
    }

    @Override // com.android.launcher3.WorkspaceLayoutManager
    public final void onAddDropTarget(DropTarget dropTarget) {
        this.mDragController.addDropTarget(dropTarget);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mWallpaperOffset.setWindowToken(getWindowToken());
        computeScroll();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mWallpaperOffset.setWindowToken(null);
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragEnd() {
        updateChildrenLayersEnabled();
        final StateManager stateManager = this.mLauncher.getStateManager();
        stateManager.addStateListener(new StateManager.StateListener() { // from class: com.android.launcher3.Workspace.1
            @Override // com.android.launcher3.statemanager.StateManager.StateListener
            public final void onStateTransitionComplete(Object obj) {
                if (((LauncherState) obj) == LauncherState.NORMAL) {
                    Workspace workspace = Workspace.this;
                    if (!workspace.mDeferRemoveExtraEmptyScreen) {
                        workspace.removeExtraEmptyScreenDelayed(0, true, null);
                    }
                    stateManager.removeStateListener(this);
                }
            }
        });
        this.mDragInfo = null;
        this.mDragSourceInternal = null;
    }

    @Override // com.android.launcher3.DropTarget
    public final void onDragEnter(DropTarget.DragObject dragObject) {
        this.mCreateUserFolderOnDrop = false;
        this.mAddToExistingFolderOnDrop = false;
        this.mDropToLayout = null;
        float[] visualCenter = dragObject.getVisualCenter(this.mDragViewVisualCenter);
        this.mDragViewVisualCenter = visualCenter;
        float f4 = visualCenter[0];
        float f5 = visualCenter[1];
        setDropLayoutForDragObject(dragObject, f4);
    }

    @Override // com.android.launcher3.DropTarget
    public final void onDragExit(DropTarget.DragObject dragObject) {
        this.mDropToLayout = this.mDragTargetLayout;
        int i4 = this.mDragMode;
        if (i4 == 1) {
            this.mCreateUserFolderOnDrop = true;
        } else if (i4 == 2) {
            this.mAddToExistingFolderOnDrop = true;
        }
        setCurrentDropLayout(null);
        CellLayout cellLayout = this.mDragOverlappingLayout;
        if (cellLayout != null) {
            cellLayout.setIsDragOverlapping(false);
        }
        this.mDragOverlappingLayout = null;
        this.mSpringLoadedDragController.cancel();
    }

    @Override // com.android.launcher3.DropTarget
    public final void onDragOver(DropTarget.DragObject dragObject) {
        boolean z4;
        ItemInfo itemInfo;
        int i4;
        CellLayout cellLayout;
        if (!this.mIsSwitchingState || this.mTransitionProgress > 0.25f) {
            LauncherState launcherState = LauncherState.NORMAL;
            if (((LauncherState) this.mLauncher.getStateManager().getState()).hasFlag(16)) {
                z4 = true;
                if (z4 || (itemInfo = dragObject.dragInfo) == null) {
                    return;
                }
                if (itemInfo.spanX >= 0 || itemInfo.spanY < 0) {
                    throw new RuntimeException("Improper spans found");
                }
                float[] visualCenter = dragObject.getVisualCenter(this.mDragViewVisualCenter);
                this.mDragViewVisualCenter = visualCenter;
                CellLayout.CellInfo cellInfo = this.mDragInfo;
                View view = cellInfo == null ? null : cellInfo.cell;
                float f4 = visualCenter[0];
                float f5 = visualCenter[1];
                if (setDropLayoutForDragObject(dragObject, f4)) {
                    CellLayout cellLayout2 = this.mDragTargetLayout;
                    if (cellLayout2 == null || this.mLauncher.isHotseatLayout(cellLayout2)) {
                        this.mSpringLoadedDragController.cancel();
                    } else {
                        this.mSpringLoadedDragController.setAlarm(this.mDragTargetLayout);
                    }
                }
                CellLayout cellLayout3 = this.mDragTargetLayout;
                if (cellLayout3 != null) {
                    mapPointFromDropLayout(cellLayout3, this.mDragViewVisualCenter);
                    int i5 = itemInfo.spanX;
                    int i6 = itemInfo.spanY;
                    int i7 = itemInfo.minSpanX;
                    if (i7 <= 0 || (i4 = itemInfo.minSpanY) <= 0) {
                        i7 = i5;
                        i4 = i6;
                    }
                    float[] fArr = this.mDragViewVisualCenter;
                    int[] findNearestArea = findNearestArea((int) fArr[0], (int) fArr[1], i5, i6, this.mDragTargetLayout, this.mTargetCell);
                    this.mTargetCell = findNearestArea;
                    int i8 = findNearestArea[0];
                    int i9 = findNearestArea[1];
                    if (i8 != this.mDragOverX || i9 != this.mDragOverY) {
                        this.mDragOverX = i8;
                        this.mDragOverY = i9;
                        setDragMode(0);
                    }
                    CellLayout cellLayout4 = this.mDragTargetLayout;
                    float[] fArr2 = this.mDragViewVisualCenter;
                    float distanceFromWorkspaceCellVisualCenter = cellLayout4.getDistanceFromWorkspaceCellVisualCenter(fArr2[0], fArr2[1], this.mTargetCell);
                    if (distanceFromWorkspaceCellVisualCenter > this.mDragTargetLayout.getFolderCreationRadius(this.mTargetCell)) {
                        int i10 = this.mDragMode;
                        if (i10 == 2 || i10 == 1) {
                            setDragMode(0);
                        }
                    } else {
                        CellLayout cellLayout5 = this.mDragTargetLayout;
                        int[] iArr = this.mTargetCell;
                        View childAt = cellLayout5.getChildAt(iArr[0], iArr[1]);
                        ItemInfo itemInfo2 = dragObject.dragInfo;
                        boolean willCreateUserFolder = willCreateUserFolder(childAt, itemInfo2, false);
                        if (this.mDragMode == 0 && willCreateUserFolder) {
                            PreviewBackground previewBackground = new PreviewBackground();
                            this.mFolderCreateBg = previewBackground;
                            Launcher launcher = this.mLauncher;
                            previewBackground.setup(launcher, launcher, null, childAt.getMeasuredWidth(), childAt.getPaddingTop());
                            PreviewBackground previewBackground2 = this.mFolderCreateBg;
                            previewBackground2.getClass();
                            CellLayout cellLayout6 = this.mDragTargetLayout;
                            int[] iArr2 = this.mTargetCell;
                            previewBackground2.animateToAccept(cellLayout6, iArr2[0], iArr2[1]);
                            this.mDragTargetLayout.clearDragOutlines();
                            setDragMode(1);
                            DragViewStateAnnouncer dragViewStateAnnouncer = dragObject.stateAnnouncer;
                            if (dragViewStateAnnouncer != null) {
                                dragViewStateAnnouncer.announce(WorkspaceAccessibilityHelper.getDescriptionForDropOver(childAt, getContext()));
                            }
                        } else {
                            boolean willAddToExistingUserFolder = willAddToExistingUserFolder(childAt, itemInfo2);
                            if (willAddToExistingUserFolder && this.mDragMode == 0) {
                                FolderIcon folderIcon = (FolderIcon) childAt;
                                this.mDragOverFolderIcon = folderIcon;
                                folderIcon.onDragEnter(itemInfo2);
                                CellLayout cellLayout7 = this.mDragTargetLayout;
                                if (cellLayout7 != null) {
                                    cellLayout7.clearDragOutlines();
                                }
                                setDragMode(2);
                                DragViewStateAnnouncer dragViewStateAnnouncer2 = dragObject.stateAnnouncer;
                                if (dragViewStateAnnouncer2 != null) {
                                    dragViewStateAnnouncer2.announce(WorkspaceAccessibilityHelper.getDescriptionForDropOver(childAt, getContext()));
                                }
                            } else {
                                if (this.mDragMode == 2 && !willAddToExistingUserFolder) {
                                    setDragMode(0);
                                }
                                if (this.mDragMode == 1 && !willCreateUserFolder) {
                                    setDragMode(0);
                                }
                            }
                        }
                    }
                    CellLayout cellLayout8 = this.mDragTargetLayout;
                    float[] fArr3 = this.mDragViewVisualCenter;
                    boolean isNearestDropLocationOccupied = cellLayout8.isNearestDropLocationOccupied((int) fArr3[0], (int) fArr3[1], itemInfo.spanX, itemInfo.spanY, view, this.mTargetCell);
                    ItemInfo itemInfo3 = dragObject.dragInfo;
                    CellLayout.CellInfo cellInfo2 = this.mDragInfo;
                    View view2 = cellInfo2 == null ? null : cellInfo2.cell;
                    if (isNearestDropLocationOccupied) {
                        int i11 = this.mDragMode;
                        if ((i11 == 0 || i11 == 3) && (this.mLastReorderX != i8 || this.mLastReorderY != i9)) {
                            if (distanceFromWorkspaceCellVisualCenter < this.mDragTargetLayout.getReorderRadius(itemInfo3.spanX, itemInfo3.spanY, this.mTargetCell)) {
                                this.mReorderAlarm.cancelAlarm();
                                this.mLastReorderX = i8;
                                this.mLastReorderY = i9;
                                CellLayout cellLayout9 = this.mDragTargetLayout;
                                float[] fArr4 = this.mDragViewVisualCenter;
                                cellLayout9.performReorder((int) fArr4[0], (int) fArr4[1], i7, i4, itemInfo3.spanX, itemInfo3.spanY, view2, this.mTargetCell, new int[2], 0);
                                this.mReorderAlarm.setOnAlarmListener(new ReorderAlarmListener(i7, i4, itemInfo3.spanX, itemInfo3.spanY, dragObject, view2));
                                this.mReorderAlarm.setAlarm(650L);
                            }
                        }
                    } else {
                        int[] iArr3 = new int[2];
                        CellLayout cellLayout10 = this.mDragTargetLayout;
                        float[] fArr5 = this.mDragViewVisualCenter;
                        View view3 = view2;
                        cellLayout10.performReorder((int) fArr5[0], (int) fArr5[1], i7, i4, itemInfo3.spanX, itemInfo3.spanY, view3, this.mTargetCell, iArr3, 0);
                        CellLayout cellLayout11 = this.mDragTargetLayout;
                        int[] iArr4 = this.mTargetCell;
                        cellLayout11.visualizeDropLocation(iArr4[0], iArr4[1], iArr3[0], iArr3[1], dragObject);
                        CellLayout cellLayout12 = this.mDragTargetLayout;
                        float[] fArr6 = this.mDragViewVisualCenter;
                        cellLayout12.isNearestDropLocationOccupied((int) fArr6[0], (int) fArr6[1], itemInfo3.spanX, itemInfo3.spanY, view3, this.mTargetCell);
                    }
                    int i12 = this.mDragMode;
                    if ((i12 == 1 || i12 == 2 || !isNearestDropLocationOccupied) && (cellLayout = this.mDragTargetLayout) != null) {
                        cellLayout.revertTempState();
                        return;
                    }
                    return;
                }
                return;
            }
        }
        z4 = false;
        if (z4) {
            return;
        }
        if (itemInfo.spanX >= 0) {
        }
        throw new RuntimeException("Improper spans found");
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public final void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        boolean z4;
        boolean z5;
        boolean z6;
        View view;
        CellLayout.CellInfo cellInfo = this.mDragInfo;
        if (cellInfo != null && (view = cellInfo.cell) != null) {
            ((CellLayout) (view instanceof LauncherAppWidgetHostView ? dragObject.dragView.getContentViewParent().getParent() : view.getParent().getParent())).markCellsAsUnoccupiedForView(this.mDragInfo.cell);
        }
        updateChildrenLayersEnabled();
        char c4 = 1;
        if (!dragOptions.isAccessibleDrag || dragObject.dragSource == this) {
            this.mDeferRemoveExtraEmptyScreen = false;
            ShortcutAndWidgetContainer shortcutAndWidgetContainer = this.mDragSourceInternal;
            if (shortcutAndWidgetContainer != null) {
                int childCount = shortcutAndWidgetContainer.getChildCount();
                if (isTwoPanelEnabled() && !(this.mDragSourceInternal.getParent() instanceof Hotseat)) {
                    childCount += ((CellLayout) this.mWorkspaceScreens.get(getScreenPair(getCellPosMapper().mapModelToPresenter(dragObject.dragInfo).screenId))).mShortcutsAndWidgets.getChildCount();
                }
                if (dragObject.dragView.getContentView() instanceof LauncherAppWidgetHostView) {
                    childCount++;
                }
                z4 = childCount == 1;
                z5 = !FeatureFlags.FOLDABLE_SINGLE_PAGE.get() && getLeftmostVisiblePageForIndex(indexOfChild((CellLayout) this.mDragSourceInternal.getParent())) == getLeftmostVisiblePageForIndex(getPageCount() - 1);
            } else {
                z4 = false;
                z5 = false;
            }
            if (!z4 || !z5) {
                forEachExtraEmptyPageId(new P0(1, this));
            }
            if (dragObject.dragInfo.itemType == 4 && dragObject.dragSource != this) {
                int destinationPage = getDestinationPage();
                while (true) {
                    if (destinationPage >= getPageCount()) {
                        break;
                    }
                    CellLayout cellLayout = (CellLayout) getPageAt(destinationPage);
                    ItemInfo itemInfo = dragObject.dragInfo;
                    int[] iArr = new int[2];
                    int i4 = 0;
                    while (true) {
                        if (i4 >= cellLayout.mCountX) {
                            z6 = false;
                            break;
                        }
                        int i5 = 0;
                        while (i5 < cellLayout.mCountY) {
                            cellLayout.cellToPoint(i4, i5, iArr);
                            int i6 = i5;
                            int i7 = i4;
                            int[] iArr2 = iArr;
                            ItemInfo itemInfo2 = itemInfo;
                            if (cellLayout.findReorderSolution(iArr[0], iArr[c4], itemInfo.minSpanX, itemInfo.minSpanY, itemInfo.spanX, itemInfo.spanY, cellLayout.mDirectionVector, null, true, new CellLayout.ItemConfiguration()).isSolution) {
                                z6 = true;
                                break;
                            }
                            i5 = i6 + 1;
                            iArr = iArr2;
                            i4 = i7;
                            itemInfo = itemInfo2;
                            c4 = 1;
                        }
                        i4++;
                        c4 = 1;
                    }
                    if (z6) {
                        setCurrentPage(destinationPage);
                        break;
                    } else {
                        destinationPage++;
                        c4 = 1;
                    }
                }
            }
        }
        if (!this.mLauncher.isInState(LauncherState.EDIT_MODE)) {
            this.mLauncher.getStateManager().goToState(LauncherState.SPRING_LOADED);
        }
        this.mStatsLogManager.logger().withItemInfo(dragObject.dragInfo).withInstanceId(dragObject.logInstanceId).log(StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DRAG_STARTED);
    }

    /* JADX WARN: Code restructure failed: missing block: B:223:0x04ea, code lost:
        if ((r1 > r15.getFolderCreationRadius(r3) ? false : willAddToExistingUserFolder(r15.getChildAt(r3[0], r3[1]), r2)) != false) goto L261;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x04f5  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x054f  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x057f  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0586  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0597  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0665  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0197  */
    /* JADX WARN: Type inference failed for: r15v25 */
    /* JADX WARN: Type inference failed for: r15v26 */
    /* JADX WARN: Type inference failed for: r15v27 */
    /* JADX WARN: Type inference failed for: r15v8, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v106, types: [com.android.launcher3.dragndrop.DragView] */
    /* JADX WARN: Type inference failed for: r2v38, types: [com.android.launcher3.W0] */
    /* JADX WARN: Type inference failed for: r3v33, types: [com.android.launcher3.dragndrop.LauncherDragController, com.android.launcher3.dragndrop.DragController] */
    /* JADX WARN: Type inference failed for: r3v46 */
    /* JADX WARN: Type inference failed for: r3v47, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v59, types: [com.android.launcher3.W0] */
    /* JADX WARN: Type inference failed for: r3v61 */
    /* JADX WARN: Type inference failed for: r41v0, types: [com.android.launcher3.WorkspaceLayoutManager, com.android.launcher3.PagedView, android.view.View, com.android.launcher3.Workspace] */
    /* JADX WARN: Type inference failed for: r4v25, types: [com.android.launcher3.R0] */
    @Override // com.android.launcher3.DropTarget
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onDrop(final com.android.launcher3.DropTarget.DragObject r42, com.android.launcher3.dragndrop.DragOptions r43) {
        /*
            Method dump skipped, instructions count: 1802
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.Workspace.onDrop(com.android.launcher3.DropTarget$DragObject, com.android.launcher3.dragndrop.DragOptions):void");
    }

    @Override // com.android.launcher3.DragSource
    public final void onDropCompleted(View view, DropTarget.DragObject dragObject, boolean z4) {
        DragView dragView;
        CellLayout.CellInfo cellInfo;
        if (!z4) {
            CellLayout.CellInfo cellInfo2 = this.mDragInfo;
            if (cellInfo2 != null) {
                if ((cellInfo2.cell instanceof LauncherAppWidgetHostView) && (dragView = dragObject.dragView) != null) {
                    dragView.detachContentView(true);
                }
                Launcher launcher = this.mLauncher;
                CellLayout.CellInfo cellInfo3 = this.mDragInfo;
                CellLayout cellLayout = launcher.getCellLayout(cellInfo3.container, cellInfo3.screenId);
                if (cellLayout != null) {
                    cellLayout.onDropChild(this.mDragInfo.cell);
                }
            }
        } else if (view != this && (cellInfo = this.mDragInfo) != null) {
            removeWorkspaceItem(cellInfo.cell);
        }
        View homescreenIconByItemId = getHomescreenIconByItemId(dragObject.originalDragInfo.id);
        if (dragObject.cancelled && homescreenIconByItemId != null) {
            homescreenIconByItemId.setVisibility(0);
        }
        this.mDragInfo = null;
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (MotionEventsUtils.isTrackpadMultiFingerSwipe(motionEvent)) {
            return false;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        int i8;
        if (this.mUnlockWallpaperFromDefaultPageOnLayout) {
            this.mWallpaperOffset.setLockToDefaultPage(false);
            this.mUnlockWallpaperFromDefaultPageOnLayout = false;
        }
        if (this.mFirstLayout && (i8 = this.mCurrentPage) >= 0 && i8 < getChildCount()) {
            this.mWallpaperOffset.syncWithScroll();
            this.mWallpaperOffset.jumpToFinal();
        }
        super.onLayout(z4, i4, i5, i6, i7);
        updatePageAlphaValues();
    }

    public final void onNoCellFound(CellLayout cellLayout, ItemInfo itemInfo, InstanceId instanceId) {
        int i4 = this.mLauncher.isHotseatLayout(cellLayout) ? R.string.hotseat_out_of_space : R.string.out_of_space;
        Launcher launcher = this.mLauncher;
        Toast.makeText(launcher, launcher.getString(i4), 0).show();
        StatsLogManager.StatsLogger withItemInfo = this.mStatsLogManager.logger().withItemInfo(itemInfo);
        if (instanceId != null) {
            withItemInfo = withItemInfo.withInstanceId(instanceId);
        }
        withItemInfo.log(StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROP_FAILED_INSUFFICIENT_SPACE);
    }

    @Override // q1.InterfaceC1363c
    public final void onOverlayScrollChanged(float f4) {
        float boundToRange = Utilities.boundToRange(f4, 0.0f, 1.0f);
        this.mOverlayProgress = boundToRange;
        if (Float.compare(boundToRange, 1.0f) == 0) {
            if (!this.mOverlayShown) {
                this.mOverlayShown = true;
                this.mLauncher.onOverlayVisibilityChanged(true);
            }
        } else if (Float.compare(this.mOverlayProgress, 0.0f) == 0 && this.mOverlayShown) {
            this.mOverlayShown = false;
            this.mLauncher.onOverlayVisibilityChanged(false);
        }
        int size = ((ArrayList) this.mOverlayCallbacks).size();
        for (int i4 = 0; i4 < size; i4++) {
            ((InterfaceC1363c) ((ArrayList) this.mOverlayCallbacks).get(i4)).onOverlayScrollChanged(this.mOverlayProgress);
        }
    }

    @Override // com.android.launcher3.PagedView
    public final void onPageBeginTransition() {
        super.onPageBeginTransition();
        updateChildrenLayersEnabled();
    }

    @Override // com.android.launcher3.PagedView
    public final void onPageEndTransition() {
        super.onPageEndTransition();
        updateChildrenLayersEnabled();
        if (this.mDragController.isDragging() && workspaceInModalState()) {
            this.mDragController.forceTouchMove();
        }
        if (this.mStripScreensOnPageStopMoving) {
            stripEmptyScreens();
            this.mStripScreensOnPageStopMoving = false;
        }
        this.mLauncher.onPageEndTransition();
    }

    @Override // com.android.launcher3.PagedView, android.view.View
    public final void onScrollChanged(int i4, int i5, int i6, int i7) {
        super.onScrollChanged(i4, i5, i6, i7);
        boolean z4 = true;
        if (!(this.mIsSwitchingState && this.mLauncher.getStateManager().getCurrentStableState() != LauncherState.HINT_STATE) && (getLayoutTransition() == null || !getLayoutTransition().isRunning())) {
            z4 = false;
        }
        if (!z4) {
            showPageIndicatorAtCurrentScroll();
        }
        updatePageAlphaValues();
        updatePageScrollValues();
        enableHwLayersOnVisiblePages();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        LauncherState launcherState = LauncherState.NORMAL;
        return (((LauncherState) this.mLauncher.getStateManager().getState()).hasFlag(16) && (workspaceInModalState() || isVisible(view))) ? false : true;
    }

    @Override // com.android.launcher3.PagedView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (MotionEventsUtils.isTrackpadMultiFingerSwipe(motionEvent)) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup
    public final void onViewAdded(View view) {
        if (!(view instanceof CellLayout)) {
            throw new IllegalArgumentException("A Workspace can only have CellLayout children.");
        }
        CellLayout cellLayout = (CellLayout) view;
        cellLayout.setOnInterceptTouchListener(this);
        cellLayout.setImportantForAccessibility(2);
        super.onViewAdded(view);
    }

    public final void onWallpaperTap(MotionEvent motionEvent) {
        int[] iArr = this.mTempXY;
        getLocationOnScreen(iArr);
        int actionIndex = motionEvent.getActionIndex();
        iArr[0] = iArr[0] + ((int) motionEvent.getX(actionIndex));
        iArr[1] = iArr[1] + ((int) motionEvent.getY(actionIndex));
        this.mWallpaperManager.sendWallpaperCommand(getWindowToken(), motionEvent.getAction() == 1 ? "android.wallpaper.tap" : "android.wallpaper.secondaryTap", iArr[0], iArr[1], 0, null);
    }

    public final void persistRemoveItemsByMatcher(Predicate predicate, String str) {
        this.mLauncher.getModelWriter().deleteItemsFromDatabase(predicate, str);
        removeItemsByMatcher(predicate);
    }

    @Override // com.android.launcher3.DropTarget
    public final void prepareAccessibilityDrop() {
    }

    public final void removeAllWorkspaceScreens() {
        setLayoutTransition(null);
        View view = this.mFirstPagePinnedItem;
        if (view != null) {
            ((ViewGroup) view.getParent()).removeView(this.mFirstPagePinnedItem);
        }
        mapOverItems(new AnonymousClass6(this, 0));
        removeAllViews();
        this.mScreenOrder.clear();
        this.mWorkspaceScreens.clear();
        this.mLauncher.mHandler.removeCallbacksAndMessages(DeferredWidgetRefresh.class);
        bindAndInitFirstWorkspaceScreen();
        setLayoutTransition(this.mLayoutTransition);
    }

    public final void removeExtraEmptyScreenDelayed(int i4, final boolean z4, final Runnable runnable) {
        boolean z5 = this.mLauncher.mWorkspaceLoading;
        if (z5) {
            return;
        }
        if (i4 > 0) {
            postDelayed(new Runnable() { // from class: com.android.launcher3.O0
                @Override // java.lang.Runnable
                public final void run() {
                    Workspace workspace = Workspace.this;
                    boolean z6 = z4;
                    Runnable runnable2 = runnable;
                    int i5 = Workspace.f4511d;
                    workspace.removeExtraEmptyScreenDelayed(0, z6, runnable2);
                }
            }, i4);
            return;
        }
        if (!z5) {
            int panelCount = getPanelCount();
            if (!hasExtraEmptyScreens() && this.mScreenOrder.size() >= panelCount) {
                SparseArray sparseArray = new SparseArray();
                int size = this.mScreenOrder.size();
                int i5 = size - panelCount;
                while (true) {
                    if (i5 < size) {
                        int i6 = this.mScreenOrder.get(i5);
                        CellLayout cellLayout = (CellLayout) this.mWorkspaceScreens.get(i6);
                        if (cellLayout == null || cellLayout.mShortcutsAndWidgets.getChildCount() != 0 || cellLayout.isDropPending()) {
                            break;
                        }
                        sparseArray.append(i6, cellLayout);
                        i5++;
                    } else {
                        for (int i7 = 0; i7 < sparseArray.size(); i7++) {
                            int keyAt = sparseArray.keyAt(i7);
                            CellLayout cellLayout2 = (CellLayout) sparseArray.get(keyAt);
                            this.mWorkspaceScreens.remove(keyAt);
                            this.mScreenOrder.removeValue(keyAt);
                            int i8 = -201;
                            if (this.mWorkspaceScreens.containsKey(-201)) {
                                i8 = -200;
                            }
                            this.mWorkspaceScreens.put(i8, cellLayout2);
                            this.mScreenOrder.add(i8);
                        }
                    }
                }
            }
        }
        if (hasExtraEmptyScreens()) {
            forEachExtraEmptyPageId(new P0(0, this));
            setCurrentPage(getNextPage());
            showPageIndicatorAtCurrentScroll();
        }
        if (z4) {
            stripEmptyScreens();
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public final void removeItemsByMatcher(Predicate predicate) {
        CellLayout[] workspaceAndHotseatCellLayouts;
        for (CellLayout cellLayout : getWorkspaceAndHotseatCellLayouts()) {
            ShortcutAndWidgetContainer shortcutAndWidgetContainer = cellLayout.mShortcutsAndWidgets;
            for (int childCount = shortcutAndWidgetContainer.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = shortcutAndWidgetContainer.getChildAt(childCount);
                ItemInfo itemInfo = (ItemInfo) childAt.getTag();
                if (predicate.test(itemInfo)) {
                    cellLayout.removeViewInLayout(childAt);
                    if (childAt instanceof DropTarget) {
                        this.mDragController.removeDropTarget((DropTarget) childAt);
                    }
                } else if (childAt instanceof FolderIcon) {
                    FolderInfo folderInfo = (FolderInfo) itemInfo;
                    List list = (List) folderInfo.contents.stream().filter(predicate).collect(Collectors.toList());
                    if (!list.isEmpty()) {
                        folderInfo.removeAll(list, false);
                        FolderIcon folderIcon = (FolderIcon) childAt;
                        if (folderIcon.getFolder().isOpen()) {
                            folderIcon.getFolder().close(false);
                        }
                    }
                }
            }
        }
        stripEmptyScreens();
    }

    public final void removeWorkspaceItem(View view) {
        CellLayout parentCellLayoutForView = getParentCellLayoutForView(view);
        if (parentCellLayoutForView != null) {
            parentCellLayoutForView.removeView(view);
        }
        if (view instanceof DropTarget) {
            this.mDragController.removeDropTarget((DropTarget) view);
        }
    }

    public final void resetTransitionTransform() {
        if (this.mIsSwitchingState) {
            setScaleX(this.mCurrentScale);
            setScaleY(this.mCurrentScale);
        }
    }

    public final void restoreInstanceStateForChild(int i4) {
        if (this.mSavedStates != null) {
            this.mRestoredPages.add(i4);
            CellLayout cellLayout = (CellLayout) getChildAt(i4);
            if (cellLayout != null) {
                try {
                    cellLayout.dispatchRestoreInstanceState(this.mSavedStates);
                } catch (IllegalArgumentException e4) {
                    Log.e("CellLayout", "Ignoring an error while restoring a view instance state", e4);
                }
            }
        }
    }

    public final void restoreInstanceStateForRemainingPages() {
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            if (!this.mRestoredPages.contains(i4)) {
                restoreInstanceStateForChild(i4);
            }
        }
        this.mRestoredPages.clear();
        this.mSavedStates = null;
    }

    @Override // com.android.launcher3.PagedView
    public final boolean scrollLeft() {
        boolean scrollLeft = (this.mIsSwitchingState || !workspaceInScrollableState()) ? false : super.scrollLeft();
        Folder open = Folder.getOpen(this.mLauncher);
        if (open != null) {
            open.completeDragExit();
        }
        return scrollLeft;
    }

    @Override // com.android.launcher3.PagedView
    public final boolean scrollRight() {
        boolean scrollRight = (this.mIsSwitchingState || !workspaceInScrollableState()) ? false : super.scrollRight();
        Folder open = Folder.getOpen(this.mLauncher);
        if (open != null) {
            open.completeDragExit();
        }
        return scrollRight;
    }

    public final void setCurrentDropLayout(CellLayout cellLayout) {
        CellLayout cellLayout2 = this.mDragTargetLayout;
        if (cellLayout2 != null) {
            cellLayout2.revertTempState();
            this.mDragTargetLayout.onDragExit();
        }
        this.mDragTargetLayout = cellLayout;
        if (cellLayout != null) {
            cellLayout.onDragEnter();
        }
        cleanupReorder(true);
        PreviewBackground previewBackground = this.mFolderCreateBg;
        if (previewBackground != null) {
            previewBackground.animateToRest();
        }
        if (-1 == this.mDragOverX && -1 == this.mDragOverY) {
            return;
        }
        this.mDragOverX = -1;
        this.mDragOverY = -1;
        setDragMode(0);
    }

    public final void setDragMode(int i4) {
        if (i4 != this.mDragMode) {
            if (i4 == 0) {
                FolderIcon folderIcon = this.mDragOverFolderIcon;
                if (folderIcon != null) {
                    folderIcon.onDragExit();
                    this.mDragOverFolderIcon = null;
                }
                cleanupReorder(false);
                PreviewBackground previewBackground = this.mFolderCreateBg;
                if (previewBackground != null) {
                    previewBackground.animateToRest();
                }
            } else if (i4 == 2) {
                cleanupReorder(true);
                PreviewBackground previewBackground2 = this.mFolderCreateBg;
                if (previewBackground2 != null) {
                    previewBackground2.animateToRest();
                }
            } else if (i4 == 1) {
                FolderIcon folderIcon2 = this.mDragOverFolderIcon;
                if (folderIcon2 != null) {
                    folderIcon2.onDragExit();
                    this.mDragOverFolderIcon = null;
                }
                cleanupReorder(true);
            } else if (i4 == 3) {
                FolderIcon folderIcon3 = this.mDragOverFolderIcon;
                if (folderIcon3 != null) {
                    folderIcon3.onDragExit();
                    this.mDragOverFolderIcon = null;
                }
                PreviewBackground previewBackground3 = this.mFolderCreateBg;
                if (previewBackground3 != null) {
                    previewBackground3.animateToRest();
                }
            }
            this.mDragMode = i4;
        }
    }

    public final void setFinalTransitionTransform() {
        if (this.mIsSwitchingState) {
            this.mCurrentScale = getScaleX();
            setScaleX(this.mStateTransitionAnimation.getFinalScale());
            setScaleY(this.mStateTransitionAnimation.getFinalScale());
        }
    }

    @Override // com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
        DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        this.mWorkspaceFadeInAdjacentScreens = deviceProfile.isVerticalBarLayout();
        Rect rect2 = deviceProfile.workspacePadding;
        setPadding(rect2.left, rect2.top, rect2.right, rect2.bottom);
        this.mInsets.set(rect);
        boolean z4 = this.mWorkspaceFadeInAdjacentScreens;
        int i4 = deviceProfile.edgeMarginPx;
        if (z4) {
            setPageSpacing(i4);
        } else {
            setPageSpacing(Math.max(Math.max(rect.left, rect.right), Math.max(i4, rect2.left + 1)));
        }
        this.mWorkspaceScreens.forEach(new P0(3, this.mLauncher.getDeviceProfile().cellLayoutPaddingPx));
        int size = this.mScreenOrder.size();
        for (int i5 = 0; i5 < size; i5++) {
            ShortcutAndWidgetContainer shortcutAndWidgetContainer = ((CellLayout) this.mWorkspaceScreens.get(this.mScreenOrder.get(i5))).mShortcutsAndWidgets;
            int childCount = shortcutAndWidgetContainer.getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = shortcutAndWidgetContainer.getChildAt(i6);
                if ((childAt instanceof LauncherAppWidgetHostView) && (childAt.getTag() instanceof LauncherAppWidgetInfo)) {
                    LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) childAt.getTag();
                    WidgetSizes.updateWidgetSizeRanges((LauncherAppWidgetHostView) childAt, this.mLauncher, launcherAppWidgetInfo.spanX, launcherAppWidgetInfo.spanY);
                }
            }
        }
        DeviceProfile deviceProfile2 = this.mLauncher.getDeviceProfile();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mPageIndicator.getLayoutParams();
        Rect rect3 = deviceProfile2.workspacePadding;
        if (deviceProfile2.isVerticalBarLayout()) {
            int i7 = rect3.left;
            int i8 = deviceProfile2.workspaceCellPaddingXPx;
            layoutParams.leftMargin = i7 + i8;
            layoutParams.rightMargin = rect3.right + i8;
            layoutParams.bottomMargin = rect3.bottom;
        } else {
            layoutParams.rightMargin = 0;
            layoutParams.leftMargin = 0;
            layoutParams.gravity = 81;
            layoutParams.bottomMargin = deviceProfile2.hotseatBarSizePx;
        }
        this.mPageIndicator.setLayoutParams(layoutParams);
    }

    public final void setLauncherOverlay(InterfaceC1362b interfaceC1362b) {
        EdgeEffectCompat edgeEffectCompat;
        if (interfaceC1362b == null) {
            edgeEffectCompat = new EdgeEffectCompat(getContext());
            this.mOverlayEdgeEffect = null;
        } else {
            OverlayEdgeEffect overlayEdgeEffect = new OverlayEdgeEffect(getContext(), interfaceC1362b);
            this.mOverlayEdgeEffect = overlayEdgeEffect;
            interfaceC1362b.d(this);
            edgeEffectCompat = overlayEdgeEffect;
        }
        if (this.mIsRtl) {
            this.mEdgeGlowRight = edgeEffectCompat;
        } else {
            this.mEdgeGlowLeft = edgeEffectCompat;
        }
        onOverlayScrollChanged(0.0f);
    }

    public final void setPivotToScaleWithSelf(Hotseat hotseat) {
        hotseat.setPivotY(((getPivotY() + getTop()) - hotseat.getTop()) - hotseat.getTranslationY());
        hotseat.setPivotX(((getPivotX() + getLeft()) - hotseat.getLeft()) - hotseat.getTranslationX());
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public final void setState(Object obj) {
        this.mIsSwitchingState = true;
        this.mTransitionProgress = 0.0f;
        updateChildrenLayersEnabled();
        ((LauncherState) this.mLauncher.getStateManager().getState()).onLeavingState();
        this.mStateTransitionAnimation.setState((LauncherState) obj);
        onEndStateTransition();
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public final void setStateWithAnimation(Object obj, StateAnimationConfig stateAnimationConfig, PendingAnimation pendingAnimation) {
        LauncherState launcherState = (LauncherState) obj;
        StateTransitionListener stateTransitionListener = new StateTransitionListener();
        ((LauncherState) this.mLauncher.getStateManager().getState()).onLeavingState();
        this.mStateTransitionAnimation.setStateWithAnimation(launcherState, stateAnimationConfig, pendingAnimation);
        LauncherState launcherState2 = LauncherState.NORMAL;
        if (launcherState.hasFlag(4)) {
            this.mForceDrawAdjacentPages = true;
        }
        invalidate();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(stateTransitionListener);
        ofFloat.addListener(stateTransitionListener);
        pendingAnimation.add(ofFloat, SpringProperty.DEFAULT);
    }

    public final void setup(LauncherDragController launcherDragController) {
        this.mSpringLoadedDragController = new SpringLoadedDragController(this.mLauncher);
        this.mDragController = launcherDragController;
        updateChildrenLayersEnabled();
    }

    @Override // com.android.launcher3.PagedView
    public final boolean shouldFlingForVelocity(int i4) {
        return Float.compare(Math.abs(this.mOverlayProgress), 0.0f) == 0 && super.shouldFlingForVelocity(i4);
    }

    public final void showPageIndicatorAtCurrentScroll() {
        View view = this.mPageIndicator;
        if (view != null) {
            ((PageIndicator) view).setScroll(getScrollX(), computeMaxScroll());
        }
    }

    @Override // com.android.launcher3.PagedView
    public final void snapToDestination() {
        OverlayEdgeEffect overlayEdgeEffect = this.mOverlayEdgeEffect;
        if (overlayEdgeEffect == null || overlayEdgeEffect.isFinished()) {
            super.snapToDestination();
        } else {
            snapToPageImmediately(0);
        }
    }

    public final void startDrag(CellLayout.CellInfo cellInfo, DragOptions dragOptions) {
        this.mDragInfo = cellInfo;
        View view = cellInfo.cell;
        view.setVisibility(4);
        if (dragOptions.isAccessibleDrag) {
            this.mDragController.addDragListener(new AccessibleDragListenerAdapter(this, new Q0()) { // from class: com.android.launcher3.Workspace.3
                @Override // com.android.launcher3.accessibility.AccessibleDragListenerAdapter
                public final void enableAccessibleDrag(boolean z4) {
                    super.enableAccessibleDrag(z4);
                    setEnableForLayout(Workspace.this.mLauncher.mHotseat, z4);
                }
            });
        }
        beginDragShared(view, this, dragOptions);
    }

    public final void stripEmptyScreens() {
        if (this.mLauncher.mWorkspaceLoading) {
            return;
        }
        if (isPageInTransition()) {
            this.mStripScreensOnPageStopMoving = true;
            return;
        }
        int nextPage = getNextPage();
        IntArray intArray = new IntArray();
        int size = this.mWorkspaceScreens.size();
        for (int i4 = 0; i4 < size; i4++) {
            int keyAt = this.mWorkspaceScreens.keyAt(i4);
            CellLayout cellLayout = (CellLayout) this.mWorkspaceScreens.valueAt(i4);
            if (keyAt > 0 && cellLayout.mShortcutsAndWidgets.getChildCount() == 0) {
                intArray.add(keyAt);
            }
        }
        if (isTwoPanelEnabled()) {
            Iterator it = intArray.iterator();
            while (it.hasNext()) {
                if (!intArray.contains(getScreenPair(((Integer) it.next()).intValue()))) {
                    it.remove();
                }
            }
        }
        int panelCount = getPanelCount();
        int i5 = 0;
        for (int i6 = 0; i6 < intArray.size(); i6++) {
            int i7 = intArray.get(i6);
            CellLayout cellLayout2 = (CellLayout) this.mWorkspaceScreens.get(i7);
            this.mWorkspaceScreens.remove(i7);
            this.mScreenOrder.removeValue(i7);
            if (getChildCount() > panelCount) {
                if (indexOfChild(cellLayout2) < nextPage) {
                    i5++;
                }
                removeView(cellLayout2);
            } else {
                int i8 = (isTwoPanelEnabled() && i7 % 2 == 1) ? -200 : -201;
                this.mWorkspaceScreens.put(i8, cellLayout2);
                this.mScreenOrder.add(i8);
            }
        }
        if (i5 >= 0) {
            setCurrentPage(nextPage - i5);
        }
    }

    public final void unlockWallpaperFromDefaultPageOnNextLayout() {
        if (this.mWallpaperOffset.isLockedToDefaultPage()) {
            this.mUnlockWallpaperFromDefaultPageOnLayout = true;
            requestLayout();
        }
    }

    @Override // com.android.launcher3.PagedView
    public final void updateIsBeingDraggedOnTouchDown(MotionEvent motionEvent) {
        super.updateIsBeingDraggedOnTouchDown(motionEvent);
        this.mXDown = motionEvent.getX();
        float y4 = motionEvent.getY();
        this.mYDown = y4;
        View view = this.mFirstPagePinnedItem;
        boolean z4 = false;
        if (view == null) {
            this.mIsEventOverFirstPagePinnedItem = false;
            return;
        }
        float[] fArr = {this.mXDown, y4};
        Utilities.mapCoordInSelfToDescendant(view, this, fArr);
        if (this.mFirstPagePinnedItem.getLeft() <= fArr[0] && this.mFirstPagePinnedItem.getRight() >= fArr[0] && this.mFirstPagePinnedItem.getTop() <= fArr[1] && this.mFirstPagePinnedItem.getBottom() >= fArr[1]) {
            z4 = true;
        }
        this.mIsEventOverFirstPagePinnedItem = z4;
    }

    public final boolean willCreateUserFolder(View view, ItemInfo itemInfo, boolean z4) {
        if (view != null) {
            CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) view.getLayoutParams();
            if (cellLayoutLayoutParams.useTmpCoords && (cellLayoutLayoutParams.getTmpCellX() != cellLayoutLayoutParams.getCellX() || cellLayoutLayoutParams.getTmpCellY() != cellLayoutLayoutParams.getCellY())) {
                return false;
            }
        }
        CellLayout.CellInfo cellInfo = this.mDragInfo;
        boolean z5 = cellInfo != null && view == cellInfo.cell;
        if (view == null || z5) {
            return false;
        }
        if (!z4 || this.mCreateUserFolderOnDrop) {
            boolean z6 = (view.getTag() instanceof WorkspaceItemInfo) && ((WorkspaceItemInfo) view.getTag()).container != -103;
            int i4 = itemInfo.itemType;
            return z6 && (i4 == 0 || i4 == 6);
        }
        return false;
    }

    public Workspace(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mWorkspaceScreens = new IntSparseArrayMap();
        this.mScreenOrder = new IntArray();
        this.mDeferRemoveExtraEmptyScreen = false;
        this.mTargetCell = new int[2];
        this.mDragOverX = -1;
        this.mDragOverY = -1;
        this.mDragTargetLayout = null;
        this.mDragOverlappingLayout = null;
        this.mDropToLayout = null;
        this.mTempXY = new int[2];
        this.mTempFXY = new float[2];
        this.mTempRect = new Rect();
        this.mDragViewVisualCenter = new float[2];
        this.mIsSwitchingState = false;
        this.mChildrenLayersEnabled = true;
        this.mStripScreensOnPageStopMoving = false;
        this.mReorderAlarm = new Alarm();
        this.mDragOverFolderIcon = null;
        this.mCreateUserFolderOnDrop = false;
        this.mAddToExistingFolderOnDrop = false;
        this.mDragMode = 0;
        this.mLastReorderX = -1;
        this.mLastReorderY = -1;
        this.mRestoredPages = new IntArray();
        this.mOverlayShown = false;
        this.mOverlayCallbacks = new ArrayList();
        this.mForceDrawAdjacentPages = false;
        Launcher launcher = Launcher.getLauncher(context);
        this.mLauncher = launcher;
        this.mStateTransitionAnimation = new WorkspaceStateTransitionAnimation(launcher, this);
        this.mWallpaperManager = WallpaperManager.getInstance(context);
        this.mAllAppsIconSize = launcher.getDeviceProfile().allAppsIconSizePx;
        this.mWallpaperOffset = new WallpaperOffsetInterpolator(this);
        setHapticFeedbackEnabled(false);
        this.mCurrentPage = 0;
        setClipToPadding(false);
        LayoutTransition layoutTransition = new LayoutTransition();
        this.mLayoutTransition = layoutTransition;
        layoutTransition.enableTransitionType(3);
        this.mLayoutTransition.enableTransitionType(1);
        LayoutTransition layoutTransition2 = this.mLayoutTransition;
        Interpolator interpolator = y0.e.f12961y;
        layoutTransition2.setInterpolator(3, y0.e.b(0.0f, 0.5f, interpolator));
        this.mLayoutTransition.setInterpolator(1, y0.e.b(0.5f, 1.0f, interpolator));
        this.mLayoutTransition.disableTransitionType(2);
        this.mLayoutTransition.disableTransitionType(0);
        setLayoutTransition(this.mLayoutTransition);
        Executors.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.Workspace.2
            @Override // java.lang.Runnable
            public final void run() {
                Point point = LauncherAppState.getIDP(Workspace.this.getContext()).defaultWallpaperSize;
                if (point.x == Workspace.this.mWallpaperManager.getDesiredMinimumWidth() && point.y == Workspace.this.mWallpaperManager.getDesiredMinimumHeight()) {
                    return;
                }
                Workspace.this.mWallpaperManager.suggestDesiredDimensions(point.x, point.y);
            }
        });
        setMotionEventSplittingEnabled(true);
        setOnTouchListener(new WorkspaceTouchListener(launcher, this));
        this.mStatsLogManager = StatsLogManager.newInstance(context);
    }

    public final CellLayout getScreenPair(CellLayout cellLayout) {
        int idForScreen;
        if (isTwoPanelEnabled() && (idForScreen = getIdForScreen(cellLayout)) != -1) {
            return getScreenWithId(getScreenPair(idForScreen));
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.android.launcher3.dragndrop.DragView beginDragShared(android.view.View r16, J0.i r17, com.android.launcher3.DragSource r18, com.android.launcher3.model.data.ItemInfo r19, com.android.launcher3.graphics.DragPreviewProvider r20, com.android.launcher3.dragndrop.DragOptions r21) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.Workspace.beginDragShared(android.view.View, J0.i, com.android.launcher3.DragSource, com.android.launcher3.model.data.ItemInfo, com.android.launcher3.graphics.DragPreviewProvider, com.android.launcher3.dragndrop.DragOptions):com.android.launcher3.dragndrop.DragView");
    }
}
