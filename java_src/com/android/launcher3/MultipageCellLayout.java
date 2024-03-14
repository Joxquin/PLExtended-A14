package com.android.launcher3;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.android.launcher3.CellLayout;
import com.android.launcher3.celllayout.CellLayoutLayoutParams;
import com.android.launcher3.celllayout.MulticellReorderAlgorithm;
import com.android.launcher3.celllayout.ReorderAlgorithm;
import com.android.launcher3.util.CellAndSpan;
import com.android.launcher3.util.GridOccupancy;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.systemui.shared.R;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public class MultipageCellLayout extends CellLayout {
    private final Drawable mLeftBackground;
    private final Drawable mRightBackground;
    private boolean mSeamWasAdded;

    public MultipageCellLayout(Context context) {
        this(context, null);
    }

    public static /* synthetic */ Integer b(MultipageCellLayout multipageCellLayout, int i4, int i5, int i6, int i7, View view, int[] iArr) {
        super.getDirectionVectorForDrop(i4, i5, i6, i7, view, iArr);
        return 0;
    }

    @Override // com.android.launcher3.CellLayout
    public final void copyCurrentStateToSolution(CellLayout.ItemConfiguration itemConfiguration) {
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i4);
            CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) childAt.getLayoutParams();
            itemConfiguration.add(childAt, new CellAndSpan(cellLayoutLayoutParams.getCellX() + ((cellLayoutLayoutParams.getCellX() < this.mCountX / 2 || !cellLayoutLayoutParams.canReorder) ? 0 : 1), cellLayoutLayoutParams.getCellY(), cellLayoutLayoutParams.cellHSpan, cellLayoutLayoutParams.cellVSpan));
        }
    }

    @Override // com.android.launcher3.CellLayout
    public final boolean createAreaForResize(int i4, final int i5, final int i6, final int i7, View view, final int[] iArr, final boolean z4) {
        int i8 = i4;
        if (i8 >= this.mCountX / 2) {
            i8++;
        }
        final int i9 = i8;
        final LauncherAppWidgetHostView launcherAppWidgetHostView = (LauncherAppWidgetHostView) view;
        return ((Boolean) new MulticellReorderAlgorithm(this).simulateSeam(new Supplier() { // from class: com.android.launcher3.t0
            @Override // java.util.function.Supplier
            public final Object get() {
                Boolean valueOf;
                valueOf = Boolean.valueOf(super/*com.android.launcher3.CellLayout*/.createAreaForResize(i9, i5, i6, i7, launcherAppWidgetHostView, iArr, z4));
                return valueOf;
            }
        })).booleanValue();
    }

    @Override // com.android.launcher3.CellLayout
    public final ReorderAlgorithm createReorderAlgorithm() {
        return new MulticellReorderAlgorithm(this);
    }

    @Override // com.android.launcher3.CellLayout
    public final int[] findNearestArea(final int i4, final int i5, final int i6, final int i7, final int i8, final int i9, final boolean z4, final int[] iArr, final int[] iArr2) {
        return (int[]) new MulticellReorderAlgorithm(this).simulateSeam(new Supplier() { // from class: com.android.launcher3.u0
            @Override // java.util.function.Supplier
            public final Object get() {
                int[] findNearestArea;
                findNearestArea = super/*com.android.launcher3.CellLayout*/.findNearestArea(i4, i5, i6, i7, i8, i9, z4, iArr, iArr2);
                return findNearestArea;
            }
        });
    }

    @Override // com.android.launcher3.CellLayout
    public final void getDirectionVectorForDrop(int i4, int i5, int i6, int i7, View view, int[] iArr) {
        new MulticellReorderAlgorithm(this).simulateSeam(new C0414s0(this, i4, i5, i6, i7, view, iArr, 0));
    }

    @Override // com.android.launcher3.CellLayout
    public final int getUnusedHorizontalSpace() {
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        int i4 = this.mCountX;
        return (int) Math.ceil(((measuredWidth - (this.mCellWidth * i4)) - ((i4 - 1) * this.mBorderSpace.x)) / 2.0f);
    }

    @Override // com.android.launcher3.CellLayout
    public final boolean isNearestDropLocationOccupied(int i4, int i5, int i6, int i7, View view, int[] iArr) {
        return ((Boolean) new MulticellReorderAlgorithm(this).simulateSeam(new C0414s0(this, i4, i5, i6, i7, view, iArr, 1))).booleanValue();
    }

    public final boolean isSeamWasAdded() {
        return this.mSeamWasAdded;
    }

    @Override // com.android.launcher3.CellLayout, android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.mLeftBackground.getAlpha() > 0) {
            this.mLeftBackground.setState(this.mBackground.getState());
            this.mLeftBackground.draw(canvas);
        }
        if (this.mRightBackground.getAlpha() > 0) {
            this.mRightBackground.setState(this.mBackground.getState());
            this.mRightBackground.draw(canvas);
        }
        super.onDraw(canvas);
    }

    @Override // com.android.launcher3.CellLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        Rect bounds = this.mBackground.getBounds();
        this.mLeftBackground.setBounds(bounds.left, bounds.top, (bounds.right / 2) - 20, bounds.bottom);
        Drawable drawable = this.mRightBackground;
        int i8 = bounds.right;
        drawable.setBounds((i8 / 2) + 20, bounds.top, i8, bounds.bottom);
    }

    @Override // com.android.launcher3.CellLayout
    public final int[] performReorder(int i4, int i5, int i6, int i7, int i8, int i9, View view, int[] iArr, int[] iArr2, int i10) {
        int i11 = i4;
        if (i11 >= getWidth() / 2) {
            i11 += this.mCellWidth;
        }
        return super.performReorder(i11, i5, i6, i7, i8, i9, view, iArr, iArr2, i10);
    }

    public final void setCountX(int i4) {
        this.mCountX = i4;
    }

    public final void setOccupied(GridOccupancy gridOccupancy) {
        this.mOccupied = gridOccupancy;
    }

    public final void setSeamWasAdded(boolean z4) {
        this.mSeamWasAdded = z4;
    }

    @Override // com.android.launcher3.CellLayout
    public final void updateBgAlpha() {
        this.mLeftBackground.setAlpha((int) (this.mSpringLoadedProgress * 255.0f));
        this.mRightBackground.setAlpha((int) (this.mSpringLoadedProgress * 255.0f));
    }

    public MultipageCellLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MultipageCellLayout(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mSeamWasAdded = false;
        Drawable drawable = getContext().getDrawable(R.drawable.bg_celllayout);
        this.mLeftBackground = drawable;
        drawable.setCallback(this);
        drawable.setAlpha(0);
        Drawable drawable2 = getContext().getDrawable(R.drawable.bg_celllayout);
        this.mRightBackground = drawable2;
        drawable2.setCallback(this);
        drawable2.setAlpha(0);
        InvariantDeviceProfile invariantDeviceProfile = this.mActivity.getDeviceProfile().inv;
        int i5 = invariantDeviceProfile.numColumns * 2;
        this.mCountX = i5;
        int i6 = invariantDeviceProfile.numRows;
        this.mCountY = i6;
        setGridSize(i5, i6);
    }
}
