package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.util.Property;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import com.android.launcher3.DropTarget;
import com.android.launcher3.accessibility.DragAndDropAccessibilityDelegate;
import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import com.android.launcher3.celllayout.CellLayoutLayoutParams;
import com.android.launcher3.celllayout.CellPosMapper;
import com.android.launcher3.celllayout.ReorderAlgorithm;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.folder.PreviewBackground;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.util.ActivityTracker;
import com.android.launcher3.util.CellAndSpan;
import com.android.launcher3.util.GridOccupancy;
import com.android.launcher3.util.MultiTranslateDelegate;
import com.android.launcher3.util.ParcelableSparseArray;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.shared.system.SysUiStatsLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Stack;
import java.util.function.Function;
import v.C1429e;
/* loaded from: classes.dex */
public class CellLayout extends ViewGroup {
    protected final ActivityContext mActivity;
    protected final Drawable mBackground;
    @ViewDebug.ExportedProperty(category = "launcher")
    protected Point mBorderSpace;
    @ViewDebug.ExportedProperty(category = "launcher")
    int mCellHeight;
    @ViewDebug.ExportedProperty(category = "launcher")
    int mCellWidth;
    private final int mContainerType;
    @ViewDebug.ExportedProperty(category = "launcher")
    protected int mCountX;
    @ViewDebug.ExportedProperty(category = "launcher")
    protected int mCountY;
    private final ArrayList mDelegatedCellDrawings;
    public final int[] mDirectionVector;
    private final int[] mDragCell;
    private final int[] mDragCellSpan;
    final float[] mDragOutlineAlphas;
    private final InterruptibleInOutAnimator[] mDragOutlineAnims;
    private int mDragOutlineCurrent;
    private final Paint mDragOutlinePaint;
    final CellLayoutLayoutParams[] mDragOutlines;
    private boolean mDragging;
    private boolean mDropPending;
    private final TimeInterpolator mEaseOutInterpolator;
    private int mFixedCellHeight;
    private int mFixedCellWidth;
    private int mFixedHeight;
    private int mFixedWidth;
    final PreviewBackground mFolderLeaveBehind;
    private float mGridAlpha;
    private int mGridColor;
    private int mGridVisualizationRoundingRadius;
    private View.OnTouchListener mInterceptTouchListener;
    private final ArrayList mIntersectingViews;
    private boolean mIsDragOverlapping;
    private boolean mItemPlacementDirty;
    protected GridOccupancy mOccupied;
    private final Rect mOccupiedRect;
    ItemConfiguration mPreviousSolution;
    final ArrayMap mReorderAnimators;
    final float mReorderPreviewAnimationMagnitude;
    private float mScrollProgress;
    final ArrayMap mShakeAnimators;
    protected final ShortcutAndWidgetContainer mShortcutsAndWidgets;
    protected float mSpringLoadedProgress;
    final int[] mTempLocation;
    private final Rect mTempRect;
    public GridOccupancy mTmpOccupied;
    final int[] mTmpPoint;
    DragAndDropAccessibilityDelegate mTouchHelper;
    private boolean mVisualizeDropLocation;
    private Paint mVisualizeGridPaint;
    private RectF mVisualizeGridRect;
    private static final int FOLDER_LEAVE_BEHIND_COLOR = Color.argb(160, (int) SysUiStatsLog.NOTIFICATION_PANEL_REPORTED, (int) SysUiStatsLog.NOTIFICATION_PANEL_REPORTED, (int) SysUiStatsLog.NOTIFICATION_PANEL_REPORTED);
    private static final int[] BACKGROUND_STATE_ACTIVE = {16842914};
    private static final int[] BACKGROUND_STATE_DEFAULT = ViewGroup.EMPTY_STATE_SET;
    private static final Paint sPaint = new Paint();
    public static final FloatProperty SPRING_LOADED_PROGRESS = new FloatProperty() { // from class: com.android.launcher3.CellLayout.1
        @Override // android.util.Property
        public final Float get(Object obj) {
            return Float.valueOf(((CellLayout) obj).mSpringLoadedProgress);
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f4) {
            ((CellLayout) obj).setSpringLoadedProgress(f4);
        }
    };
    private static final Property ANIMATION_PROGRESS = new Property(Float.TYPE) { // from class: com.android.launcher3.CellLayout.5
        @Override // android.util.Property
        public final Object get(Object obj) {
            return Float.valueOf(((ReorderPreviewAnimation) obj).animationProgress);
        }

        @Override // android.util.Property
        public final void set(Object obj, Object obj2) {
            ReorderPreviewAnimation reorderPreviewAnimation = (ReorderPreviewAnimation) obj;
            float floatValue = ((Float) obj2).floatValue();
            reorderPreviewAnimation.animationProgress = floatValue;
            if (reorderPreviewAnimation.mode == 0 && reorderPreviewAnimation.repeating) {
                floatValue = 1.0f;
            }
            float f4 = 1.0f - floatValue;
            float f5 = (reorderPreviewAnimation.initDeltaX * f4) + (reorderPreviewAnimation.finalDeltaX * floatValue);
            float f6 = (f4 * reorderPreviewAnimation.initDeltaY) + (floatValue * reorderPreviewAnimation.finalDeltaY);
            Reorderable reorderable = (Reorderable) reorderPreviewAnimation.child;
            reorderable.getTranslateDelegate().setTranslation(f5, f6, 0);
            float f7 = reorderPreviewAnimation.animationProgress;
            reorderable.setReorderBounceScale(((1.0f - f7) * reorderPreviewAnimation.initScale) + (reorderPreviewAnimation.finalScale * f7));
        }
    };

    /* loaded from: classes.dex */
    public final class CellInfo extends CellAndSpan {
        public final View cell;
        final int container;
        final int screenId;

        public CellInfo(View view, ItemInfo itemInfo, CellPosMapper.CellPos cellPos) {
            this.cellX = cellPos.cellX;
            this.cellY = cellPos.cellY;
            this.spanX = itemInfo.spanX;
            this.spanY = itemInfo.spanY;
            this.cell = view;
            this.screenId = cellPos.screenId;
            this.container = itemInfo.container;
        }

        @Override // com.android.launcher3.util.CellAndSpan
        public final String toString() {
            StringBuilder sb = new StringBuilder("Cell[view=");
            View view = this.cell;
            sb.append(view == null ? "null" : view.getClass());
            sb.append(", x=");
            sb.append(this.cellX);
            sb.append(", y=");
            return C1429e.a(sb, this.cellY, "]");
        }
    }

    /* loaded from: classes.dex */
    public abstract class DelegatedCellDrawing {
        public int mDelegateCellX;
        public int mDelegateCellY;

        public abstract void drawOverItem();

        public abstract void drawUnderItem(Canvas canvas);
    }

    /* loaded from: classes.dex */
    public final class ItemConfiguration extends CellAndSpan {
        public ArrayList intersectingViews;
        public final ArrayMap map = new ArrayMap();
        private final ArrayMap savedMap = new ArrayMap();
        public final ArrayList sortedViews = new ArrayList();
        public boolean isSolution = false;

        public final void add(View view, CellAndSpan cellAndSpan) {
            this.map.put(view, cellAndSpan);
            this.savedMap.put(view, new CellAndSpan());
            this.sortedViews.add(view);
        }

        public final void getBoundingRectForViews(ArrayList arrayList, Rect rect) {
            Iterator it = arrayList.iterator();
            boolean z4 = true;
            while (it.hasNext()) {
                CellAndSpan cellAndSpan = (CellAndSpan) this.map.get((View) it.next());
                if (z4) {
                    int i4 = cellAndSpan.cellX;
                    int i5 = cellAndSpan.cellY;
                    rect.set(i4, i5, cellAndSpan.spanX + i4, cellAndSpan.spanY + i5);
                    z4 = false;
                } else {
                    int i6 = cellAndSpan.cellX;
                    int i7 = cellAndSpan.cellY;
                    rect.union(i6, i7, cellAndSpan.spanX + i6, cellAndSpan.spanY + i7);
                }
            }
        }

        public final void restore() {
            ArrayMap arrayMap = this.savedMap;
            for (View view : arrayMap.keySet()) {
                CellAndSpan cellAndSpan = (CellAndSpan) this.map.get(view);
                CellAndSpan cellAndSpan2 = (CellAndSpan) arrayMap.get(view);
                cellAndSpan.getClass();
                cellAndSpan.cellX = cellAndSpan2.cellX;
                cellAndSpan.cellY = cellAndSpan2.cellY;
                cellAndSpan.spanX = cellAndSpan2.spanX;
                cellAndSpan.spanY = cellAndSpan2.spanY;
            }
        }

