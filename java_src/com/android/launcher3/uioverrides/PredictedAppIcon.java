package com.android.launcher3.uioverrides;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.android.launcher3.C0347k;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.celllayout.CellLayoutLayoutParams;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.icons.IconNormalizer;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.DoubleShadowBubbleTextView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.SysUiStatsLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class PredictedAppIcon extends DoubleShadowBubbleTextView {
    private static final FloatProperty SLOT_MACHINE_TRANSLATION_Y = new FloatProperty() { // from class: com.android.launcher3.uioverrides.PredictedAppIcon.1
        @Override // android.util.Property
        public final Float get(Object obj) {
            return Float.valueOf(((PredictedAppIcon) obj).mSlotMachineIconTranslationY);
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f4) {
            PredictedAppIcon predictedAppIcon = (PredictedAppIcon) obj;
            predictedAppIcon.mSlotMachineIconTranslationY = f4;
            predictedAppIcon.invalidate();
        }
    };

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f5227d = 0;
    private final DeviceProfile mDeviceProfile;
    boolean mDrawForDrag;
    private final Paint mIconRingPaint;
    boolean mIsDrawingDot;
    private boolean mIsPinned;
    private final int mNormalizedIconSize;
    private int mPlateColor;
    private final Path mRingPath;
    private final BlurMaskFilter mShadowFilter;
    private final Path mShapePath;
    private Animator mSlotMachineAnim;
    private float mSlotMachineIconTranslationY;
    private List mSlotMachineIcons;
    private final Matrix mTmpMatrix;

    /* loaded from: classes.dex */
    public final class PredictedIconOutlineDrawing extends CellLayout.DelegatedCellDrawing {
        private final PredictedAppIcon mIcon;
        private final Paint mOutlinePaint;

        public PredictedIconOutlineDrawing(int i4, int i5, PredictedAppIcon predictedAppIcon) {
            Paint paint = new Paint(1);
            this.mOutlinePaint = paint;
            this.mDelegateCellX = i4;
            this.mDelegateCellY = i5;
            this.mIcon = predictedAppIcon;
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(Color.argb(24, (int) SysUiStatsLog.NOTIFICATION_PANEL_REPORTED, (int) SysUiStatsLog.NOTIFICATION_PANEL_REPORTED, (int) SysUiStatsLog.NOTIFICATION_PANEL_REPORTED));
        }

        @Override // com.android.launcher3.CellLayout.DelegatedCellDrawing
        public final void drawOverItem() {
        }

        @Override // com.android.launcher3.CellLayout.DelegatedCellDrawing
        public final void drawUnderItem(Canvas canvas) {
            canvas.save();
            PredictedAppIcon predictedAppIcon = this.mIcon;
            canvas.translate(PredictedAppIcon.u(predictedAppIcon), predictedAppIcon.getOutlineOffsetY());
            canvas.drawPath(predictedAppIcon.mShapePath, this.mOutlinePaint);
            canvas.restore();
        }
    }

    public PredictedAppIcon(Context context) {
        this(context, null, 0);
    }

    public static PredictedAppIcon createIcon(CellLayout cellLayout, WorkspaceItemInfo workspaceItemInfo) {
        PredictedAppIcon predictedAppIcon = (PredictedAppIcon) LayoutInflater.from(cellLayout.getContext()).inflate(R.layout.predicted_app_icon, (ViewGroup) cellLayout, false);
        predictedAppIcon.applyFromWorkspaceItem(0, workspaceItemInfo, false);
        Launcher launcher = Launcher.getLauncher(cellLayout.getContext());
        predictedAppIcon.setOnClickListener(launcher.getItemOnClickListener());
        predictedAppIcon.setOnFocusChangeListener(launcher.getFocusHandler());
        return predictedAppIcon;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getOutlineOffsetY() {
        return this.mDisplay != 5 ? getPaddingTop() + this.mDeviceProfile.folderIconOffsetYPx : (getMeasuredHeight() - this.mNormalizedIconSize) / 2;
    }

    public static /* synthetic */ void o(PredictedAppIcon predictedAppIcon) {
        predictedAppIcon.mSlotMachineIcons = null;
        predictedAppIcon.mSlotMachineAnim = null;
        predictedAppIcon.mSlotMachineIconTranslationY = 0.0f;
        predictedAppIcon.invalidate();
    }

    public static /* synthetic */ void q(PredictedAppIcon predictedAppIcon, ValueAnimator valueAnimator) {
        predictedAppIcon.getClass();
        predictedAppIcon.mPlateColor = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        predictedAppIcon.invalidate();
    }

    public static int u(PredictedAppIcon predictedAppIcon) {
        return (predictedAppIcon.getMeasuredWidth() - predictedAppIcon.mNormalizedIconSize) / 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateRingPath() {
        /*
            r4 = this;
            java.lang.Object r0 = r4.getTag()
            boolean r0 = r0 instanceof com.android.launcher3.model.data.WorkspaceItemInfo
            if (r0 == 0) goto L21
            java.lang.Object r0 = r4.getTag()
            com.android.launcher3.model.data.WorkspaceItemInfo r0 = (com.android.launcher3.model.data.WorkspaceItemInfo) r0
            android.os.UserHandle r1 = android.os.Process.myUserHandle()
            android.os.UserHandle r2 = r0.user
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L1f
            int r0 = r0.itemType
            r1 = 6
            if (r0 != r1) goto L21
        L1f:
            r0 = 1
            goto L22
        L21:
            r0 = 0
        L22:
            android.graphics.Path r1 = r4.mRingPath
            r1.reset()
            android.graphics.Matrix r1 = r4.mTmpMatrix
            int r2 = r4.getMeasuredWidth()
            int r3 = r4.mNormalizedIconSize
            int r2 = r2 - r3
            int r2 = r2 / 2
            float r2 = (float) r2
            int r3 = r4.getOutlineOffsetY()
            float r3 = (float) r3
            r1.setTranslate(r2, r3)
            android.graphics.Path r1 = r4.mRingPath
            android.graphics.Path r2 = r4.mShapePath
            android.graphics.Matrix r3 = r4.mTmpMatrix
            r1.addPath(r2, r3)
            if (r0 == 0) goto L81
            int r0 = r4.mNormalizedIconSize
            float r0 = (float) r0
            r1 = 1036160860(0x3dc28f5c, float:0.095)
            float r0 = r0 * r1
            int r1 = r4.getIconSize()
            float r1 = (float) r1
            r2 = 1062165545(0x3f4f5c29, float:0.81)
            float r1 = r1 * r2
            int r1 = (int) r1
            int r2 = com.android.launcher3.icons.BaseIconFactory.f4655d
            r2 = 1055085560(0x3ee353f8, float:0.444)
            float r1 = (float) r1
            float r1 = r1 * r2
            int r1 = (int) r1
            float r1 = (float) r1
            float r1 = r1 + r0
            int r0 = r4.mNormalizedIconSize
            float r0 = (float) r0
            float r1 = r1 / r0
            android.graphics.Matrix r2 = r4.mTmpMatrix
            r2.postTranslate(r0, r0)
            android.graphics.Matrix r0 = r4.mTmpMatrix
            r0.preScale(r1, r1)
            android.graphics.Matrix r0 = r4.mTmpMatrix
            int r1 = r4.mNormalizedIconSize
            int r1 = -r1
            float r1 = (float) r1
            r0.preTranslate(r1, r1)
            android.graphics.Path r0 = r4.mRingPath
            android.graphics.Path r1 = r4.mShapePath
            android.graphics.Matrix r4 = r4.mTmpMatrix
            r0.addPath(r1, r4)
        L81:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.uioverrides.PredictedAppIcon.updateRingPath():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    @Override // com.android.launcher3.BubbleTextView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void applyFromWorkspaceItem(int r8, com.android.launcher3.model.data.WorkspaceItemInfo r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.uioverrides.PredictedAppIcon.applyFromWorkspaceItem(int, com.android.launcher3.model.data.WorkspaceItemInfo, boolean):void");
    }

    @Override // com.android.launcher3.BubbleTextView
    public final void drawDotIfNecessary(Canvas canvas) {
        this.mIsDrawingDot = true;
        int save = canvas.save();
        canvas.translate((-getWidth()) * 0.095f, (-getHeight()) * 0.095f);
        canvas.scale(1.19f, 1.19f);
        super.drawDotIfNecessary(canvas);
        canvas.restoreToCount(save);
        this.mIsDrawingDot = false;
    }

    @Override // com.android.launcher3.BubbleTextView
    public final void getIconBounds(Rect rect) {
        super.getIconBounds(rect);
        if (this.mIsPinned || this.mIsDrawingDot) {
            return;
        }
        int iconSize = (int) (getIconSize() * 0.095f);
        rect.inset(iconSize, iconSize);
    }

    @Override // com.android.launcher3.BubbleTextView, com.android.launcher3.dragndrop.DraggableView
    public final void getSourceVisualDragBounds(Rect rect) {
        super.getSourceVisualDragBounds(rect);
        if (this.mIsPinned) {
            return;
        }
        int width = (int) (rect.width() * 0.095f);
        rect.inset(width, width);
    }

    public final boolean isPinned() {
        return this.mIsPinned;
    }

    @Override // com.android.launcher3.views.DoubleShadowBubbleTextView, com.android.launcher3.BubbleTextView, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        int save = canvas.save();
        boolean z4 = this.mSlotMachineAnim != null;
        if (!this.mIsPinned) {
            if (!this.mDrawForDrag) {
                this.mIconRingPaint.setColor(-1728053248);
                this.mIconRingPaint.setMaskFilter(this.mShadowFilter);
                canvas.drawPath(this.mRingPath, this.mIconRingPaint);
                this.mIconRingPaint.setColor(this.mPlateColor);
                this.mIconRingPaint.setMaskFilter(null);
                canvas.drawPath(this.mRingPath, this.mIconRingPaint);
            }
            if (z4) {
                canvas.clipPath(this.mRingPath);
            }
            canvas.translate(getWidth() * 0.095f, getHeight() * 0.095f);
            canvas.scale(0.81f, 0.81f);
        }
        if (z4) {
            canvas.translate((getWidth() - getIconSize()) / 2.0f, ((getHeight() - getIconSize()) / 2.0f) + this.mSlotMachineIconTranslationY);
            Iterator it = ((ArrayList) this.mSlotMachineIcons).iterator();
            while (it.hasNext()) {
                Drawable drawable = (Drawable) it.next();
                drawable.setBounds(0, 0, getIconSize(), getIconSize());
                drawable.draw(canvas);
                canvas.translate(0.0f, getIconSize() + getOutlineOffsetY());
            }
        } else {
            super.onDraw(canvas);
        }
        canvas.restoreToCount(save);
    }

    @Override // com.android.launcher3.BubbleTextView, android.view.View
    public final void onSizeChanged(int i4, int i5, int i6, int i7) {
        super.onSizeChanged(i4, i5, i6, i7);
        updateRingPath();
    }

    public final void pin(WorkspaceItemInfo workspaceItemInfo) {
        if (this.mIsPinned) {
            return;
        }
        this.mIsPinned = true;
        applyFromWorkspaceItem(0, workspaceItemInfo, false);
        setOnLongClickListener(ItemLongClickListener.INSTANCE_WORKSPACE);
        ((CellLayoutLayoutParams) getLayoutParams()).canReorder = true;
        invalidate();
    }

    @Override // com.android.launcher3.BubbleTextView, com.android.launcher3.dragndrop.DraggableView
    public final SafeCloseable prepareDrawDragView() {
        this.mDrawForDrag = true;
        invalidate();
        final C0347k c0347k = (C0347k) super.prepareDrawDragView();
        return new SafeCloseable() { // from class: com.android.launcher3.uioverrides.b
            @Override // java.lang.AutoCloseable
            public final void close() {
                PredictedAppIcon predictedAppIcon = PredictedAppIcon.this;
                SafeCloseable safeCloseable = c0347k;
                int i4 = PredictedAppIcon.f5227d;
                predictedAppIcon.getClass();
                safeCloseable.close();
                predictedAppIcon.mDrawForDrag = false;
            }
        };
    }

    @Override // com.android.launcher3.BubbleTextView
    public final void setIconDisabled(boolean z4) {
        super.setIconDisabled(z4);
        this.mIconRingPaint.setColorFilter(z4 ? FastBitmapDrawable.getDisabledColorFilter() : null);
        invalidate();
    }

    @Override // com.android.launcher3.BubbleTextView
    public final void setItemInfo(ItemInfoWithIcon itemInfoWithIcon) {
        setTag(itemInfoWithIcon);
        setIconDisabled(itemInfoWithIcon.isDisabled());
    }

    @Override // android.view.View
    public final void setTag(Object obj) {
        super.setTag(obj);
        updateRingPath();
    }

    public PredictedAppIcon(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PredictedAppIcon(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mIsDrawingDot = false;
        this.mIconRingPaint = new Paint(1);
        this.mRingPath = new Path();
        this.mTmpMatrix = new Matrix();
        this.mIsPinned = false;
        this.mDrawForDrag = false;
        this.mDeviceProfile = ((ActivityContext) ActivityContext.lookupContext(context)).getDeviceProfile();
        int normalizedCircleSize = IconNormalizer.getNormalizedCircleSize(getIconSize());
        this.mNormalizedIconSize = normalizedCircleSize;
        this.mShadowFilter = new BlurMaskFilter(context.getResources().getDimensionPixelSize(R.dimen.blur_size_thin_outline), BlurMaskFilter.Blur.OUTER);
        this.mShapePath = GraphicsUtils.getShapePath(normalizedCircleSize, context);
    }
}
