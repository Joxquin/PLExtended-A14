package com.android.launcher3.folder;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewDebug;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.PagedView;
import com.android.launcher3.ShortcutAndWidgetContainer;
import com.android.launcher3.Utilities;
import com.android.launcher3.celllayout.CellLayoutLayoutParams;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.keyboard.ViewGroupFocusHelper;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pageindicators.PageIndicatorDots;
import com.android.launcher3.util.LauncherBindableItemsContainer$ItemOperator;
import com.android.launcher3.util.ViewCache;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.ClipPathView;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public class FolderPagedView extends PagedView implements ClipPathView {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f4596d = 0;
    private static final int[] sTmpArray = new int[2];
    private int mAllocatedContentSize;
    private Path mClipPath;
    private final ViewGroupFocusHelper mFocusIndicatorHelper;
    private Folder mFolder;
    @ViewDebug.ExportedProperty(category = "launcher")
    private int mGridCountX;
    @ViewDebug.ExportedProperty(category = "launcher")
    private int mGridCountY;
    public final boolean mIsRtl;
    private final FolderGridOrganizer mOrganizer;
    final ArrayMap mPendingAnimations;
    private final ViewCache mViewCache;
    private boolean mViewsBound;

    public FolderPagedView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPendingAnimations = new ArrayMap();
        this.mViewsBound = false;
        this.mOrganizer = new FolderGridOrganizer(LauncherAppState.getIDP(context));
        this.mIsRtl = Utilities.isRtl(getResources());
        setImportantForAccessibility(1);
        this.mFocusIndicatorHelper = new ViewGroupFocusHelper(this);
        this.mViewCache = ((ActivityContext) ActivityContext.lookupContext(context)).getViewCache();
    }

    private View getViewInCurrentPage(u uVar) {
        if (getChildCount() < 1 || getCurrentCellLayout() == null) {
            return null;
        }
        ShortcutAndWidgetContainer shortcutsAndWidgets = getCurrentCellLayout().getShortcutsAndWidgets();
        int applyAsInt = uVar.applyAsInt(shortcutsAndWidgets);
        int i4 = this.mGridCountX;
        return i4 > 0 ? shortcutsAndWidgets.getChildAt(applyAsInt % i4, applyAsInt / i4) : shortcutsAndWidgets.getChildAt(applyAsInt);
    }

    public final void addViewForRank(View view, WorkspaceItemInfo workspaceItemInfo, int i4) {
        int maxItemsPerPage = i4 / this.mOrganizer.getMaxItemsPerPage();
        CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) view.getLayoutParams();
        cellLayoutLayoutParams.setCellXY(this.mOrganizer.getPosForRank(i4));
        getPageAt(maxItemsPerPage).addViewToCellLayout(view, -1, workspaceItemInfo.getViewId(), cellLayoutLayoutParams, true);
    }

    public final boolean areViewsBound() {
        return this.mViewsBound;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void arrangeChildren(List list) {
        int size = list.size();
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            CellLayout cellLayout = (CellLayout) getChildAt(i4);
            cellLayout.removeAllViews();
            arrayList.add(cellLayout);
        }
        this.mOrganizer.setFolderInfo(this.mFolder.mInfo);
        this.mAllocatedContentSize = size;
        this.mOrganizer.setContentSize(size);
        this.mGridCountX = this.mOrganizer.getCountX();
        this.mGridCountY = this.mOrganizer.getCountY();
        for (int pageCount = getPageCount() - 1; pageCount >= 0; pageCount--) {
            getPageAt(pageCount).setGridSize(this.mGridCountX, this.mGridCountY);
        }
        Iterator it = arrayList.iterator();
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        CellLayout cellLayout2 = null;
        while (true) {
            if (i5 >= size) {
                break;
            }
            View view = list.size() > i5 ? (View) list.get(i5) : null;
            if (cellLayout2 == null || i6 >= this.mOrganizer.getMaxItemsPerPage()) {
                if (it.hasNext()) {
                    cellLayout2 = (CellLayout) it.next();
                } else {
                    DeviceProfile deviceProfile = this.mFolder.mActivityContext.getDeviceProfile();
                    CellLayout cellLayout3 = (CellLayout) this.mViewCache.getView(R.layout.folder_page, getContext(), this);
                    cellLayout3.setCellDimensions(deviceProfile.folderCellWidthPx, deviceProfile.folderCellHeightPx);
                    cellLayout3.getShortcutsAndWidgets().setMotionEventSplittingEnabled(false);
                    cellLayout3.setInvertIfRtl();
                    cellLayout3.setGridSize(this.mGridCountX, this.mGridCountY);
                    addView(cellLayout3, -1, generateDefaultLayoutParams());
                    cellLayout2 = cellLayout3;
                }
                i6 = 0;
            }
            if (view != null) {
                CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) view.getLayoutParams();
                cellLayoutLayoutParams.setCellXY(this.mOrganizer.getPosForRank(i7));
                cellLayout2.addViewToCellLayout(view, -1, ((ItemInfo) view.getTag()).getViewId(), cellLayoutLayoutParams, true);
                if (this.mOrganizer.isItemInPreview(0, i7) && (view instanceof BubbleTextView)) {
                    ((BubbleTextView) view).verifyHighRes();
                }
            }
            i7++;
            i6++;
            i5++;
        }
        boolean z4 = false;
        while (it.hasNext()) {
            removeView((View) it.next());
            z4 = true;
        }
        if (z4) {
            setCurrentPage(0);
        }
        setEnableOverscroll(getPageCount() > 1);
        ((PageIndicatorDots) this.mPageIndicator).setVisibility(getPageCount() <= 1 ? 8 : 0);
        this.mFolder.mFolderName.setGravity(getPageCount() > 1 ? this.mIsRtl ? 5 : 3 : 1);
    }

    public final void bindItems$1(List list) {
        if (this.mViewsBound) {
            unbindItems();
        }
        arrangeChildren((List) list.stream().map(new Function() { // from class: com.android.launcher3.folder.v
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return FolderPagedView.this.createNewView((WorkspaceItemInfo) obj);
            }
        }).collect(Collectors.toList()));
        this.mViewsBound = true;
    }

    @Override // com.android.launcher3.PagedView
    public final boolean canScroll(float f4, float f5) {
        return AbstractFloatingView.getTopOpenViewWithType(this.mFolder.mActivityContext, 4194302) == null;
    }

    public final void completePendingPageChanges() {
        if (this.mPendingAnimations.isEmpty()) {
            return;
        }
        for (Map.Entry entry : new ArrayMap(this.mPendingAnimations).entrySet()) {
            ((View) entry.getKey()).animate().cancel();
            ((Runnable) entry.getValue()).run();
        }
    }

    public final BubbleTextView createAndAddViewForRank(int i4, WorkspaceItemInfo workspaceItemInfo) {
        BubbleTextView createNewView = createNewView(workspaceItemInfo);
        if (this.mViewsBound) {
            ArrayList arrayList = new ArrayList(this.mFolder.getIconsInReadingOrder());
            arrayList.add(i4, createNewView);
            arrangeChildren(arrayList);
            return createNewView;
        }
        return createNewView;
    }

    public final BubbleTextView createNewView(WorkspaceItemInfo workspaceItemInfo) {
        if (workspaceItemInfo == null) {
            return null;
        }
        BubbleTextView bubbleTextView = (BubbleTextView) this.mViewCache.getView(R.layout.folder_application, getContext(), null);
        bubbleTextView.applyFromWorkspaceItem(0, workspaceItemInfo, false);
        bubbleTextView.setOnClickListener(this.mFolder.mActivityContext.getItemOnClickListener());
        bubbleTextView.setOnLongClickListener(this.mFolder);
        bubbleTextView.setOnFocusChangeListener(this.mFocusIndicatorHelper);
        CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) bubbleTextView.getLayoutParams();
        if (cellLayoutLayoutParams == null) {
            bubbleTextView.setLayoutParams(new CellLayoutLayoutParams(workspaceItemInfo.cellX, workspaceItemInfo.cellY, workspaceItemInfo.spanX, workspaceItemInfo.spanY));
        } else {
            cellLayoutLayoutParams.setCellX(workspaceItemInfo.cellX);
            cellLayoutLayoutParams.setCellY(workspaceItemInfo.cellY);
            cellLayoutLayoutParams.cellVSpan = 1;
            cellLayoutLayoutParams.cellHSpan = 1;
        }
        return bubbleTextView;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.mClipPath == null) {
            this.mFocusIndicatorHelper.draw(canvas);
            super.dispatchDraw(canvas);
            return;
        }
        int save = canvas.save();
        canvas.clipPath(this.mClipPath);
        this.mFocusIndicatorHelper.draw(canvas);
        super.dispatchDraw(canvas);
        canvas.restoreToCount(save);
    }

    public final int findNearestArea(int i4, int i5) {
        int nextPage = getNextPage();
        CellLayout pageAt = getPageAt(nextPage);
        int[] iArr = sTmpArray;
        pageAt.findNearestAreaIgnoreOccupied(i4, i5, 1, 1, iArr);
        if (this.mFolder.isLayoutRtl()) {
            iArr[0] = (pageAt.getCountX() - iArr[0]) - 1;
        }
        return Math.min(this.mAllocatedContentSize - 1, (iArr[1] * this.mGridCountX) + (this.mOrganizer.getMaxItemsPerPage() * nextPage) + iArr[0]);
    }

    public final String getAccessibilityDescription() {
        return getContext().getString(R.string.folder_opened, Integer.valueOf(this.mGridCountX), Integer.valueOf(this.mGridCountY));
    }

    public final int getAllocatedContentSize() {
        return this.mAllocatedContentSize;
    }

    @Override // com.android.launcher3.PagedView
    public final int getChildGap(int i4, int i5) {
        return getPaddingRight() + getPaddingLeft();
    }

    public final CellLayout getCurrentCellLayout() {
        return getPageAt(getNextPage());
    }

    public final int getDesiredWidth() {
        if (getPageCount() > 0) {
            return getPaddingLeft() + getPageAt(0).getDesiredWidth() + getPaddingRight();
        }
        return 0;
    }

    public final View getFirstItem() {
        return getViewInCurrentPage(new u(0));
    }

    public final View getLastItem() {
        return getViewInCurrentPage(new u(1));
    }

    public final int itemsPerPage() {
        return this.mOrganizer.getMaxItemsPerPage();
    }

    public final View iterateOverItems(LauncherBindableItemsContainer$ItemOperator launcherBindableItemsContainer$ItemOperator) {
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            CellLayout pageAt = getPageAt(i4);
            for (int i5 = 0; i5 < pageAt.getCountY(); i5++) {
                for (int i6 = 0; i6 < pageAt.getCountX(); i6++) {
                    View childAt = pageAt.getChildAt(i6, i5);
                    if (childAt != null && launcherBindableItemsContainer$ItemOperator.evaluate(childAt, (ItemInfo) childAt.getTag())) {
                        return childAt;
                    }
                }
            }
        }
        return null;
    }

    @Override // com.android.launcher3.PagedView
    public final void notifyPageSwitchListener(int i4) {
        super.notifyPageSwitchListener(i4);
        Folder folder = this.mFolder;
        if (folder != null) {
            folder.updateTextViewFocus();
        }
    }

    @Override // com.android.launcher3.PagedView
    public final void onPageBeginTransition() {
        super.onPageBeginTransition();
        verifyVisibleHighResIcons(getCurrentPage() - 1);
        verifyVisibleHighResIcons(getCurrentPage() + 1);
    }

    @Override // com.android.launcher3.PagedView, android.view.View
    public final void onScrollChanged(int i4, int i5, int i6, int i7) {
        super.onScrollChanged(i4, i5, i6, i7);
        int i8 = this.mMaxScroll;
        if (i8 > 0) {
            ((PageIndicatorDots) this.mPageIndicator).setScroll(i4, i8);
        }
    }

    public final boolean rankOnCurrentPage(int i4) {
        return i4 / this.mOrganizer.getMaxItemsPerPage() == getNextPage();
    }

    public final void realTimeReorder(int i4, int i5) {
        int i6;
        int i7;
        final int i8 = i4;
        if (this.mViewsBound) {
            completePendingPageChanges();
            int nextPage = getNextPage();
            int maxItemsPerPage = this.mOrganizer.getMaxItemsPerPage();
            int i9 = i5 % maxItemsPerPage;
            if (i5 / maxItemsPerPage != nextPage) {
                Log.e("FolderPagedView", "Cannot animate when the target cell is invisible");
            }
            int i10 = i8 % maxItemsPerPage;
            int i11 = i8 / maxItemsPerPage;
            if (i5 == i8) {
                return;
            }
            int i12 = -1;
            int i13 = 0;
            if (i5 > i8) {
                if (i11 < nextPage) {
                    i12 = nextPage * maxItemsPerPage;
                    i10 = 0;
                } else {
                    i8 = -1;
                }
                i7 = 1;
            } else {
                if (i11 > nextPage) {
                    i6 = ((nextPage + 1) * maxItemsPerPage) - 1;
                    i10 = maxItemsPerPage - 1;
                } else {
                    i8 = -1;
                    i6 = -1;
                }
                i12 = i6;
                i7 = -1;
            }
            while (i8 != i12) {
                int i14 = i8 + i7;
                int i15 = i14 / maxItemsPerPage;
                int i16 = i14 % maxItemsPerPage;
                int i17 = this.mGridCountX;
                int i18 = i16 % i17;
                int i19 = i16 / i17;
                CellLayout pageAt = getPageAt(i15);
                final View childAt = pageAt.getChildAt(i18, i19);
                if (childAt != null) {
                    if (nextPage != i15) {
                        pageAt.removeView(childAt);
                        addViewForRank(childAt, (WorkspaceItemInfo) childAt.getTag(), i8);
                    } else {
                        final float translationX = childAt.getTranslationX();
                        Runnable runnable = new Runnable() { // from class: com.android.launcher3.folder.FolderPagedView.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                FolderPagedView.this.mPendingAnimations.remove(childAt);
                                childAt.setTranslationX(translationX);
                                ((CellLayout) childAt.getParent().getParent()).removeView(childAt);
                                FolderPagedView folderPagedView = FolderPagedView.this;
                                View view = childAt;
                                folderPagedView.addViewForRank(view, (WorkspaceItemInfo) view.getTag(), i8);
                            }
                        };
                        childAt.animate().translationXBy((i7 > 0) ^ this.mIsRtl ? -childAt.getWidth() : childAt.getWidth()).setDuration(230L).setStartDelay(0L).withEndAction(runnable);
                        this.mPendingAnimations.put(childAt, runnable);
                    }
                }
                i8 = i14;
            }
            if ((i9 - i10) * i7 <= 0) {
                return;
            }
            CellLayout pageAt2 = getPageAt(nextPage);
            float f4 = 30.0f;
            while (i10 != i9) {
                int i20 = i10 + i7;
                int i21 = this.mGridCountX;
                View childAt2 = pageAt2.getChildAt(i20 % i21, i20 / i21);
                int i22 = this.mGridCountX;
                if (pageAt2.animateChildToPosition(childAt2, i10 % i22, i10 / i22, 230, i13, true, true)) {
                    f4 *= 0.9f;
                    i13 = (int) (i13 + f4);
                }
                i10 = i20;
            }
        }
    }

    @Override // com.android.launcher3.views.ClipPathView
    public final void setClipPath(Path path) {
        this.mClipPath = path;
        invalidate();
    }

    public final void setFolder(Folder folder) {
        this.mFolder = folder;
        this.mPageIndicator = folder.findViewById(R.id.folder_page_indicator);
        initParentViews(folder);
    }

    public final void showScrollHint(int i4) {
        int scrollForPage = (getScrollForPage(getNextPage()) + ((int) (((i4 == 0) ^ this.mIsRtl ? -0.07f : 0.07f) * getWidth()))) - getScrollX();
        if (scrollForPage != 0) {
            this.mScroller.startScroll(getScrollX(), 0, scrollForPage, 0, 500);
            invalidate();
        }
    }

    public final void unbindItems() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                removeAllViews();
                this.mViewsBound = false;
                return;
            }
            CellLayout cellLayout = (CellLayout) getChildAt(childCount);
            ShortcutAndWidgetContainer shortcutsAndWidgets = cellLayout.getShortcutsAndWidgets();
            for (int childCount2 = shortcutsAndWidgets.getChildCount() - 1; childCount2 >= 0; childCount2--) {
                shortcutsAndWidgets.getChildAt(childCount2).setVisibility(0);
                this.mViewCache.recycleView(shortcutsAndWidgets.getChildAt(childCount2), R.layout.folder_application);
            }
            cellLayout.removeAllViews();
            this.mViewCache.recycleView(cellLayout, R.layout.folder_page);
        }
    }

    public final void verifyVisibleHighResIcons(int i4) {
        CellLayout pageAt = getPageAt(i4);
        if (pageAt != null) {
            ShortcutAndWidgetContainer shortcutsAndWidgets = pageAt.getShortcutsAndWidgets();
            for (int childCount = shortcutsAndWidgets.getChildCount() - 1; childCount >= 0; childCount--) {
                BubbleTextView bubbleTextView = (BubbleTextView) shortcutsAndWidgets.getChildAt(childCount);
                bubbleTextView.verifyHighRes();
                FastBitmapDrawable icon = bubbleTextView.getIcon();
                if (icon != null) {
                    icon.setCallback(bubbleTextView);
                }
            }
        }
    }
}