        public final void save() {
            ArrayMap arrayMap = this.map;
            for (View view : arrayMap.keySet()) {
                CellAndSpan cellAndSpan = (CellAndSpan) this.savedMap.get(view);
                CellAndSpan cellAndSpan2 = (CellAndSpan) arrayMap.get(view);
                cellAndSpan.getClass();
                cellAndSpan.cellX = cellAndSpan2.cellX;
                cellAndSpan.cellY = cellAndSpan2.cellY;
                cellAndSpan.spanX = cellAndSpan2.spanX;
                cellAndSpan.spanY = cellAndSpan2.spanY;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class ReorderPreviewAnimation {

        /* renamed from: a  reason: collision with root package name */
        ValueAnimator f4421a;
        final View child;
        float finalDeltaX;
        float finalDeltaY;
        final float finalScale;
        float initDeltaX;
        float initDeltaY;
        float initScale;
        final int mode;
        boolean repeating = false;
        float animationProgress = 0.0f;

        public ReorderPreviewAnimation(CellLayout cellLayout, View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
            cellLayout.regionToCenterPoint(i5, i6, i9, i10, cellLayout.mTmpPoint);
            int[] iArr = cellLayout.mTmpPoint;
            int i11 = iArr[0];
            int i12 = iArr[1];
            cellLayout.regionToCenterPoint(i7, i8, i9, i10, iArr);
            int[] iArr2 = cellLayout.mTmpPoint;
            int i13 = iArr2[0] - i11;
            int i14 = iArr2[1] - i12;
            this.child = view;
            this.mode = i4;
            this.finalDeltaX = 0.0f;
            this.finalDeltaY = 0.0f;
            Reorderable reorderable = (Reorderable) view;
            MultiTranslateDelegate translateDelegate = reorderable.getTranslateDelegate();
            this.initDeltaX = translateDelegate.getTranslationX(0).getValue();
            this.initDeltaY = translateDelegate.getTranslationY(0).getValue();
            this.initScale = reorderable.getReorderBounceScale();
            this.finalScale = 1.0f - ((4.0f / view.getWidth()) * this.initScale);
            int i15 = i4 == 0 ? -1 : 1;
            if (i13 == i14 && i13 == 0) {
                return;
            }
            if (i14 == 0) {
                this.finalDeltaX = Math.signum(i13) * (-i15) * cellLayout.mReorderPreviewAnimationMagnitude;
            } else if (i13 == 0) {
                this.finalDeltaY = Math.signum(i14) * (-i15) * cellLayout.mReorderPreviewAnimationMagnitude;
            } else {
                float f4 = i14;
                float f5 = i13;
                double atan = Math.atan(f4 / f5);
                float f6 = -i15;
                this.finalDeltaX = (int) (Math.abs(Math.cos(atan) * cellLayout.mReorderPreviewAnimationMagnitude) * Math.signum(f5) * f6);
                this.finalDeltaY = (int) (Math.abs(Math.sin(atan) * cellLayout.mReorderPreviewAnimationMagnitude) * Math.signum(f4) * f6);
            }
        }

        public final void finishAnimation() {
            ValueAnimator valueAnimator = this.f4421a;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.initScale = 1.0f;
            this.initDeltaX = 0.0f;
            this.initDeltaY = 0.0f;
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, CellLayout.ANIMATION_PROGRESS, this.animationProgress, 0.0f);
            this.f4421a = ofFloat;
            ofFloat.setInterpolator(y0.e.f12927A);
            this.f4421a.setDuration(150L);
            this.f4421a.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class ViewCluster {
        final int[] bottomEdge;
        final Rect boundingRect = new Rect();
        boolean boundingRectDirty;
        final PositionComparator comparator;
        final ItemConfiguration config;
        int dirtyEdges;
        final int[] leftEdge;
        final int[] rightEdge;
        final int[] topEdge;
        final ArrayList views;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public final class PositionComparator implements Comparator {
            int whichEdge = 0;

            public PositionComparator() {
            }

            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int i4;
                int i5;
                int i6;
                int i7;
                int i8;
                CellAndSpan cellAndSpan = (CellAndSpan) ViewCluster.this.config.map.get((View) obj);
                CellAndSpan cellAndSpan2 = (CellAndSpan) ViewCluster.this.config.map.get((View) obj2);
                int i9 = this.whichEdge;
                if (i9 == 1) {
                    i4 = cellAndSpan2.cellX + cellAndSpan2.spanX;
                    i5 = cellAndSpan.cellX;
                    i6 = cellAndSpan.spanX;
                } else if (i9 != 2) {
                    if (i9 != 4) {
                        i7 = cellAndSpan.cellY;
                        i8 = cellAndSpan2.cellY;
                    } else {
                        i7 = cellAndSpan.cellX;
                        i8 = cellAndSpan2.cellX;
                    }
                    return i7 - i8;
                } else {
                    i4 = cellAndSpan2.cellY + cellAndSpan2.spanY;
                    i5 = cellAndSpan.cellY;
                    i6 = cellAndSpan.spanY;
                }
                return i4 - (i5 + i6);
            }
        }

        public ViewCluster(ArrayList arrayList, ItemConfiguration itemConfiguration) {
            int i4 = CellLayout.this.mCountY;
            this.leftEdge = new int[i4];
            this.rightEdge = new int[i4];
            int i5 = CellLayout.this.mCountX;
            this.topEdge = new int[i5];
            this.bottomEdge = new int[i5];
            this.comparator = new PositionComparator();
            this.views = (ArrayList) arrayList.clone();
            this.config = itemConfiguration;
            resetEdges();
        }

        public final void resetEdges() {
            CellLayout cellLayout;
            int i4 = 0;
            while (true) {
                cellLayout = CellLayout.this;
                if (i4 >= cellLayout.mCountX) {
                    break;
                }
                this.topEdge[i4] = -1;
                this.bottomEdge[i4] = -1;
                i4++;
            }
            for (int i5 = 0; i5 < cellLayout.mCountY; i5++) {
                this.leftEdge[i5] = -1;
                this.rightEdge[i5] = -1;
            }
            this.dirtyEdges = 15;
            this.boundingRectDirty = true;
        }
    }

    public CellLayout(Context context) {
        this(context, null);
    }

    private void animateItemsToSolution(ItemConfiguration itemConfiguration, View view, boolean z4) {
        CellAndSpan cellAndSpan;
        GridOccupancy gridOccupancy = this.mTmpOccupied;
        gridOccupancy.clear();
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i4);
            if (childAt != view && (cellAndSpan = (CellAndSpan) itemConfiguration.map.get(childAt)) != null) {
                animateChildToPosition(childAt, cellAndSpan.cellX, cellAndSpan.cellY, 150, 0, false, false);
                gridOccupancy.markCells(cellAndSpan, true);
            }
        }
        if (z4) {
            gridOccupancy.markCells(itemConfiguration, true);
        }
    }

    private void beginOrAdjustReorderPreviewAnimations(ItemConfiguration itemConfiguration, View view, int i4) {
        ArrayList arrayList;
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i5);
            if (childAt != view) {
                CellAndSpan cellAndSpan = (CellAndSpan) itemConfiguration.map.get(childAt);
                boolean z4 = true;
                boolean z5 = (i4 != 0 || (arrayList = itemConfiguration.intersectingViews) == null || arrayList.contains(childAt)) ? false : true;
                CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) childAt.getLayoutParams();
                if (cellAndSpan != null && !z5 && (childAt instanceof Reorderable)) {
                    final ReorderPreviewAnimation reorderPreviewAnimation = new ReorderPreviewAnimation(this, childAt, i4, cellLayoutLayoutParams.getCellX(), cellLayoutLayoutParams.getCellY(), cellAndSpan.cellX, cellAndSpan.cellY, cellAndSpan.spanX, cellAndSpan.spanY);
                    z4 = (reorderPreviewAnimation.finalDeltaX == 0.0f && reorderPreviewAnimation.finalDeltaY == 0.0f) ? false : false;
                    ArrayMap arrayMap = this.mShakeAnimators;
                    View view2 = reorderPreviewAnimation.child;
                    if (arrayMap.containsKey(view2)) {
                        ReorderPreviewAnimation reorderPreviewAnimation2 = (ReorderPreviewAnimation) this.mShakeAnimators.get(view2);
                        this.mShakeAnimators.remove(view2);
                        if (z4) {
                            reorderPreviewAnimation2.finishAnimation();
                        } else {
                            ValueAnimator valueAnimator = reorderPreviewAnimation2.f4421a;
                            if (valueAnimator != null) {
                                valueAnimator.cancel();
                            }
                        }
                    }
                    if (!z4) {
                        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(reorderPreviewAnimation, ANIMATION_PROGRESS, 0.0f, 1.0f);
                        reorderPreviewAnimation.f4421a = ofFloat;
                        if (ValueAnimator.areAnimatorsEnabled()) {
                            ofFloat.setRepeatMode(2);
                            ofFloat.setRepeatCount(-1);
                        }
                        ofFloat.setDuration(reorderPreviewAnimation.mode == 0 ? 650L : 300L);
                        ofFloat.setStartDelay((int) (Math.random() * 60.0d));
                        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.CellLayout.ReorderPreviewAnimation.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationRepeat(Animator animator) {
                                ReorderPreviewAnimation reorderPreviewAnimation3 = ReorderPreviewAnimation.this;
                                reorderPreviewAnimation3.initScale = 1.0f;
                                reorderPreviewAnimation3.initDeltaX = 0.0f;
                                reorderPreviewAnimation3.initDeltaY = 0.0f;
                                reorderPreviewAnimation3.repeating = true;
                            }
                        });
                        this.mShakeAnimators.put((Reorderable) view2, reorderPreviewAnimation);
                        ofFloat.start();
                    }
                }
            }
        }
    }

    private void commitTempPlacement(View view) {
        int i4;
        this.mTmpOccupied.copyTo(this.mOccupied);
        ActivityContext activityContext = this.mActivity;
        ActivityTracker activityTracker = Launcher.ACTIVITY_TRACKER;
        int idForScreen = ((Launcher) activityContext).mWorkspace.getIdForScreen(this);
        if (this.mContainerType == 1) {
            idForScreen = -1;
            i4 = -101;
        } else {
            i4 = -100;
        }
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i5);
            CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) childAt.getLayoutParams();
            ItemInfo itemInfo = (ItemInfo) childAt.getTag();
            if (itemInfo != null && childAt != view) {
                CellPosMapper.CellPos mapModelToPresenter = this.mActivity.getCellPosMapper().mapModelToPresenter(itemInfo);
                boolean z4 = (mapModelToPresenter.cellX == cellLayoutLayoutParams.getTmpCellX() && mapModelToPresenter.cellY == cellLayoutLayoutParams.getTmpCellY() && itemInfo.spanX == cellLayoutLayoutParams.cellHSpan && itemInfo.spanY == cellLayoutLayoutParams.cellVSpan && mapModelToPresenter.screenId == idForScreen) ? false : true;
                cellLayoutLayoutParams.setCellX(cellLayoutLayoutParams.getTmpCellX());
                cellLayoutLayoutParams.setCellY(cellLayoutLayoutParams.getTmpCellY());
                if (z4) {
                    ((Launcher) this.mActivity).getModelWriter().modifyItemInDatabase(itemInfo, i4, idForScreen, cellLayoutLayoutParams.getCellX(), cellLayoutLayoutParams.getCellY(), cellLayoutLayoutParams.cellHSpan, cellLayoutLayoutParams.cellVSpan);
                }
            }
        }
    }

    private void completeAndClearReorderPreviewAnimations() {
        for (ReorderPreviewAnimation reorderPreviewAnimation : this.mShakeAnimators.values()) {
            reorderPreviewAnimation.finishAnimation();
        }
        this.mShakeAnimators.clear();
    }

    private static void computeDirectionVector(float f4, float f5, int[] iArr) {
        double atan = Math.atan(f5 / f4);
        iArr[0] = 0;
        iArr[1] = 0;
        if (Math.abs(Math.cos(atan)) > 0.5d) {
            iArr[0] = (int) Math.signum(f4);
        }
        if (Math.abs(Math.sin(atan)) > 0.5d) {
            iArr[1] = (int) Math.signum(f5);
        }
    }

    private void copySolutionToTempState(ItemConfiguration itemConfiguration, View view) {
        this.mTmpOccupied.clear();
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i4);
            if (childAt != view) {
                CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) childAt.getLayoutParams();
                CellAndSpan cellAndSpan = (CellAndSpan) itemConfiguration.map.get(childAt);
                if (cellAndSpan != null) {
                    cellLayoutLayoutParams.setTmpCellX(cellAndSpan.cellX);
                    cellLayoutLayoutParams.setTmpCellY(cellAndSpan.cellY);
                    cellLayoutLayoutParams.cellHSpan = cellAndSpan.spanX;
                    cellLayoutLayoutParams.cellVSpan = cellAndSpan.spanY;
                    this.mTmpOccupied.markCells(cellAndSpan, true);
                }
            }
        }
        this.mTmpOccupied.markCells(itemConfiguration, true);
    }

    private void getWorkspaceCellVisualCenter(int i4, int i5, int[] iArr) {
        View childAt = getChildAt(i4, i5);
        if (childAt instanceof DraggableView) {
            DraggableView draggableView = (DraggableView) childAt;
            if (draggableView.getViewType() == 0) {
                cellToPoint(i4, i5, iArr);
                draggableView.getWorkspaceVisualDragBounds(this.mTempRect);
                this.mTempRect.offset(iArr[0], iArr[1]);
                iArr[0] = this.mTempRect.centerX();
                iArr[1] = this.mTempRect.centerY();
                return;
            }
        }
        regionToCenterPoint(i4, i5, 1, 1, iArr);
    }

    private boolean pushViewsToTempLocation(ArrayList arrayList, Rect rect, int[] iArr, View view, ItemConfiguration itemConfiguration) {
        int i4;
        int i5;
        ArrayMap arrayMap;
        Rect rect2;
        boolean z4;
        Rect rect3;
        ItemConfiguration itemConfiguration2;
        int i6;
        ArrayMap arrayMap2;
        boolean z5;
        CellLayout cellLayout;
        boolean z6;
        boolean z7;
        Iterator it;
        CellLayout cellLayout2;
        boolean z8;
        int i7;
        ArrayMap arrayMap3;
        CellLayout cellLayout3 = this;
        ItemConfiguration itemConfiguration3 = itemConfiguration;
        ViewCluster viewCluster = new ViewCluster(arrayList, itemConfiguration3);
        boolean z9 = viewCluster.boundingRectDirty;
        ArrayList arrayList2 = viewCluster.views;
        Rect rect4 = viewCluster.boundingRect;
        ItemConfiguration itemConfiguration4 = viewCluster.config;
        if (z9) {
            itemConfiguration4.getBoundingRectForViews(arrayList2, rect4);
        }
        boolean z10 = false;
        int i8 = iArr[0];
        if (i8 < 0) {
            i4 = rect4.right - rect.left;
            i5 = 1;
        } else if (i8 > 0) {
            i4 = rect.right - rect4.left;
            i5 = 4;
        } else if (iArr[1] < 0) {
            i4 = rect4.bottom - rect.top;
            i5 = 2;
        } else {
            i4 = rect.bottom - rect4.top;
            i5 = 8;
        }
        if (i4 <= 0) {
            return false;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            cellLayout3.mTmpOccupied.markCells((CellAndSpan) itemConfiguration3.map.get((View) it2.next()), false);
        }
        itemConfiguration.save();
        ViewCluster.PositionComparator positionComparator = viewCluster.comparator;
        positionComparator.whichEdge = i5;
        Collections.sort(itemConfiguration4.sortedViews, positionComparator);
        CellLayout cellLayout4 = cellLayout3;
        boolean z11 = false;
        while (true) {
            arrayMap = itemConfiguration3.map;
            if (i4 <= 0 || z11) {
                break;
            }
            Iterator it3 = itemConfiguration3.sortedViews.iterator();
            while (true) {
                boolean hasNext = it3.hasNext();
                ArrayMap arrayMap4 = itemConfiguration4.map;
                if (!hasNext) {
                    boolean z12 = z11;
                    rect3 = rect4;
                    itemConfiguration2 = itemConfiguration4;
                    i6 = i4;
                    arrayMap2 = arrayMap4;
                    z5 = false;
                    cellLayout = cellLayout3;
                    z6 = z12;
                    break;
                }
                View view2 = (View) it3.next();
                if (arrayList2.contains(view2) || view2 == view) {
                    z7 = z11;
                    it = it3;
                    rect3 = rect4;
                    itemConfiguration2 = itemConfiguration4;
                    i6 = i4;
                    cellLayout2 = cellLayout3;
                } else {
                    CellAndSpan cellAndSpan = (CellAndSpan) arrayMap4.get(view2);
                    int i9 = viewCluster.dirtyEdges & i5;
                    int[] iArr2 = viewCluster.bottomEdge;
                    it = it3;
                    int[] iArr3 = viewCluster.rightEdge;
                    int[] iArr4 = viewCluster.topEdge;
                    z7 = z11;
                    int[] iArr5 = viewCluster.leftEdge;
                    if (i9 == i5) {
                        int size = arrayList2.size();
                        rect3 = rect4;
                        int i10 = 0;
                        while (i10 < size) {
                            int i11 = size;
                            CellAndSpan cellAndSpan2 = (CellAndSpan) arrayMap4.get(arrayList2.get(i10));
                            ItemConfiguration itemConfiguration5 = itemConfiguration4;
                            if (i5 == 1) {
                                i7 = i4;
                                arrayMap3 = arrayMap4;
                                int i12 = cellAndSpan2.cellX;
                                for (int i13 = cellAndSpan2.cellY; i13 < cellAndSpan2.cellY + cellAndSpan2.spanY; i13++) {
                                    int i14 = iArr5[i13];
                                    if (i12 < i14 || i14 < 0) {
                                        iArr5[i13] = i12;
                                    }
                                }
                            } else if (i5 == 2) {
                                i7 = i4;
                                arrayMap3 = arrayMap4;
                                int i15 = cellAndSpan2.cellY;
                                for (int i16 = cellAndSpan2.cellX; i16 < cellAndSpan2.cellX + cellAndSpan2.spanX; i16++) {
                                    int i17 = iArr4[i16];
                                    if (i15 < i17 || i17 < 0) {
                                        iArr4[i16] = i15;
                                    }
                                }
                            } else if (i5 == 4) {
                                i7 = i4;
                                arrayMap3 = arrayMap4;
                                int i18 = cellAndSpan2.cellX + cellAndSpan2.spanX;
                                for (int i19 = cellAndSpan2.cellY; i19 < cellAndSpan2.cellY + cellAndSpan2.spanY; i19++) {
                                    if (i18 > iArr3[i19]) {
                                        iArr3[i19] = i18;
                                    }
                                }
                            } else if (i5 != 8) {
                                i7 = i4;
                                arrayMap3 = arrayMap4;
                            } else {
                                arrayMap3 = arrayMap4;
                                int i20 = cellAndSpan2.cellY + cellAndSpan2.spanY;
                                i7 = i4;
                                for (int i21 = cellAndSpan2.cellX; i21 < cellAndSpan2.cellX + cellAndSpan2.spanX; i21++) {
                                    if (i20 > iArr2[i21]) {
                                        iArr2[i21] = i20;
                                    }
                                }
                            }
                            i10++;
                            size = i11;
                            itemConfiguration4 = itemConfiguration5;
                            arrayMap4 = arrayMap3;
                            i4 = i7;
                        }
                        itemConfiguration2 = itemConfiguration4;
                        i6 = i4;
                        arrayMap2 = arrayMap4;
                        viewCluster.dirtyEdges &= ~i5;
                    } else {
                        rect3 = rect4;
                        itemConfiguration2 = itemConfiguration4;
                        i6 = i4;
                        arrayMap2 = arrayMap4;
                    }
                    if (i5 == 1) {
                        for (int i22 = cellAndSpan.cellY; i22 < cellAndSpan.cellY + cellAndSpan.spanY; i22++) {
                            if (iArr5[i22] == cellAndSpan.cellX + cellAndSpan.spanX) {
                                z8 = true;
                                break;
                            }
                        }
                        z8 = false;
                    } else if (i5 == 2) {
                        for (int i23 = cellAndSpan.cellX; i23 < cellAndSpan.cellX + cellAndSpan.spanX; i23++) {
                            if (iArr4[i23] == cellAndSpan.cellY + cellAndSpan.spanY) {
                                z8 = true;
                                break;
                            }
                        }
                        z8 = false;
                    } else if (i5 != 4) {
                        if (i5 == 8) {
                            for (int i24 = cellAndSpan.cellX; i24 < cellAndSpan.cellX + cellAndSpan.spanX; i24++) {
                                if (iArr2[i24] == cellAndSpan.cellY) {
                                    z8 = true;
                                    break;
                                }
                            }
                        }
                        z8 = false;
                    } else {
                        for (int i25 = cellAndSpan.cellY; i25 < cellAndSpan.cellY + cellAndSpan.spanY; i25++) {
                            if (iArr3[i25] == cellAndSpan.cellX) {
                                z8 = true;
                                break;
                            }
                        }
                        z8 = false;
                    }
                    if (!z8) {
                        cellLayout2 = this;
                    } else if (!((CellLayoutLayoutParams) view2.getLayoutParams()).canReorder) {
                        z6 = true;
                        cellLayout = this;
                        cellLayout4 = cellLayout;
                        z5 = false;
                        break;
                    } else {
                        arrayList2.add(view2);
                        viewCluster.resetEdges();
                        cellLayout2 = this;
                        cellLayout2.mTmpOccupied.markCells((CellAndSpan) arrayMap.get(view2), false);
                    }
                    cellLayout4 = cellLayout2;
                }
                it3 = it;
                cellLayout3 = cellLayout2;
                rect4 = rect3;
                itemConfiguration4 = itemConfiguration2;
                i4 = i6;
                z11 = z7;
            }
            i4 = i6 - 1;
            Iterator it4 = arrayList2.iterator();
            while (it4.hasNext()) {
                ArrayMap arrayMap5 = arrayMap2;
                CellAndSpan cellAndSpan3 = (CellAndSpan) arrayMap5.get((View) it4.next());
                if (i5 == 1) {
                    cellAndSpan3.cellX--;
                } else if (i5 == 2) {
                    cellAndSpan3.cellY--;
                } else if (i5 != 4) {
                    cellAndSpan3.cellY++;
                } else {
                    cellAndSpan3.cellX++;
                }
                arrayMap2 = arrayMap5;
            }
            viewCluster.resetEdges();
            cellLayout3 = cellLayout;
            z10 = z5;
            rect4 = rect3;
            itemConfiguration4 = itemConfiguration2;
            z11 = z6;
            itemConfiguration3 = itemConfiguration;
        }
        boolean z13 = z11;
        Rect rect5 = rect4;
        ItemConfiguration itemConfiguration6 = itemConfiguration4;
        boolean z14 = z10;
        if (viewCluster.boundingRectDirty) {
            rect2 = rect5;
            itemConfiguration6.getBoundingRectForViews(arrayList2, rect2);
        } else {
            rect2 = rect5;
        }
        if (z13 || rect2.left < 0 || rect2.right > cellLayout4.mCountX || rect2.top < 0 || rect2.bottom > cellLayout4.mCountY) {
            itemConfiguration.restore();
            z4 = z14;
        } else {
            z4 = true;
        }
        Iterator it5 = arrayList2.iterator();
        while (it5.hasNext()) {
            cellLayout4.mTmpOccupied.markCells((CellAndSpan) arrayMap.get((View) it5.next()), true);
        }
        return z4;
    }

    private void resetCellSizeInternal(DeviceProfile deviceProfile) {
        int i4 = this.mContainerType;
        if (i4 == 1) {
            int i5 = deviceProfile.hotseatBorderSpace;
            this.mBorderSpace = new Point(i5, i5);
        } else if (i4 != 2) {
            this.mBorderSpace = new Point(deviceProfile.cellLayoutBorderSpacePx);
        } else {
            this.mBorderSpace = new Point(deviceProfile.folderCellLayoutBorderSpacePx);
        }
        this.mCellHeight = -1;
        this.mCellWidth = -1;
        this.mFixedCellHeight = -1;
        this.mFixedCellWidth = -1;
    }

    private void setUseTempCoords(boolean z4) {
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            ((CellLayoutLayoutParams) this.mShortcutsAndWidgets.getChildAt(i4).getLayoutParams()).useTmpCoords = z4;
        }
    }

    public final boolean acceptsWidget() {
        return this.mContainerType == 0;
    }

    public final void addDelegatedCellDrawing(DelegatedCellDrawing delegatedCellDrawing) {
        this.mDelegatedCellDrawings.add(delegatedCellDrawing);
    }

    public final boolean addViewToCellLayout(View view, int i4, int i5, CellLayoutLayoutParams cellLayoutLayoutParams, boolean z4) {
        if (view instanceof BubbleTextView) {
            ((BubbleTextView) view).setTextVisibility(this.mContainerType != 1);
        }
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        if (cellLayoutLayoutParams.getCellX() >= 0 && cellLayoutLayoutParams.getCellX() <= this.mCountX - 1 && cellLayoutLayoutParams.getCellY() >= 0) {
            int cellY = cellLayoutLayoutParams.getCellY();
            int i6 = this.mCountY;
            if (cellY <= i6 - 1) {
                if (cellLayoutLayoutParams.cellHSpan < 0) {
                    cellLayoutLayoutParams.cellHSpan = this.mCountX;
                }
                if (cellLayoutLayoutParams.cellVSpan < 0) {
                    cellLayoutLayoutParams.cellVSpan = i6;
                }
                view.setId(i5);
                this.mShortcutsAndWidgets.addView(view, i4, cellLayoutLayoutParams);
                if (z4) {
                    markCellsAsOccupiedForView(view);
                }
                return true;
            }
        }
        return false;
    }

    public final boolean animateChildToPosition(final View view, int i4, int i5, int i6, int i7, boolean z4, boolean z5) {
        ShortcutAndWidgetContainer shortcutAndWidgetContainer = this.mShortcutsAndWidgets;
        if (shortcutAndWidgetContainer.indexOfChild(view) == -1 || !(view instanceof Reorderable)) {
            return false;
        }
        final CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) view.getLayoutParams();
        ItemInfo itemInfo = (ItemInfo) view.getTag();
        final Reorderable reorderable = (Reorderable) view;
        if (this.mReorderAnimators.containsKey(cellLayoutLayoutParams)) {
            ((Animator) this.mReorderAnimators.get(cellLayoutLayoutParams)).cancel();
            this.mReorderAnimators.remove(cellLayoutLayoutParams);
        }
        if (z5) {
            GridOccupancy gridOccupancy = z4 ? this.mOccupied : this.mTmpOccupied;
            gridOccupancy.markCells(false, cellLayoutLayoutParams.getCellX(), cellLayoutLayoutParams.getCellY(), cellLayoutLayoutParams.cellHSpan, cellLayoutLayoutParams.cellVSpan);
            gridOccupancy.markCells(true, i4, i5, cellLayoutLayoutParams.cellHSpan, cellLayoutLayoutParams.cellVSpan);
        }
        int i8 = cellLayoutLayoutParams.f4575x;
        int i9 = cellLayoutLayoutParams.f4576y;
        cellLayoutLayoutParams.isLockedToGrid = true;
        if (z4) {
            cellLayoutLayoutParams.setCellX(i4);
            cellLayoutLayoutParams.setCellY(i5);
        } else {
            cellLayoutLayoutParams.setTmpCellX(i4);
            cellLayoutLayoutParams.setTmpCellY(i5);
        }
        shortcutAndWidgetContainer.setupLp(view);
        int i10 = cellLayoutLayoutParams.f4575x;
        int i11 = cellLayoutLayoutParams.f4576y;
        cellLayoutLayoutParams.f4575x = i8;
        cellLayoutLayoutParams.f4576y = i9;
        cellLayoutLayoutParams.isLockedToGrid = false;
        MultiTranslateDelegate translateDelegate = reorderable.getTranslateDelegate();
        final float value = translateDelegate.getTranslationX(1).getValue();
        final float value2 = translateDelegate.getTranslationY(1).getValue();
        final float f4 = i10 - i8;
        final float f5 = i11 - i9;
        if (f4 == 0.0f && f5 == 0.0f && value == 0.0f && value2 == 0.0f) {
            cellLayoutLayoutParams.isLockedToGrid = true;
            return true;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(i6);
        this.mReorderAnimators.put(cellLayoutLayoutParams, ofFloat);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.CellLayout.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                float f6 = 1.0f - floatValue;
                float f7 = (f4 * floatValue) + (value * f6);
                float f8 = f6 * value2;
                reorderable.getTranslateDelegate().setTranslation(f7, (floatValue * f5) + f8, 1);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.CellLayout.4
            boolean cancelled = false;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                this.cancelled = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                if (!this.cancelled) {
                    cellLayoutLayoutParams.isLockedToGrid = true;
                    reorderable.getTranslateDelegate().setTranslation(0.0f, 0.0f, 1);
                    view.requestLayout();
                }
                if (CellLayout.this.mReorderAnimators.containsKey(cellLayoutLayoutParams)) {
                    CellLayout.this.mReorderAnimators.remove(cellLayoutLayoutParams);
                }
            }
        });
        ofFloat.setStartDelay(i7);
        ofFloat.start();
        return true;
    }

    @Override // android.view.View
    public final void cancelLongPress() {
        super.cancelLongPress();
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            getChildAt(i4).cancelLongPress();
        }
    }

    public final void cellToPoint(int i4, int i5, int[] iArr) {
        cellToRect(i4, i5, 1, 1, this.mTempRect);
        Rect rect = this.mTempRect;
        iArr[0] = rect.left;
        iArr[1] = rect.top;
    }

    public final void cellToRect(int i4, int i5, int i6, int i7, Rect rect) {
        int i8 = this.mCellWidth;
        int i9 = this.mCellHeight;
        int paddingLeft = getPaddingLeft() + ((int) Math.ceil(getUnusedHorizontalSpace() / 2.0f));
        int paddingTop = getPaddingTop();
        Point point = this.mBorderSpace;
        int i10 = point.x;
        int i11 = (i4 * i8) + (i4 * i10) + paddingLeft;
        int i12 = point.y;
        int i13 = (i5 * i9) + (i5 * i12) + paddingTop;
        rect.set(i11, i13, ((i6 - 1) * i10) + (i8 * i6) + i11, ((i7 - 1) * i12) + (i9 * i7) + i13);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof CellLayoutLayoutParams;
    }

    public final void clearDragOutlines() {
        this.mDragOutlineAnims[this.mDragOutlineCurrent].animateOut();
        int[] iArr = this.mDragCell;
        iArr[1] = -1;
        iArr[0] = -1;
    }

    public void copyCurrentStateToSolution(ItemConfiguration itemConfiguration) {
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i4);
            CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) childAt.getLayoutParams();
            itemConfiguration.add(childAt, new CellAndSpan(cellLayoutLayoutParams.getCellX(), cellLayoutLayoutParams.getCellY(), cellLayoutLayoutParams.cellHSpan, cellLayoutLayoutParams.cellVSpan));
        }
    }

    public boolean createAreaForResize(int i4, int i5, int i6, int i7, View view, int[] iArr, boolean z4) {
        int[] iArr2 = new int[2];
        regionToCenterPoint(i4, i5, i6, i7, iArr2);
        ItemConfiguration findReorderSolution = findReorderSolution(iArr2[0], iArr2[1], i6, i7, i6, i7, iArr, view, true, new ItemConfiguration());
        setUseTempCoords(true);
        if (findReorderSolution != null && findReorderSolution.isSolution) {
            copySolutionToTempState(findReorderSolution, view);
            this.mItemPlacementDirty = true;
            animateItemsToSolution(findReorderSolution, view, z4);
            if (z4) {
                commitTempPlacement(null);
                completeAndClearReorderPreviewAnimations();
                this.mItemPlacementDirty = false;
            } else {
                beginOrAdjustReorderPreviewAnimations(findReorderSolution, view, 1);
            }
            this.mShortcutsAndWidgets.requestLayout();
        }
        return findReorderSolution.isSolution;
    }

    public ReorderAlgorithm createReorderAlgorithm() {
        return new ReorderAlgorithm(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        for (int i4 = 0; i4 < this.mDelegatedCellDrawings.size(); i4++) {
            DelegatedCellDrawing delegatedCellDrawing = (DelegatedCellDrawing) this.mDelegatedCellDrawings.get(i4);
            cellToPoint(delegatedCellDrawing.mDelegateCellX, delegatedCellDrawing.mDelegateCellY, this.mTempLocation);
            canvas.save();
            int[] iArr = this.mTempLocation;
            canvas.translate(iArr[0], iArr[1]);
            delegatedCellDrawing.drawOverItem();
            canvas.restore();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        DragAndDropAccessibilityDelegate dragAndDropAccessibilityDelegate = this.mTouchHelper;
        if (dragAndDropAccessibilityDelegate == null || !dragAndDropAccessibilityDelegate.dispatchHoverEvent(motionEvent)) {
            return super.dispatchHoverEvent(motionEvent);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        Parcelable parcelable = (Parcelable) sparseArray.get(R.id.cell_layout_jail_id);
        super.dispatchRestoreInstanceState(parcelable instanceof ParcelableSparseArray ? (ParcelableSparseArray) parcelable : new ParcelableSparseArray());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray sparseArray) {
        Parcelable parcelable = (Parcelable) sparseArray.get(R.id.cell_layout_jail_id);
        ParcelableSparseArray parcelableSparseArray = parcelable instanceof ParcelableSparseArray ? (ParcelableSparseArray) parcelable : new ParcelableSparseArray();
        super.dispatchSaveInstanceState(parcelableSparseArray);
        sparseArray.put(R.id.cell_layout_jail_id, parcelableSparseArray);
    }

    public final void enableHardwareLayer(boolean z4) {
        this.mShortcutsAndWidgets.setLayerType(z4 ? 2 : 0, sPaint);
    }

    public final boolean findCellForSpan(int i4, int i5, int[] iArr) {
        if (iArr == null) {
            iArr = new int[2];
        }
        return this.mOccupied.findVacantCell(i4, i5, iArr);
    }

    public int[] findNearestArea(int i4, int i5, int i6, int i7, int i8, int i9, boolean z4, int[] iArr, int[] iArr2) {
        Stack stack;
        int[] iArr3;
        Rect rect;
        int i10;
        int i11;
        int[] iArr4;
        int i12;
        int i13;
        Stack stack2;
        boolean z5;
        Rect rect2;
        int[] iArr5;
        Rect rect3;
        CellLayout cellLayout = this;
        int i14 = i6;
        int i15 = i7;
        int i16 = cellLayout.mCellWidth;
        Point point = cellLayout.mBorderSpace;
        int i17 = (int) (i4 - (((i8 - 1) * (i16 + point.x)) / 2.0f));
        int i18 = (int) (i5 - (((i9 - 1) * (cellLayout.mCellHeight + point.y)) / 2.0f));
        int[] iArr6 = iArr != null ? iArr : new int[2];
        Rect rect4 = new Rect(-1, -1, -1, -1);
        Stack stack3 = new Stack();
        int i19 = cellLayout.mCountX;
        int i20 = cellLayout.mCountY;
        if (i14 <= 0 || i15 <= 0 || i8 <= 0 || i9 <= 0 || i8 < i14 || i9 < i15) {
            return iArr6;
        }
        double d4 = Double.MAX_VALUE;
        int i21 = 0;
        while (i21 < i20 - (i15 - 1)) {
            double d5 = d4;
            int i22 = 0;
            while (i22 < i19 - (i14 - 1)) {
                if (z4) {
                    stack = stack3;
                    iArr3 = iArr6;
                    rect = rect4;
                    i10 = -1;
                    i11 = -1;
                } else {
                    for (int i23 = 0; i23 < i14; i23++) {
                        int i24 = 0;
                        while (i24 < i15) {
                            Stack stack4 = stack3;
                            if (cellLayout.mOccupied.cells[i22 + i23][i21 + i24]) {
                                i12 = i20;
                                i13 = i19;
                                iArr3 = iArr6;
                                rect2 = rect4;
                                stack2 = stack4;
                                break;
                            }
                            i24++;
                            stack3 = stack4;
                        }
                    }
                    stack = stack3;
                    boolean z6 = i14 >= i8;
                    boolean z7 = i15 >= i9;
                    int i25 = i15;
                    boolean z8 = true;
                    while (true) {
                        if (z6 && z7) {
                            break;
                        }
                        if (!z8 || z6) {
                            iArr5 = iArr6;
                            rect3 = rect4;
                            if (!z7) {
                                for (int i26 = 0; i26 < i14; i26++) {
                                    int i27 = i21 + i25;
                                    if (i27 > i20 - 1 || cellLayout.mOccupied.cells[i22 + i26][i27]) {
                                        z7 = true;
                                    }
                                }
                                if (!z7) {
                                    i25++;
                                }
                            }
                        } else {
                            int i28 = 0;
                            while (i28 < i25) {
                                int[] iArr7 = iArr6;
                                int i29 = i22 + i14;
                                Rect rect5 = rect4;
                                if (i29 > i19 - 1 || cellLayout.mOccupied.cells[i29][i21 + i28]) {
                                    z6 = true;
                                }
                                i28++;
                                iArr6 = iArr7;
                                rect4 = rect5;
                            }
                            iArr5 = iArr6;
                            rect3 = rect4;
                            if (!z6) {
                                i14++;
                            }
                        }
                        z6 |= i14 >= i8;
                        z7 |= i25 >= i9;
                        z8 = !z8;
                        iArr6 = iArr5;
                        rect4 = rect3;
                    }
                    i11 = i14;
                    iArr3 = iArr6;
                    rect = rect4;
                    i10 = i25;
                }
                i12 = i20;
                i13 = i19;
                stack2 = stack;
                regionToCenterPoint(i22, i21, 1, 1, cellLayout.mTmpPoint);
                i21 = i21;
                Rect rect6 = new Rect(i22, i21, i22 + i11, i21 + i10);
                Iterator it = stack2.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((Rect) it.next()).contains(rect6)) {
                            z5 = true;
                            break;
                        }
                    } else {
                        z5 = false;
                        break;
                    }
                }
                stack2.push(rect6);
                double hypot = Math.hypot(iArr4[0] - i17, iArr4[1] - i18);
                if (hypot > d5 || z5) {
                    rect2 = rect;
                    if (!rect6.contains(rect2)) {
                        i22++;
                        cellLayout = this;
                        i14 = i6;
                        i15 = i7;
                        iArr6 = iArr3;
                        i20 = i12;
                        i19 = i13;
                        Stack stack5 = stack2;
                        rect4 = rect2;
                        stack3 = stack5;
                    }
                } else {
                    rect2 = rect;
                }
                iArr3[0] = i22;
                iArr3[1] = i21;
                if (iArr2 != null) {
                    iArr2[0] = i11;
                    iArr2[1] = i10;
                }
                rect2.set(rect6);
                d5 = hypot;
                i22++;
                cellLayout = this;
                i14 = i6;
                i15 = i7;
                iArr6 = iArr3;
                i20 = i12;
                i19 = i13;
                Stack stack52 = stack2;
                rect4 = rect2;
                stack3 = stack52;
            }
            i21++;
            cellLayout = this;
            i14 = i6;
            i15 = i7;
            d4 = d5;
            rect4 = rect4;
            stack3 = stack3;
        }
        int[] iArr8 = iArr6;
        if (d4 == Double.MAX_VALUE) {
            iArr8[0] = -1;
            iArr8[1] = -1;
        }
        return iArr8;
    }

    public final int[] findNearestAreaIgnoreOccupied(int i4, int i5, int i6, int i7, int[] iArr) {
        return findNearestArea(i4, i5, i6, i7, i6, i7, true, iArr, null);
    }

    public final ItemConfiguration findReorderSolution(int i4, int i5, int i6, int i7, int i8, int i9, int[] iArr, View view, boolean z4, ItemConfiguration itemConfiguration) {
        return createReorderAlgorithm().findReorderSolution(i4, i5, i6, i7, i8, i9, iArr, view, z4, itemConfiguration);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new CellLayoutLayoutParams(getContext(), attributeSet);
    }

    public final int getCellHeight() {
        return this.mCellHeight;
    }

    public final int getCellWidth() {
        return this.mCellWidth;
    }

    public final View getChildAt(int i4, int i5) {
        return this.mShortcutsAndWidgets.getChildAt(i4, i5);
    }

    public final int getCountX() {
        return this.mCountX;
    }

    public final int getCountY() {
        return this.mCountY;
    }

    public final int getDesiredHeight() {
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int i4 = this.mCountY;
        return ((i4 - 1) * this.mBorderSpace.y) + (this.mCellHeight * i4) + paddingBottom;
    }

    public final int getDesiredWidth() {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int i4 = this.mCountX;
        return ((i4 - 1) * this.mBorderSpace.x) + (this.mCellWidth * i4) + paddingRight;
    }

    public void getDirectionVectorForDrop(int i4, int i5, int i6, int i7, View view, int[] iArr) {
        int[] iArr2 = new int[2];
        findNearestAreaIgnoreOccupied(i4, i5, i6, i7, iArr2);
        Rect rect = new Rect();
        cellToRect(iArr2[0], iArr2[1], i6, i7, rect);
        rect.offset(i4 - rect.centerX(), i5 - rect.centerY());
        Rect rect2 = new Rect();
        getViewsIntersectingRegion(iArr2[0], iArr2[1], i6, i7, view, rect2, this.mIntersectingViews);
        int width = rect2.width();
        int height = rect2.height();
        cellToRect(rect2.left, rect2.top, rect2.width(), rect2.height(), rect2);
        int centerX = (rect2.centerX() - i4) / i6;
        int centerY = (rect2.centerY() - i5) / i7;
        int i8 = this.mCountX;
        if (width == i8 || i6 == i8) {
            centerX = 0;
        }
        int i9 = this.mCountY;
        if (height == i9 || i7 == i9) {
            centerY = 0;
        }
        if (centerX != 0 || centerY != 0) {
            computeDirectionVector(centerX, centerY, iArr);
            return;
        }
        iArr[0] = 1;
        iArr[1] = 0;
    }

    public final float getDistanceFromWorkspaceCellVisualCenter(float f4, float f5, int[] iArr) {
        getWorkspaceCellVisualCenter(iArr[0], iArr[1], this.mTmpPoint);
        int[] iArr2 = this.mTmpPoint;
        return (float) Math.hypot(f4 - iArr2[0], f5 - iArr2[1]);
    }

    public final DragAndDropAccessibilityDelegate getDragAndDropAccessibilityDelegate() {
        return this.mTouchHelper;
    }

    public final float getFolderCreationRadius(int[] iArr) {
        return (getReorderRadius(1, 1, iArr) + ((this.mActivity.getDeviceProfile().iconSizePx * 0.92f) / 2.0f)) / 2.0f;
    }

    public final String getItemMoveDescription(int i4, int i5) {
        if (this.mContainerType == 1) {
            return getContext().getString(R.string.move_to_hotseat_position, Integer.valueOf(Math.max(i4, i5) + 1));
        }
        ActivityContext activityContext = this.mActivity;
        ActivityTracker activityTracker = Launcher.ACTIVITY_TRACKER;
        Workspace workspace = ((Launcher) activityContext).mWorkspace;
        int i6 = i5 + 1;
        int i7 = workspace.mIsRtl ? this.mCountX - i4 : i4 + 1;
        int panelCount = workspace.getPanelCount();
        int pageIndexForScreenId = workspace.getPageIndexForScreenId(workspace.getIdForScreen(this));
        if (panelCount > 1) {
            i7 += (pageIndexForScreenId % panelCount) * this.mCountX;
        }
        return getContext().getString(R.string.move_to_empty_cell_description, Integer.valueOf(i6), Integer.valueOf(i7), workspace.getPageDescription(pageIndexForScreenId));
    }

    public final GridOccupancy getOccupied() {
        return this.mOccupied;
    }

    public final float getReorderRadius(int i4, int i5, int[] iArr) {
        int[] iArr2 = this.mTmpPoint;
        getWorkspaceCellVisualCenter(iArr[0], iArr[1], iArr2);
        Rect rect = this.mTempRect;
        cellToRect(iArr[0], iArr[1], i4, i5, rect);
        Point point = this.mBorderSpace;
        rect.inset((-point.x) / 2, (-point.y) / 2);
        View childAt = getChildAt(iArr[0], iArr[1]);
        return (((childAt instanceof DraggableView) && ((DraggableView) childAt).getViewType() == 0) && i4 == 1 && i5 == 1) ? Math.min(Math.min(Math.min(iArr2[0] - rect.left, iArr2[1] - rect.top), rect.right - iArr2[0]), rect.bottom - iArr2[1]) : (float) Math.hypot((rect.width() * i4) / 2.0f, (rect.height() * i5) / 2.0f);
    }

    public final ShortcutAndWidgetContainer getShortcutsAndWidgets() {
        return this.mShortcutsAndWidgets;
    }

    public int getUnusedHorizontalSpace() {
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        int i4 = this.mCountX;
        return (measuredWidth - (this.mCellWidth * i4)) - ((i4 - 1) * this.mBorderSpace.x);
    }

    public final void getViewsIntersectingRegion(int i4, int i5, int i6, int i7, View view, Rect rect, ArrayList arrayList) {
        if (rect != null) {
            rect.set(i4, i5, i4 + i6, i5 + i7);
        }
        arrayList.clear();
        Rect rect2 = new Rect(i4, i5, i6 + i4, i7 + i5);
        Rect rect3 = new Rect();
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i8);
            if (childAt != view) {
                CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) childAt.getLayoutParams();
                rect3.set(cellLayoutLayoutParams.getCellX(), cellLayoutLayoutParams.getCellY(), cellLayoutLayoutParams.getCellX() + cellLayoutLayoutParams.cellHSpan, cellLayoutLayoutParams.getCellY() + cellLayoutLayoutParams.cellVSpan);
                if (Rect.intersects(rect2, rect3)) {
                    this.mIntersectingViews.add(childAt);
                    if (rect != null) {
                        rect.union(rect3);
                    }
                }
            }
        }
    }

    public final boolean isDropPending() {
        return this.mDropPending;
    }

    public final boolean isHardwareLayerEnabled() {
        return this.mShortcutsAndWidgets.getLayerType() == 2;
    }

    public boolean isNearestDropLocationOccupied(int i4, int i5, int i6, int i7, View view, int[] iArr) {
        int[] findNearestAreaIgnoreOccupied = findNearestAreaIgnoreOccupied(i4, i5, i6, i7, iArr);
        getViewsIntersectingRegion(findNearestAreaIgnoreOccupied[0], findNearestAreaIgnoreOccupied[1], i6, i7, view, null, this.mIntersectingViews);
        return !this.mIntersectingViews.isEmpty();
    }

    public final boolean isOccupied(int i4, int i5) {
        if (i4 < 0 || i4 >= this.mCountX || i5 < 0 || i5 >= this.mCountY) {
            return true;
        }
        return this.mOccupied.cells[i4][i5];
    }

    public final boolean isRegionVacant(int i4, int i5, int i6, int i7) {
        return this.mOccupied.isRegionVacant(i4, i5, i6, i7);
    }

    public final boolean makeSpaceForHotseatMigration(boolean z4) {
        int[] iArr = new int[2];
        cellToPoint(0, this.mCountY, iArr);
        ItemConfiguration itemConfiguration = new ItemConfiguration();
        int i4 = iArr[0];
        int i5 = iArr[1];
        int i6 = this.mCountX;
        if (findReorderSolution(i4, i5, i6, 1, i6, 1, new int[]{0, -1}, null, false, itemConfiguration).isSolution) {
            if (z4) {
                copySolutionToTempState(itemConfiguration, null);
                commitTempPlacement(null);
                this.mOccupied.markCells(false, 0, this.mCountY - 1, this.mCountX, 1);
            }
            return true;
        }
        return false;
    }

    public final void markCellsAsOccupiedForView(View view) {
        if ((view instanceof LauncherAppWidgetHostView) && (view.getTag() instanceof LauncherAppWidgetInfo)) {
            LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) view.getTag();
            CellPosMapper.CellPos mapModelToPresenter = this.mActivity.getCellPosMapper().mapModelToPresenter(launcherAppWidgetInfo);
            this.mOccupied.markCells(true, mapModelToPresenter.cellX, mapModelToPresenter.cellY, launcherAppWidgetInfo.spanX, launcherAppWidgetInfo.spanY);
        } else if (view == null || view.getParent() != this.mShortcutsAndWidgets) {
        } else {
            CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) view.getLayoutParams();
            this.mOccupied.markCells(true, cellLayoutLayoutParams.getCellX(), cellLayoutLayoutParams.getCellY(), cellLayoutLayoutParams.cellHSpan, cellLayoutLayoutParams.cellVSpan);
        }
    }

    public final void markCellsAsUnoccupiedForView(View view) {
        if ((view instanceof LauncherAppWidgetHostView) && (view.getTag() instanceof LauncherAppWidgetInfo)) {
            LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) view.getTag();
            CellPosMapper.CellPos mapModelToPresenter = this.mActivity.getCellPosMapper().mapModelToPresenter(launcherAppWidgetInfo);
            this.mOccupied.markCells(false, mapModelToPresenter.cellX, mapModelToPresenter.cellY, launcherAppWidgetInfo.spanX, launcherAppWidgetInfo.spanY);
        } else if (view == null || view.getParent() != this.mShortcutsAndWidgets) {
        } else {
            CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) view.getLayoutParams();
            this.mOccupied.markCells(false, cellLayoutLayoutParams.getCellX(), cellLayoutLayoutParams.getCellY(), cellLayoutLayoutParams.cellHSpan, cellLayoutLayoutParams.cellVSpan);
        }
    }

    public final void onDragEnter() {
        this.mDragging = true;
        this.mPreviousSolution = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void onDragExit() {
        if (this.mDragging) {
            this.mDragging = false;
        }
        this.mPreviousSolution = null;
        int[] iArr = this.mDragCell;
        iArr[1] = -1;
        iArr[0] = -1;
        int[] iArr2 = this.mDragCellSpan;
        iArr2[1] = -1;
        iArr2[0] = -1;
        this.mDragOutlineAnims[this.mDragOutlineCurrent].animateOut();
        this.mDragOutlineCurrent = (this.mDragOutlineCurrent + 1) % this.mDragOutlineAnims.length;
        revertTempState();
        setIsDragOverlapping(false);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int min;
        int i4;
        if (this.mBackground.getAlpha() > 0) {
            this.mBackground.draw(canvas);
        }
        for (int i5 = 0; i5 < this.mDelegatedCellDrawings.size(); i5++) {
            DelegatedCellDrawing delegatedCellDrawing = (DelegatedCellDrawing) this.mDelegatedCellDrawings.get(i5);
            cellToPoint(delegatedCellDrawing.mDelegateCellX, delegatedCellDrawing.mDelegateCellY, this.mTempLocation);
            canvas.save();
            int[] iArr = this.mTempLocation;
            canvas.translate(iArr[0], iArr[1]);
            delegatedCellDrawing.drawUnderItem(canvas);
            canvas.restore();
        }
        PreviewBackground previewBackground = this.mFolderLeaveBehind;
        int i6 = previewBackground.mDelegateCellX;
        if (i6 >= 0 && (i4 = previewBackground.mDelegateCellY) >= 0) {
            cellToPoint(i6, i4, this.mTempLocation);
            canvas.save();
            int[] iArr2 = this.mTempLocation;
            canvas.translate(iArr2[0], iArr2[1]);
            this.mFolderLeaveBehind.drawLeaveBehind(FOLDER_LEAVE_BEHIND_COLOR, canvas);
            canvas.restore();
        }
        if (this.mVisualizeDropLocation) {
            DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
            int min2 = Math.min((this.mCellWidth - deviceProfile.iconSizePx) / 2, deviceProfile.gridVisualizationPaddingX);
            float f4 = min2;
            float min3 = Math.min((this.mCellHeight - deviceProfile.iconSizePx) / 2, deviceProfile.gridVisualizationPaddingY);
            this.mVisualizeGridRect.set(f4, min3, this.mCellWidth - min2, this.mCellHeight - min);
            this.mVisualizeGridPaint.setStrokeWidth(8.0f);
            this.mVisualizeGridPaint.setColor(E.a.k(this.mGridColor, (int) (this.mGridAlpha * 120.0f)));
            if (this.mVisualizeDropLocation) {
                for (int i7 = 0; i7 < this.mDragOutlines.length; i7++) {
                    float f5 = this.mDragOutlineAlphas[i7];
                    if (f5 > 0.0f) {
                        this.mVisualizeGridPaint.setAlpha(255);
                        int cellX = this.mDragOutlines[i7].getCellX();
                        int cellY = this.mDragOutlines[i7].getCellY();
                        CellLayoutLayoutParams cellLayoutLayoutParams = this.mDragOutlines[i7];
                        int i8 = cellLayoutLayoutParams.cellHSpan;
                        int i9 = cellLayoutLayoutParams.cellVSpan;
                        RectF rectF = this.mVisualizeGridRect;
                        int i10 = this.mCellWidth * i8;
                        Point point = this.mBorderSpace;
                        rectF.set(f4, min3, (((i8 - 1) * point.x) + i10) - min2, (((i9 - 1) * point.y) + (this.mCellHeight * i9)) - min);
                        this.mVisualizeGridRect.offsetTo(getPaddingLeft() + (cellX * this.mBorderSpace.x) + (this.mCellWidth * cellX) + min2, getPaddingTop() + (cellY * this.mBorderSpace.y) + (this.mCellHeight * cellY) + min);
                        this.mVisualizeGridPaint.setStyle(Paint.Style.STROKE);
                        this.mVisualizeGridPaint.setColor(Color.argb((int) f5, Color.red(this.mGridColor), Color.green(this.mGridColor), Color.blue(this.mGridColor)));
                        RectF rectF2 = this.mVisualizeGridRect;
                        float f6 = this.mGridVisualizationRoundingRadius;
                        canvas.drawRoundRect(rectF2, f6, f6, this.mVisualizeGridPaint);
                    }
                }
            }
        }
    }

    public final void onDropChild(View view) {
        if (view != null) {
            ((CellLayoutLayoutParams) view.getLayoutParams()).dropped = true;
            view.requestLayout();
            markCellsAsOccupiedForView(view);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        View.OnTouchListener onTouchListener;
        return this.mTouchHelper != null || ((onTouchListener = this.mInterceptTouchListener) != null && onTouchListener.onTouch(this, motionEvent));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        int paddingLeft = getPaddingLeft() + ((int) Math.ceil(getUnusedHorizontalSpace() / 2.0f));
        int paddingRight = ((i6 - i4) - getPaddingRight()) - ((int) Math.ceil(getUnusedHorizontalSpace() / 2.0f));
        int paddingTop = getPaddingTop();
        int paddingBottom = (i7 - i5) - getPaddingBottom();
        this.mBackground.getPadding(this.mTempRect);
        this.mBackground.setBounds((paddingLeft - this.mTempRect.left) - getPaddingLeft(), (paddingTop - this.mTempRect.top) - getPaddingTop(), getPaddingRight() + this.mTempRect.right + paddingRight, getPaddingBottom() + this.mTempRect.bottom + paddingBottom);
        this.mShortcutsAndWidgets.layout(paddingLeft, paddingTop, paddingRight, paddingBottom);
    }

    @Override // android.view.View
    public void onMeasure(int i4, int i5) {
        int i6;
        int mode = View.MeasureSpec.getMode(i4);
        int mode2 = View.MeasureSpec.getMode(i5);
        int size = View.MeasureSpec.getSize(i4);
        int size2 = View.MeasureSpec.getSize(i5);
        int paddingRight = size - (getPaddingRight() + getPaddingLeft());
        int paddingBottom = size2 - (getPaddingBottom() + getPaddingTop());
        if (this.mFixedCellWidth < 0 || this.mFixedCellHeight < 0) {
            Point point = this.mBorderSpace;
            int i7 = point.x;
            int i8 = this.mCountX;
            PointF pointF = DeviceProfile.DEFAULT_SCALE;
            int i9 = (paddingRight - ((i8 - 1) * i7)) / i8;
            int i10 = point.y;
            int i11 = this.mCountY;
            int i12 = (paddingBottom - ((i11 - 1) * i10)) / i11;
            if (i9 != this.mCellWidth || i12 != this.mCellHeight) {
                this.mCellWidth = i9;
                this.mCellHeight = i12;
                this.mShortcutsAndWidgets.setCellDimensions(i9, i12, i8, i11, point);
            }
        }
        int i13 = this.mFixedWidth;
        if (i13 > 0 && (i6 = this.mFixedHeight) > 0) {
            paddingRight = i13;
            paddingBottom = i6;
        } else if (mode == 0 || mode2 == 0) {
            throw new RuntimeException("CellLayout cannot have UNSPECIFIED dimensions");
        }
        this.mShortcutsAndWidgets.measure(View.MeasureSpec.makeMeasureSpec(paddingRight, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(paddingBottom, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
        int measuredWidth = this.mShortcutsAndWidgets.getMeasuredWidth();
        int measuredHeight = this.mShortcutsAndWidgets.getMeasuredHeight();
        if (this.mFixedWidth <= 0 || this.mFixedHeight <= 0) {
            setMeasuredDimension(size, size2);
        } else {
            setMeasuredDimension(measuredWidth, measuredHeight);
        }
    }

    public int[] performReorder(int i4, int i5, int i6, int i7, int i8, int i9, View view, int[] iArr, int[] iArr2, int i10) {
        ItemConfiguration calculateReorder;
        int[] iArr3 = iArr2 == null ? new int[]{-1, -1} : iArr2;
        int[] iArr4 = iArr == null ? new int[]{-1, -1} : iArr;
        if (i10 == 0 || (calculateReorder = this.mPreviousSolution) == null) {
            calculateReorder = createReorderAlgorithm().calculateReorder(i4, i5, i6, i7, i8, i9, view);
            this.mPreviousSolution = calculateReorder;
        } else if (i10 == 2 || i10 == 3) {
            this.mPreviousSolution = null;
        }
        if (calculateReorder == null || !calculateReorder.isSolution) {
            iArr3[1] = -1;
            iArr3[0] = -1;
            iArr4[1] = -1;
            iArr4[0] = -1;
        } else {
            iArr4[0] = calculateReorder.cellX;
            iArr4[1] = calculateReorder.cellY;
            iArr3[0] = calculateReorder.spanX;
            iArr3[1] = calculateReorder.spanY;
            if (i10 == 0) {
                beginOrAdjustReorderPreviewAnimations(calculateReorder, view, 0);
            } else {
                if (i10 == 1 || i10 == 2 || i10 == 3) {
                    setUseTempCoords(true);
                    copySolutionToTempState(calculateReorder, view);
                    this.mItemPlacementDirty = true;
                    animateItemsToSolution(calculateReorder, view, i10 == 2);
                    if (i10 == 2 || i10 == 3) {
                        commitTempPlacement(view);
                        completeAndClearReorderPreviewAnimations();
                        this.mItemPlacementDirty = false;
                    } else {
                        beginOrAdjustReorderPreviewAnimations(calculateReorder, view, 1);
                    }
                }
                if (i10 == 2) {
                    setUseTempCoords(false);
                }
                this.mShortcutsAndWidgets.requestLayout();
            }
        }
        return iArr4;
    }

    public final void pointToCellExact(int i4, int i5, int[] iArr) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int i6 = i4 - paddingLeft;
        int i7 = this.mCellWidth;
        Point point = this.mBorderSpace;
        int i8 = i6 / (i7 + point.x);
        iArr[0] = i8;
        int i9 = (i5 - paddingTop) / (this.mCellHeight + point.y);
        iArr[1] = i9;
        int i10 = this.mCountX;
        int i11 = this.mCountY;
        if (i8 < 0) {
            iArr[0] = 0;
        }
        if (iArr[0] >= i10) {
            iArr[0] = i10 - 1;
        }
        if (i9 < 0) {
            iArr[1] = 0;
        }
        if (iArr[1] >= i11) {
            iArr[1] = i11 - 1;
        }
    }

    public final boolean rearrangementExists(int i4, int i5, int i6, int i7, int[] iArr, View view, ItemConfiguration itemConfiguration) {
        boolean z4;
        boolean z5;
        int i8;
        boolean z6;
        int i9;
        CellAndSpan cellAndSpan;
        if (i4 < 0 || i5 < 0) {
            return false;
        }
        this.mIntersectingViews.clear();
        int i10 = i4 + i6;
        int i11 = i5 + i7;
        this.mOccupiedRect.set(i4, i5, i10, i11);
        if (view != null && (cellAndSpan = (CellAndSpan) itemConfiguration.map.get(view)) != null) {
            cellAndSpan.cellX = i4;
            cellAndSpan.cellY = i5;
        }
        Rect rect = new Rect(i4, i5, i10, i11);
        Rect rect2 = new Rect();
        Iterator it = itemConfiguration.map.keySet().stream().sorted(Comparator.comparing(new Function() { // from class: com.android.launcher3.m
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (r1) {
                    case 0:
                        FloatProperty floatProperty = CellLayout.SPRING_LOADED_PROGRESS;
                        return Integer.valueOf(((CellLayoutLayoutParams) ((View) obj).getLayoutParams()).getCellX());
                    default:
                        FloatProperty floatProperty2 = CellLayout.SPRING_LOADED_PROGRESS;
                        return Integer.valueOf(((CellLayoutLayoutParams) ((View) obj).getLayoutParams()).getCellY());
                }
            }
        }).thenComparing(new Function() { // from class: com.android.launcher3.m
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (r1) {
                    case 0:
                        FloatProperty floatProperty = CellLayout.SPRING_LOADED_PROGRESS;
                        return Integer.valueOf(((CellLayoutLayoutParams) ((View) obj).getLayoutParams()).getCellX());
                    default:
                        FloatProperty floatProperty2 = CellLayout.SPRING_LOADED_PROGRESS;
                        return Integer.valueOf(((CellLayoutLayoutParams) ((View) obj).getLayoutParams()).getCellY());
                }
            }
        })).toList().iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            ArrayMap arrayMap = itemConfiguration.map;
            if (!hasNext) {
                itemConfiguration.intersectingViews = new ArrayList(this.mIntersectingViews);
                ArrayList arrayList = this.mIntersectingViews;
                Rect rect3 = this.mOccupiedRect;
                if (Math.abs(iArr[1]) + Math.abs(iArr[0]) > 1) {
                    int i12 = iArr[1];
                    iArr[1] = 0;
                    if (!pushViewsToTempLocation(arrayList, rect3, iArr, view, itemConfiguration)) {
                        iArr[1] = i12;
                        int i13 = iArr[0];
                        iArr[0] = 0;
                        if (!pushViewsToTempLocation(arrayList, rect3, iArr, view, itemConfiguration)) {
                            iArr[0] = i13;
                            iArr[0] = i13 * (-1);
                            int i14 = iArr[1] * (-1);
                            iArr[1] = i14;
                            iArr[1] = 0;
                            if (!pushViewsToTempLocation(arrayList, rect3, iArr, view, itemConfiguration)) {
                                iArr[1] = i14;
                                int i15 = iArr[0];
                                iArr[0] = 0;
                                if (!pushViewsToTempLocation(arrayList, rect3, iArr, view, itemConfiguration)) {
                                    iArr[0] = i15;
                                    iArr[0] = i15 * (-1);
                                    iArr[1] = iArr[1] * (-1);
                                    z4 = false;
                                }
                            }
                        }
                    }
                    z4 = true;
                } else {
                    if (!pushViewsToTempLocation(arrayList, rect3, iArr, view, itemConfiguration)) {
                        iArr[0] = iArr[0] * (-1);
                        iArr[1] = iArr[1] * (-1);
                        if (!pushViewsToTempLocation(arrayList, rect3, iArr, view, itemConfiguration)) {
                            int i16 = iArr[0] * (-1);
                            iArr[0] = i16;
                            int i17 = iArr[1] * (-1);
                            iArr[1] = i17;
                            iArr[1] = i16;
                            iArr[0] = i17;
                            if (!pushViewsToTempLocation(arrayList, rect3, iArr, view, itemConfiguration)) {
                                iArr[0] = iArr[0] * (-1);
                                iArr[1] = iArr[1] * (-1);
                                if (!pushViewsToTempLocation(arrayList, rect3, iArr, view, itemConfiguration)) {
                                    int i18 = iArr[0] * (-1);
                                    iArr[0] = i18;
                                    int i19 = iArr[1] * (-1);
                                    iArr[1] = i19;
                                    iArr[1] = i18;
                                    iArr[0] = i19;
                                    z4 = false;
                                }
                            }
                        }
                    }
                    z4 = true;
                }
                if (z4) {
                    return true;
                }
                ArrayList arrayList2 = this.mIntersectingViews;
                Rect rect4 = this.mOccupiedRect;
                if (arrayList2.size() == 0) {
                    z5 = true;
                } else {
                    Rect rect5 = new Rect();
                    itemConfiguration.getBoundingRectForViews(arrayList2, rect5);
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        this.mTmpOccupied.markCells((CellAndSpan) arrayMap.get((View) it2.next()), false);
                    }
                    GridOccupancy gridOccupancy = new GridOccupancy(rect5.width(), rect5.height());
                    int i20 = rect5.top;
                    int i21 = rect5.left;
                    Iterator it3 = arrayList2.iterator();
                    while (it3.hasNext()) {
                        CellAndSpan cellAndSpan2 = (CellAndSpan) arrayMap.get((View) it3.next());
                        gridOccupancy.markCells(true, cellAndSpan2.cellX - i21, cellAndSpan2.cellY - i20, cellAndSpan2.spanX, cellAndSpan2.spanY);
                    }
                    GridOccupancy gridOccupancy2 = this.mTmpOccupied;
                    gridOccupancy2.getClass();
                    gridOccupancy2.markCells(true, rect4.left, rect4.top, rect4.width(), rect4.height());
                    findNearestArea(rect5.left, rect5.top, rect5.width(), rect5.height(), iArr, this.mTmpOccupied.cells, gridOccupancy.cells, this.mTempLocation);
                    int[] iArr2 = this.mTempLocation;
                    int i22 = iArr2[0];
                    if (i22 < 0 || (i8 = iArr2[1]) < 0) {
                        z5 = false;
                    } else {
                        int i23 = i22 - rect5.left;
                        int i24 = i8 - rect5.top;
                        Iterator it4 = arrayList2.iterator();
                        while (it4.hasNext()) {
                            CellAndSpan cellAndSpan3 = (CellAndSpan) arrayMap.get((View) it4.next());
                            cellAndSpan3.cellX += i23;
                            cellAndSpan3.cellY += i24;
                        }
                        z5 = true;
                    }
                    Iterator it5 = arrayList2.iterator();
                    while (it5.hasNext()) {
                        this.mTmpOccupied.markCells((CellAndSpan) arrayMap.get((View) it5.next()), true);
                    }
                }
                if (z5) {
                    return true;
                }
                Iterator it6 = this.mIntersectingViews.iterator();
                while (it6.hasNext()) {
                    Rect rect6 = this.mOccupiedRect;
                    CellAndSpan cellAndSpan4 = (CellAndSpan) arrayMap.get((View) it6.next());
                    this.mTmpOccupied.markCells(cellAndSpan4, false);
                    GridOccupancy gridOccupancy3 = this.mTmpOccupied;
                    gridOccupancy3.getClass();
                    gridOccupancy3.markCells(true, rect6.left, rect6.top, rect6.width(), rect6.height());
                    findNearestArea(cellAndSpan4.cellX, cellAndSpan4.cellY, cellAndSpan4.spanX, cellAndSpan4.spanY, iArr, this.mTmpOccupied.cells, null, this.mTempLocation);
                    int[] iArr3 = this.mTempLocation;
                    int i25 = iArr3[0];
                    if (i25 < 0 || (i9 = iArr3[1]) < 0) {
                        z6 = false;
                    } else {
                        cellAndSpan4.cellX = i25;
                        cellAndSpan4.cellY = i9;
                        z6 = true;
                    }
                    this.mTmpOccupied.markCells(cellAndSpan4, true);
                    if (!z6) {
                        return false;
                    }
                }
                return true;
            }
            View view2 = (View) it.next();
            if (view2 != view) {
                CellAndSpan cellAndSpan5 = (CellAndSpan) arrayMap.get(view2);
                CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) view2.getLayoutParams();
                int i26 = cellAndSpan5.cellX;
                int i27 = cellAndSpan5.cellY;
                rect2.set(i26, i27, cellAndSpan5.spanX + i26, cellAndSpan5.spanY + i27);
                if (!Rect.intersects(rect, rect2)) {
                    continue;
                } else if (!cellLayoutLayoutParams.canReorder) {
                    return false;
                } else {
                    this.mIntersectingViews.add(view2);
                }
            }
        }
    }

    public final void regionToCenterPoint(int i4, int i5, int i6, int i7, int[] iArr) {
        cellToRect(i4, i5, i6, i7, this.mTempRect);
        iArr[0] = this.mTempRect.centerX();
        iArr[1] = this.mTempRect.centerY();
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        this.mOccupied.clear();
        this.mShortcutsAndWidgets.removeAllViews();
    }

    @Override // android.view.ViewGroup
    public final void removeAllViewsInLayout() {
        if (this.mShortcutsAndWidgets.getChildCount() > 0) {
            this.mOccupied.clear();
            this.mShortcutsAndWidgets.removeAllViewsInLayout();
        }
    }

    public final void removeDelegatedCellDrawing(DelegatedCellDrawing delegatedCellDrawing) {
        this.mDelegatedCellDrawings.remove(delegatedCellDrawing);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        markCellsAsUnoccupiedForView(view);
        this.mShortcutsAndWidgets.removeView(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i4) {
        markCellsAsUnoccupiedForView(this.mShortcutsAndWidgets.getChildAt(i4));
        this.mShortcutsAndWidgets.removeViewAt(i4);
    }

    @Override // android.view.ViewGroup
    public final void removeViewInLayout(View view) {
        markCellsAsUnoccupiedForView(view);
        this.mShortcutsAndWidgets.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViews(int i4, int i5) {
        for (int i6 = i4; i6 < i4 + i5; i6++) {
            markCellsAsUnoccupiedForView(this.mShortcutsAndWidgets.getChildAt(i6));
        }
        this.mShortcutsAndWidgets.removeViews(i4, i5);
    }

    @Override // android.view.ViewGroup
    public final void removeViewsInLayout(int i4, int i5) {
        for (int i6 = i4; i6 < i4 + i5; i6++) {
            markCellsAsUnoccupiedForView(this.mShortcutsAndWidgets.getChildAt(i6));
        }
        this.mShortcutsAndWidgets.removeViewsInLayout(i4, i5);
    }

    public final void resetCellSize(DeviceProfile deviceProfile) {
        resetCellSizeInternal(deviceProfile);
        requestLayout();
    }

    public final void revertTempState() {
        completeAndClearReorderPreviewAnimations();
        if (this.mItemPlacementDirty) {
            int childCount = this.mShortcutsAndWidgets.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = this.mShortcutsAndWidgets.getChildAt(i4);
                CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) childAt.getLayoutParams();
                if (cellLayoutLayoutParams.getTmpCellX() != cellLayoutLayoutParams.getCellX() || cellLayoutLayoutParams.getTmpCellY() != cellLayoutLayoutParams.getCellY()) {
                    cellLayoutLayoutParams.setTmpCellX(cellLayoutLayoutParams.getCellX());
                    cellLayoutLayoutParams.setTmpCellY(cellLayoutLayoutParams.getCellY());
                    animateChildToPosition(childAt, cellLayoutLayoutParams.getCellX(), cellLayoutLayoutParams.getCellY(), 150, 0, false, false);
                }
            }
            this.mItemPlacementDirty = false;
        }
    }

    public final void setCellDimensions(int i4, int i5) {
        this.mCellWidth = i4;
        this.mFixedCellWidth = i4;
        this.mCellHeight = i5;
        this.mFixedCellHeight = i5;
        this.mShortcutsAndWidgets.setCellDimensions(i4, i5, this.mCountX, this.mCountY, this.mBorderSpace);
    }

    public final void setDragAndDropAccessibilityDelegate(DragAndDropAccessibilityDelegate dragAndDropAccessibilityDelegate) {
        setOnClickListener(dragAndDropAccessibilityDelegate);
        androidx.core.view.J.h(this, dragAndDropAccessibilityDelegate);
        this.mTouchHelper = dragAndDropAccessibilityDelegate;
        int i4 = dragAndDropAccessibilityDelegate != null ? 1 : 2;
        setImportantForAccessibility(i4);
        this.mShortcutsAndWidgets.setImportantForAccessibility(i4);
        setFocusable(dragAndDropAccessibilityDelegate != null);
        if (getParent() != null) {
            getParent().notifySubtreeAccessibilityStateChanged(this, this, 1);
        }
    }

    public final void setDropPending(boolean z4) {
        this.mDropPending = z4;
    }

    public final void setFixedSize(int i4, int i5) {
        this.mFixedWidth = i4;
        this.mFixedHeight = i5;
    }

    public final void setGridSize(int i4, int i5) {
        this.mCountX = i4;
        this.mCountY = i5;
        this.mOccupied = new GridOccupancy(i4, i5);
        this.mTmpOccupied = new GridOccupancy(this.mCountX, this.mCountY);
        this.mShortcutsAndWidgets.setCellDimensions(this.mCellWidth, this.mCellHeight, this.mCountX, this.mCountY, this.mBorderSpace);
        requestLayout();
    }

    public final void setInvertIfRtl() {
        this.mShortcutsAndWidgets.setInvertIfRtl();
    }

    public final void setIsDragOverlapping(boolean z4) {
        if (this.mIsDragOverlapping != z4) {
            this.mIsDragOverlapping = z4;
            this.mBackground.setState(z4 ? BACKGROUND_STATE_ACTIVE : BACKGROUND_STATE_DEFAULT);
            invalidate();
        }
    }

    public final void setOnInterceptTouchListener(View.OnTouchListener onTouchListener) {
        this.mInterceptTouchListener = onTouchListener;
    }

    public final void setScrollProgress(float f4) {
        if (Float.compare(Math.abs(f4), this.mScrollProgress) != 0) {
            this.mScrollProgress = Math.abs(f4);
            updateBgAlpha();
        }
    }

    public final void setSpringLoadedProgress(float f4) {
        if (Float.compare(f4, this.mSpringLoadedProgress) != 0) {
            this.mSpringLoadedProgress = f4;
            updateBgAlpha();
            if (Float.compare(f4, this.mGridAlpha) != 0) {
                this.mGridAlpha = f4;
                invalidate();
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public void updateBgAlpha() {
        ActivityContext activityContext = this.mActivity;
        ActivityTracker activityTracker = Launcher.ACTIVITY_TRACKER;
        if (((Launcher) activityContext).mWorkspace.mLauncher.isInState(LauncherState.EDIT_MODE)) {
            return;
        }
        this.mBackground.setAlpha((int) (this.mSpringLoadedProgress * 255.0f));
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mBackground;
    }

    public final void visualizeDropLocation(int i4, int i5, int i6, int i7, DropTarget.DragObject dragObject) {
        int[] iArr = this.mDragCell;
        if (iArr[0] == i4 && iArr[1] == i5) {
            int[] iArr2 = this.mDragCellSpan;
            if (iArr2[0] == i6 && iArr2[1] == i7) {
                return;
            }
        }
        iArr[0] = i4;
        iArr[1] = i5;
        int[] iArr3 = this.mDragCellSpan;
        iArr3[0] = i6;
        iArr3[1] = i7;
        View contentView = dragObject.dragView.getContentView();
        if (contentView instanceof LauncherAppWidgetHostView) {
            ActivityContext activityContext = this.mActivity;
            ActivityTracker activityTracker = Launcher.ACTIVITY_TRACKER;
            ((Launcher) activityContext).mWorkspace.getIdForScreen(this);
            cellToRect(iArr[0], iArr[1], i6, i7, this.mTempRect);
            ((LauncherAppWidgetHostView) contentView).handleDrag();
        }
        int i8 = this.mDragOutlineCurrent;
        this.mDragOutlineAnims[i8].animateOut();
        CellLayoutLayoutParams[] cellLayoutLayoutParamsArr = this.mDragOutlines;
        int length = (i8 + 1) % cellLayoutLayoutParamsArr.length;
        this.mDragOutlineCurrent = length;
        CellLayoutLayoutParams cellLayoutLayoutParams = cellLayoutLayoutParamsArr[length];
        cellLayoutLayoutParams.setCellX(i4);
        cellLayoutLayoutParams.setCellY(i5);
        cellLayoutLayoutParams.cellHSpan = i6;
        cellLayoutLayoutParams.cellVSpan = i7;
        this.mDragOutlineAnims[this.mDragOutlineCurrent].animateIn();
        invalidate();
        DragViewStateAnnouncer dragViewStateAnnouncer = dragObject.stateAnnouncer;
        if (dragViewStateAnnouncer != null) {
            dragViewStateAnnouncer.announce(getItemMoveDescription(i4, i5));
        }
    }

    public CellLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new CellLayoutLayoutParams(layoutParams);
    }

    public CellLayout(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mDropPending = false;
        this.mTmpPoint = new int[2];
        this.mTempLocation = new int[2];
        new PointF();
        this.mDelegatedCellDrawings = new ArrayList();
        PreviewBackground previewBackground = new PreviewBackground();
        this.mFolderLeaveBehind = previewBackground;
        this.mFixedWidth = -1;
        this.mFixedHeight = -1;
        this.mIsDragOverlapping = false;
        this.mDragOutlines = new CellLayoutLayoutParams[4];
        this.mDragOutlineAlphas = new float[4];
        this.mDragOutlineAnims = new InterruptibleInOutAnimator[4];
        this.mDragOutlineCurrent = 0;
        this.mDragOutlinePaint = new Paint();
        this.mReorderAnimators = new ArrayMap();
        this.mShakeAnimators = new ArrayMap();
        this.mItemPlacementDirty = false;
        this.mVisualizeDropLocation = true;
        this.mVisualizeGridRect = new RectF();
        this.mVisualizeGridPaint = new Paint();
        this.mGridAlpha = 0.0f;
        this.mGridColor = 0;
        this.mSpringLoadedProgress = 0.0f;
        this.mScrollProgress = 0.0f;
        this.mDragCell = r6;
        this.mDragCellSpan = r7;
        this.mDragging = false;
        this.mIntersectingViews = new ArrayList();
        this.mOccupiedRect = new Rect();
        this.mDirectionVector = new int[2];
        this.mPreviousSolution = null;
        this.mTempRect = new Rect();
        new RectF();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CellLayout, i4, 0);
        this.mContainerType = obtainStyledAttributes.getInteger(0, 0);
        obtainStyledAttributes.recycle();
        setWillNotDraw(false);
        setClipToPadding(false);
        setClipChildren(false);
        ActivityContext activityContext = (ActivityContext) ActivityContext.lookupContext(context);
        this.mActivity = activityContext;
        DeviceProfile deviceProfile = activityContext.getDeviceProfile();
        resetCellSizeInternal(deviceProfile);
        InvariantDeviceProfile invariantDeviceProfile = deviceProfile.inv;
        int i5 = invariantDeviceProfile.numColumns;
        this.mCountX = i5;
        int i6 = invariantDeviceProfile.numRows;
        this.mCountY = i6;
        this.mOccupied = new GridOccupancy(i5, i6);
        this.mTmpOccupied = new GridOccupancy(this.mCountX, this.mCountY);
        previewBackground.mDelegateCellX = -1;
        previewBackground.mDelegateCellY = -1;
        setAlwaysDrawnWithCacheEnabled(false);
        Resources resources = getResources();
        Drawable drawable = getContext().getDrawable(R.drawable.bg_celllayout);
        this.mBackground = drawable;
        drawable.setCallback(this);
        drawable.setAlpha(0);
        this.mGridColor = GraphicsUtils.getAttrColor(R.attr.workspaceAccentColor, getContext());
        this.mGridVisualizationRoundingRadius = resources.getDimensionPixelSize(R.dimen.grid_visualization_rounding_radius);
        this.mReorderPreviewAnimationMagnitude = deviceProfile.iconSizePx * 0.12f;
        this.mEaseOutInterpolator = y0.e.f12930D;
        int[] iArr = {-1, -1};
        int[] iArr2 = {-1, -1};
        int i7 = 0;
        while (true) {
            CellLayoutLayoutParams[] cellLayoutLayoutParamsArr = this.mDragOutlines;
            if (i7 >= cellLayoutLayoutParamsArr.length) {
                break;
            }
            cellLayoutLayoutParamsArr[i7] = new CellLayoutLayoutParams(0, 0, 0, 0);
            i7++;
        }
        this.mDragOutlinePaint.setColor(GraphicsUtils.getAttrColor(R.attr.workspaceTextColor, context));
        int integer = resources.getInteger(R.integer.config_dragOutlineFadeTime);
        float integer2 = resources.getInteger(R.integer.config_dragOutlineMaxAlpha);
        Arrays.fill(this.mDragOutlineAlphas, 0.0f);
        for (final int i8 = 0; i8 < this.mDragOutlineAnims.length; i8++) {
            InterruptibleInOutAnimator interruptibleInOutAnimator = new InterruptibleInOutAnimator(integer2, integer);
            interruptibleInOutAnimator.getAnimator().setInterpolator(this.mEaseOutInterpolator);
            interruptibleInOutAnimator.getAnimator().addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.CellLayout.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.mDragOutlineAlphas[i8] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    this.invalidate();
                }
            });
            this.mDragOutlineAnims[i8] = interruptibleInOutAnimator;
        }
        ShortcutAndWidgetContainer shortcutAndWidgetContainer = new ShortcutAndWidgetContainer(this.mContainerType, context);
        this.mShortcutsAndWidgets = shortcutAndWidgetContainer;
        shortcutAndWidgetContainer.setCellDimensions(this.mCellWidth, this.mCellHeight, this.mCountX, this.mCountY, this.mBorderSpace);
        addView(shortcutAndWidgetContainer);
    }

    private void findNearestArea(int i4, int i5, int i6, int i7, int[] iArr, boolean[][] zArr, boolean[][] zArr2, int[] iArr2) {
        int i8;
        int[] iArr3 = iArr2 != null ? iArr2 : new int[2];
        int i9 = this.mCountX;
        int i10 = this.mCountY;
        int i11 = Integer.MIN_VALUE;
        float f4 = Float.MAX_VALUE;
        for (int i12 = 0; i12 < i10 - (i7 - 1); i12++) {
            for (int i13 = 0; i13 < i9 - (i6 - 1); i13++) {
                int i14 = 0;
                while (true) {
                    if (i14 < i6) {
                        while (i8 < i7) {
                            i8 = (zArr[i13 + i14][i12 + i8] && (zArr2 == null || zArr2[i14][i8])) ? 0 : i8 + 1;
                        }
                        i14++;
                    } else {
                        int i15 = i13 - i4;
                        int i16 = i12 - i5;
                        int i17 = i11;
                        float hypot = (float) Math.hypot(i15, i16);
                        int[] iArr4 = this.mTmpPoint;
                        computeDirectionVector(i15, i16, iArr4);
                        int i18 = (iArr[1] * iArr4[1]) + (iArr[0] * iArr4[0]);
                        if (Float.compare(hypot, f4) >= 0) {
                            if (Float.compare(hypot, f4) == 0) {
                                i11 = i17;
                                if (i18 <= i11) {
                                }
                            } else {
                                i11 = i17;
                            }
                        }
                        iArr3[0] = i13;
                        iArr3[1] = i12;
                        i11 = i18;
                        f4 = hypot;
                    }
                }
            }
        }
        if (f4 == Float.MAX_VALUE) {
            iArr3[0] = -1;
            iArr3[1] = -1;
        }
    }
}
