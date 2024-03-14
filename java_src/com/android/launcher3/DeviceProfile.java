package com.android.launcher3;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.util.TypedValue;
import com.android.launcher3.icons.DotRenderer;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.responsive.CalculatedAllAppsSpec;
import com.android.launcher3.responsive.CalculatedFolderSpec;
import com.android.launcher3.responsive.CalculatedHotseatSpec;
import com.android.launcher3.responsive.CalculatedWorkspaceSpec;
import com.android.launcher3.testing.shared.ResourceUtils;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.IconSizeSteps;
import com.android.launcher3.util.WindowBounds;
import com.android.systemui.shared.R;
import java.io.PrintWriter;
import java.util.Locale;
import java.util.function.Consumer;
import t.C1395a;
/* loaded from: classes.dex */
public final class DeviceProfile {
    public Point allAppsBorderSpacePx;
    public int allAppsCellHeightPx;
    public int allAppsCellWidthPx;
    public int allAppsCloseDuration;
    public int allAppsIconDrawablePaddingPx;
    public int allAppsIconSizePx;
    public float allAppsIconTextSizePx;
    public int allAppsLeftRightMargin;
    public int allAppsLeftRightPadding;
    public int allAppsOpenDuration;
    public int allAppsShiftRange;
    public int allAppsTopPadding;
    public final boolean areNavButtonsInline;
    public final float aspectRatio;
    public final int availableHeightPx;
    public final int availableWidthPx;
    public int bottomSheetCloseDuration;
    public float bottomSheetDepth;
    public int bottomSheetOpenDuration;
    public int bottomSheetTopPadding;
    public float bottomSheetWorkspaceScale;
    public int cellHeightPx;
    public Point cellLayoutBorderSpacePx;
    public Rect cellLayoutPaddingPx;
    public float cellScaleToFit;
    public int cellWidthPx;
    public int cellYPaddingPx = -1;
    public final int desiredWorkspaceHorizontalMarginOriginalPx;
    public int desiredWorkspaceHorizontalMarginPx;
    public int dropTargetBarBottomMarginPx;
    public int dropTargetBarSizePx;
    public int dropTargetBarTopMarginPx;
    public int dropTargetDragPaddingPx;
    public int dropTargetGapPx;
    public int dropTargetHorizontalPaddingPx;
    public int dropTargetTextSizePx;
    public int dropTargetVerticalPaddingPx;
    public final int edgeMarginPx;
    private final int extraSpace;
    public int flingToDeleteThresholdVelocity;
    public int folderCellHeightPx;
    public Point folderCellLayoutBorderSpacePx;
    public int folderCellWidthPx;
    public int folderChildDrawablePaddingPx;
    public int folderChildIconSizePx;
    public int folderChildTextSizePx;
    public int folderContentPaddingLeftRight;
    public int folderContentPaddingTop;
    public int folderFooterHeightPx;
    public int folderIconOffsetYPx;
    public int folderIconSizePx;
    public float folderLabelTextScale;
    public int folderLabelTextSizePx;
    public int gridVisualizationPaddingX;
    public int gridVisualizationPaddingY;
    public final int heightPx;
    public int hotseatBarBottomSpacePx;
    public int hotseatBarEndOffset;
    public final int hotseatBarSidePaddingEndPx;
    public final int hotseatBarSidePaddingStartPx;
    public int hotseatBarSizePx;
    public int hotseatBorderSpace;
    public int hotseatCellHeightPx;
    public final int hotseatQsbHeight;
    private final int hotseatQsbShadowHeight;
    public int hotseatQsbSpace;
    public final int hotseatQsbVisualHeight;
    public int hotseatQsbWidth;
    public boolean iconCenterVertically;
    public int iconDrawablePaddingPx;
    public float iconScale;
    public int iconSizePx;
    public int iconTextSizePx;
    public final int inlineNavButtonsEndSpacingPx;
    public final InvariantDeviceProfile inv;
    public final boolean isGestureMode;
    public final boolean isLandscape;
    public final boolean isMultiDisplay;
    public final boolean isMultiWindowMode;
    public final boolean isPhone;
    public final boolean isQsbInline;
    public final boolean isTablet;
    public boolean isTaskbarPresent;
    public boolean isTaskbarPresentInApps;
    public final boolean isTransientTaskbar;
    public final boolean isTwoPanels;
    private CalculatedAllAppsSpec mAllAppsResponsiveHeightSpec;
    private CalculatedAllAppsSpec mAllAppsResponsiveWidthSpec;
    public final DotRenderer mDotRendererAllApps;
    public final DotRenderer mDotRendererWorkSpace;
    private final int mIconDrawablePaddingOriginalPx;
    private final IconSizeSteps mIconSizeSteps;
    private final DisplayController.Info mInfo;
    private final Rect mInsets;
    private final boolean mIsResponsiveGrid;
    private final boolean mIsScalableGrid;
    private boolean mIsSeascape;
    private final int mMaxHotseatIconSpacePx;
    private final DisplayMetrics mMetrics;
    private final int mMinHotseatIconSpacePx;
    private final int mMinHotseatQsbWidthPx;
    private CalculatedFolderSpec mResponsiveFolderHeightSpec;
    private CalculatedFolderSpec mResponsiveFolderWidthSpec;
    private CalculatedWorkspaceSpec mResponsiveHeightSpec;
    private CalculatedHotseatSpec mResponsiveHotseatSpec;
    private CalculatedWorkspaceSpec mResponsiveWidthSpec;
    private final int mTypeIndex;
    private final ViewScaleProvider mViewScaleProvider;
    private final int mWorkspacePageIndicatorOverlapWorkspace;
    private int maxEmptySpace;
    public final int numShownAllAppsColumns;
    public int numShownHotseatIcons;
    public final int overviewActionsButtonSpacing;
    public final int overviewActionsHeight;
    public final int overviewActionsTopMarginPx;
    public int overviewGridSideMargin;
    public int overviewPageSpacing;
    public int overviewRowSpacing;
    public int overviewTaskIconDrawableSizeGridPx;
    public int overviewTaskIconDrawableSizePx;
    public int overviewTaskIconSizePx;
    public int overviewTaskMarginPx;
    public int overviewTaskThumbnailTopMarginPx;
    public final int rotationHint;
    public int splitPlaceholderInset;
    public int springLoadedHotseatBarTopMarginPx;
    public final boolean startAlignTaskbar;
    public final int stashedTaskbarHeight;
    public final int taskbarBottomMargin;
    public final int taskbarHeight;
    public final int taskbarIconSize;
    public final boolean transposeLayoutWithOrientation;
    public final Rect widgetPadding;
    public final int widthPx;
    public final int windowX;
    public final int windowY;
    public int workspaceBottomPadding;
    public int workspaceCellPaddingXPx;
    public final float workspaceContentScale;
    public final Rect workspacePadding;
    public final int workspacePageIndicatorHeight;
    public final int workspaceSpringLoadedMinNextPageVisiblePx;
    public int workspaceTopPadding;
    public static final PointF DEFAULT_SCALE = new PointF(1.0f, 1.0f);
    public static final C0410q DEFAULT_PROVIDER = new C0410q();
    public static final r DEFAULT_DIMENSION_PROVIDER = new r();

    /* loaded from: classes.dex */
    public final class Builder {
        private Context mContext;
        private SparseArray mDotRendererCache;
        private DisplayController.Info mInfo;
        private InvariantDeviceProfile mInv;
        private Boolean mIsGestureMode;
        private boolean mIsMultiDisplay;
        private Consumer mOverrideProvider;
        private Boolean mTransposeLayoutWithOrientation;
        private WindowBounds mWindowBounds;
        private boolean mIsMultiWindowMode = false;
        private ViewScaleProvider mViewScaleProvider = null;

        public Builder(Context context, InvariantDeviceProfile invariantDeviceProfile, DisplayController.Info info) {
            this.mContext = context;
            this.mInv = invariantDeviceProfile;
            this.mInfo = info;
        }

        public final DeviceProfile build() {
            WindowBounds windowBounds = this.mWindowBounds;
            if (windowBounds != null) {
                if (this.mTransposeLayoutWithOrientation == null) {
                    this.mTransposeLayoutWithOrientation = Boolean.valueOf(!this.mInfo.isTablet(windowBounds));
                }
                if (this.mIsGestureMode == null) {
                    this.mIsGestureMode = Boolean.valueOf(this.mInfo.navigationMode.hasGestures);
                }
                if (this.mDotRendererCache == null) {
                    this.mDotRendererCache = new SparseArray();
                }
                if (this.mViewScaleProvider == null) {
                    this.mViewScaleProvider = DeviceProfile.DEFAULT_PROVIDER;
                }
                if (this.mOverrideProvider == null) {
                    this.mOverrideProvider = DeviceProfile.DEFAULT_DIMENSION_PROVIDER;
                }
                return new DeviceProfile(this.mContext, this.mInv, this.mInfo, this.mWindowBounds, this.mDotRendererCache, this.mIsMultiWindowMode, this.mTransposeLayoutWithOrientation.booleanValue(), this.mIsMultiDisplay, this.mIsGestureMode.booleanValue(), this.mViewScaleProvider, this.mOverrideProvider);
            }
            throw new IllegalArgumentException("Window bounds not set");
        }

        public final void setDotRendererCache(SparseArray sparseArray) {
            this.mDotRendererCache = sparseArray;
        }

        public final void setGestureMode(boolean z4) {
            this.mIsGestureMode = Boolean.valueOf(z4);
        }

        public final void setIsMultiDisplay(boolean z4) {
            this.mIsMultiDisplay = z4;
        }

        public final void setMultiWindowMode(boolean z4) {
            this.mIsMultiWindowMode = z4;
        }

        public final void setTransposeLayoutWithOrientation() {
            this.mTransposeLayoutWithOrientation = Boolean.FALSE;
        }

        public final void setViewScaleProvider(ViewScaleProvider viewScaleProvider) {
            this.mViewScaleProvider = viewScaleProvider;
        }

        public final void setWindowBounds(WindowBounds windowBounds) {
            this.mWindowBounds = windowBounds;
        }

        public final void withDimensionsOverride(com.android.launcher3.taskbar.N n4) {
            this.mOverrideProvider = n4;
        }
    }

    /* loaded from: classes.dex */
    public interface OnDeviceProfileChangeListener {
        void onDeviceProfileChanged(DeviceProfile deviceProfile);
    }

    @FunctionalInterface
    /* loaded from: classes.dex */
    public interface ViewScaleProvider {
        PointF getScaleFromItemInfo(ItemInfo itemInfo);
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x038f  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x03d5  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x03eb  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0409  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0425  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0428  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0439 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0620  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0628  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0633  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0692  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0694  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x06f8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:218:0x070a  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x070d  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x079a  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x07ab  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x080a  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0811  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x082c  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0888  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0890  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x089c  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x08ac  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x08d1  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x090f  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0927  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x036c  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0371  */
    /* JADX WARN: Type inference failed for: r7v10, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v70 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DeviceProfile(android.content.Context r24, com.android.launcher3.InvariantDeviceProfile r25, com.android.launcher3.util.DisplayController.Info r26, com.android.launcher3.util.WindowBounds r27, android.util.SparseArray r28, boolean r29, boolean r30, boolean r31, boolean r32, com.android.launcher3.DeviceProfile.ViewScaleProvider r33, java.util.function.Consumer r34) {
        /*
            Method dump skipped, instructions count: 2358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.DeviceProfile.<init>(android.content.Context, com.android.launcher3.InvariantDeviceProfile, com.android.launcher3.util.DisplayController$Info, com.android.launcher3.util.WindowBounds, android.util.SparseArray, boolean, boolean, boolean, boolean, com.android.launcher3.DeviceProfile$ViewScaleProvider, java.util.function.Consumer):void");
    }

    private int calculateHotseatBorderSpace(float f4, int i4) {
        int i5 = this.numShownHotseatIcons;
        int i6 = (i5 - 1) + i4;
        if (i6 <= 0) {
            return 0;
        }
        return Math.min(((int) (f4 - (this.iconSizePx * i5))) / i6, this.mMaxHotseatIconSpacePx);
    }

    private int getHotseatBarBottomPadding() {
        int i4;
        int i5;
        if (this.isTaskbarPresent) {
            i4 = this.hotseatBarBottomSpacePx;
            i5 = Math.abs(this.hotseatCellHeightPx - this.iconSizePx) / 2;
        } else {
            i4 = this.hotseatBarSizePx;
            i5 = this.hotseatCellHeightPx;
        }
        return i4 - i5;
    }

    private int getIconToIconWidthForColumns(int i4) {
        return (((i4 - 1) * this.cellLayoutBorderSpacePx.x) + (getCellSize(null).x * i4)) - (getCellSize(null).x - this.iconSizePx);
    }

    private int getNormalizedFolderChildDrawablePaddingPx(int i4) {
        int i5 = this.folderCellHeightPx;
        int i6 = this.folderChildIconSizePx;
        return Math.max(0, (((i5 - i6) - i4) / 3) - ((this.folderChildIconSizePx - Math.round(i6 * 0.92f)) / 2));
    }

    private int getNormalizedIconDrawablePadding() {
        int round = Math.round(this.iconSizePx * 0.92f);
        return Math.max(0, this.mIconDrawablePaddingOriginalPx - ((this.iconSizePx - round) / 2));
    }

    private void hideWorkspaceLabelsIfNotEnoughSpace() {
        float calculateTextHeight = Utilities.calculateTextHeight(this.iconTextSizePx);
        int i4 = getCellSize(null).y;
        int i5 = this.iconSizePx;
        float f4 = ((i4 - i5) - this.iconDrawablePaddingPx) - calculateTextHeight;
        if (!this.mIsResponsiveGrid) {
            if (f4 < calculateTextHeight) {
                this.iconTextSizePx = 0;
                this.iconDrawablePaddingPx = 0;
                this.cellHeightPx = (int) Math.ceil(i5 * 1.125f);
                autoResizeAllAppsCells();
            }
        } else if (f4 < 0.0f) {
            this.iconTextSizePx = 0;
            this.iconDrawablePaddingPx = 0;
            this.cellYPaddingPx = Math.max(0, getCellSize(null).y - ((int) Math.ceil(i5 * 1.125f))) / 2;
            autoResizeAllAppsCells();
        }
    }

    private String pxToDpStr(String str, float f4) {
        StringBuilder sb = new StringBuilder("\t");
        sb.append(str);
        sb.append(": ");
        sb.append(f4);
        sb.append("px (");
        int i4 = this.mMetrics.densityDpi;
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        sb.append(f4 / (i4 / 160.0f));
        sb.append("dp)");
        return sb.toString();
    }

    private void updateFolderCellSize(float f4, Resources resources) {
        int i4;
        InvariantDeviceProfile invariantDeviceProfile = this.inv;
        float[] fArr = invariantDeviceProfile.iconSize;
        int i5 = this.mTypeIndex;
        float f5 = fArr[i5];
        DisplayMetrics displayMetrics = this.mMetrics;
        this.folderChildIconSizePx = Math.max(1, ResourceUtils.pxFromDp(f5, displayMetrics, f4));
        float f6 = invariantDeviceProfile.iconTextSize[i5];
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        this.folderChildTextSizePx = ResourceUtils.roundPxValueFromFloat(TypedValue.applyDimension(2, f6, displayMetrics) * f4);
        this.folderLabelTextSizePx = Math.max(ResourceUtils.roundPxValueFromFloat(TypedValue.applyDimension(2, 16.0f, displayMetrics) * f4), (int) (this.folderChildTextSizePx * this.folderLabelTextScale));
        int calculateTextHeight = Utilities.calculateTextHeight(this.folderChildTextSizePx);
        if (!this.mIsResponsiveGrid) {
            if (!this.mIsScalableGrid) {
                int i6 = this.folderChildIconSizePx;
                this.folderCellWidthPx = (((int) (resources.getDimensionPixelSize(R.dimen.folder_cell_x_padding) * f4)) * 2) + i6;
                this.folderCellHeightPx = (((int) (resources.getDimensionPixelSize(R.dimen.folder_cell_y_padding) * f4)) * 2) + i6 + calculateTextHeight;
                this.folderContentPaddingTop = ResourceUtils.roundPxValueFromFloat(this.folderContentPaddingTop * f4);
                this.folderContentPaddingLeftRight = resources.getDimensionPixelSize(R.dimen.folder_content_padding_left_right);
                this.folderFooterHeightPx = ResourceUtils.roundPxValueFromFloat(resources.getDimensionPixelSize(R.dimen.folder_footer_height_default) * f4);
                this.folderChildDrawablePaddingPx = getNormalizedFolderChildDrawablePaddingPx(calculateTextHeight);
                return;
            }
            if (invariantDeviceProfile.folderStyle == -1) {
                this.folderCellWidthPx = ResourceUtils.roundPxValueFromFloat(getCellSize(null).x * f4);
                this.folderCellHeightPx = ResourceUtils.roundPxValueFromFloat(getCellSize(null).y * f4);
            } else {
                this.folderCellWidthPx = ResourceUtils.roundPxValueFromFloat(this.folderCellWidthPx * f4);
                this.folderCellHeightPx = ResourceUtils.roundPxValueFromFloat(this.folderCellHeightPx * f4);
            }
            this.folderContentPaddingTop = ResourceUtils.roundPxValueFromFloat(this.folderContentPaddingTop * f4);
            this.folderCellLayoutBorderSpacePx = new Point(ResourceUtils.roundPxValueFromFloat(this.folderCellLayoutBorderSpacePx.x * f4), ResourceUtils.roundPxValueFromFloat(this.folderCellLayoutBorderSpacePx.y * f4));
            this.folderFooterHeightPx = ResourceUtils.roundPxValueFromFloat(this.folderFooterHeightPx * f4);
            this.folderContentPaddingLeftRight = this.folderCellLayoutBorderSpacePx.x;
            this.folderChildDrawablePaddingPx = getNormalizedFolderChildDrawablePaddingPx(calculateTextHeight);
            return;
        }
        this.folderCellWidthPx = this.mResponsiveFolderWidthSpec.getCellSizePx();
        this.folderCellHeightPx = this.mResponsiveFolderHeightSpec.getCellSizePx();
        this.folderContentPaddingTop = this.mResponsiveFolderHeightSpec.getStartPaddingPx();
        this.folderFooterHeightPx = this.mResponsiveFolderHeightSpec.getEndPaddingPx();
        this.folderCellLayoutBorderSpacePx = new Point(this.mResponsiveFolderWidthSpec.getGutterPx(), this.mResponsiveFolderHeightSpec.getGutterPx());
        this.folderContentPaddingLeftRight = this.mResponsiveFolderWidthSpec.getStartPaddingPx();
        int i7 = this.folderCellWidthPx;
        int i8 = this.folderChildIconSizePx;
        IconSizeSteps iconSizeSteps = this.mIconSizeSteps;
        if (i7 < i8) {
            this.folderChildIconSizePx = iconSizeSteps.getIconSmallerThan(i7);
        }
        int normalizedFolderChildDrawablePaddingPx = getNormalizedFolderChildDrawablePaddingPx(calculateTextHeight);
        this.folderChildDrawablePaddingPx = normalizedFolderChildDrawablePaddingPx;
        int i9 = this.folderChildIconSizePx + normalizedFolderChildDrawablePaddingPx + calculateTextHeight;
        while (this.folderChildIconSizePx > iconSizeSteps.minimumIconSize() && i9 > (i4 = this.folderCellHeightPx)) {
            int i10 = this.folderChildDrawablePaddingPx - (i9 - i4);
            this.folderChildDrawablePaddingPx = i10;
            if (i10 < 0) {
                this.folderChildIconSizePx = iconSizeSteps.getNextLowerIconSize(this.folderChildIconSizePx);
                this.folderChildDrawablePaddingPx = getNormalizedFolderChildDrawablePaddingPx(calculateTextHeight);
            }
            i9 = this.folderChildIconSizePx + this.folderChildDrawablePaddingPx + calculateTextHeight;
        }
    }

    private void updateHotseatSizes(int i4) {
        this.hotseatCellHeightPx = (int) Math.ceil(i4 * 1.125f);
        if (isVerticalBarLayout()) {
            this.hotseatBarSizePx = i4 + this.hotseatBarSidePaddingStartPx + this.hotseatBarSidePaddingEndPx;
            return;
        }
        boolean z4 = this.isQsbInline;
        int i5 = this.hotseatQsbVisualHeight;
        if (z4) {
            this.hotseatBarSizePx = Math.max(i4, i5) + this.hotseatBarBottomSpacePx;
        } else {
            this.hotseatBarSizePx = i4 + this.hotseatQsbSpace + i5 + this.hotseatBarBottomSpacePx;
        }
    }

    private void updateWorkspacePadding() {
        boolean isVerticalBarLayout = isVerticalBarLayout();
        int i4 = this.edgeMarginPx;
        boolean z4 = this.mIsResponsiveGrid;
        Rect rect = this.workspacePadding;
        if (!isVerticalBarLayout) {
            int i5 = (this.hotseatBarSizePx + this.workspaceBottomPadding) - this.mInsets.bottom;
            if (!z4) {
                i5 += this.workspacePageIndicatorHeight - this.mWorkspacePageIndicatorOverlapWorkspace;
            }
            int i6 = this.workspaceTopPadding;
            if (this.mIsScalableGrid) {
                i4 = 0;
            }
            int i7 = i6 + i4;
            int i8 = this.desiredWorkspaceHorizontalMarginPx;
            rect.set(i8, i7, i8, i5);
        } else if (z4) {
            rect.top = this.mResponsiveHeightSpec.getStartPaddingPx();
            rect.bottom = this.mResponsiveHeightSpec.getEndPaddingPx();
            if (isSeascape()) {
                rect.left = this.mResponsiveWidthSpec.getEndPaddingPx() + this.hotseatBarSizePx;
                rect.right = this.mResponsiveWidthSpec.getStartPaddingPx();
            } else {
                rect.left = this.mResponsiveWidthSpec.getStartPaddingPx();
                rect.right = this.mResponsiveWidthSpec.getEndPaddingPx() + this.hotseatBarSizePx;
            }
        } else {
            rect.top = 0;
            rect.bottom = i4;
            boolean isSeascape = isSeascape();
            int i9 = this.hotseatBarSidePaddingStartPx;
            if (isSeascape) {
                rect.left = this.hotseatBarSizePx;
                rect.right = i9;
            } else {
                rect.left = i9;
                rect.right = this.hotseatBarSizePx;
            }
        }
        Rect rect2 = this.cellLayoutPaddingPx;
        int min = Math.min(rect2.left, rect.left);
        rect2.left = min;
        rect.left -= min;
        int min2 = Math.min(rect2.top, rect.top);
        rect2.top = min2;
        rect.top -= min2;
        int min3 = Math.min(rect2.right, rect.right);
        rect2.right = min3;
        rect.right -= min3;
        int min4 = Math.min(rect2.bottom, rect.bottom);
        rect2.bottom = min4;
        rect.bottom -= min4;
    }

    public final void autoResizeAllAppsCells() {
        int calculateTextHeight = Utilities.calculateTextHeight(this.allAppsIconTextSizePx);
        this.allAppsCellHeightPx = (calculateTextHeight * 2) + this.allAppsIconSizePx + this.allAppsIconDrawablePaddingPx + calculateTextHeight;
    }

    public final void dump(Context context, String str, PrintWriter printWriter) {
        int i4;
        int i5;
        printWriter.println(str + "DeviceProfile:");
        printWriter.println(str + "\t1 dp = " + this.mMetrics.density + " px");
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("\tisTablet:");
        StringBuilder c4 = C0410q.c(C0410q.c(C0410q.c(C0410q.c(C0410q.c(C0410q.c(sb, this.isTablet, printWriter, str, "\tisPhone:"), this.isPhone, printWriter, str, "\ttransposeLayoutWithOrientation:"), this.transposeLayoutWithOrientation, printWriter, str, "\tisGestureMode:"), this.isGestureMode, printWriter, str, "\tisLandscape:"), this.isLandscape, printWriter, str, "\tisMultiWindowMode:"), this.isMultiWindowMode, printWriter, str, "\tisTwoPanels:");
        c4.append(this.isTwoPanels);
        printWriter.println(c4.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        StringBuilder b4 = C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(sb2, pxToDpStr("windowX", this.windowX), printWriter, str), pxToDpStr("windowY", this.windowY), printWriter, str), pxToDpStr("widthPx", this.widthPx), printWriter, str), pxToDpStr("heightPx", this.heightPx), printWriter, str), pxToDpStr("availableWidthPx", this.availableWidthPx), printWriter, str), pxToDpStr("availableHeightPx", this.availableHeightPx), printWriter, str);
        Rect rect = this.mInsets;
        StringBuilder b5 = C0410q.b(C0410q.b(C0410q.b(b4, pxToDpStr("mInsets.left", rect.left), printWriter, str), pxToDpStr("mInsets.top", rect.top), printWriter, str), pxToDpStr("mInsets.right", rect.right), printWriter, str);
        b5.append(pxToDpStr("mInsets.bottom", rect.bottom));
        printWriter.println(b5.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(str);
        sb3.append("\taspectRatio:");
        StringBuilder a4 = C0410q.a(sb3, this.aspectRatio, printWriter, str, "\tisResponsiveGrid:");
        boolean z4 = this.mIsResponsiveGrid;
        StringBuilder c5 = C0410q.c(C0410q.c(a4, z4, printWriter, str, "\tisScalableGrid:"), this.mIsScalableGrid, printWriter, str, "\tinv.numRows: ");
        InvariantDeviceProfile invariantDeviceProfile = this.inv;
        StringBuilder a5 = C0339g.a(C0339g.a(c5, invariantDeviceProfile.numRows, printWriter, str, "\tinv.numColumns: "), invariantDeviceProfile.numColumns, printWriter, str, "\tinv.numSearchContainerColumns: ");
        a5.append(invariantDeviceProfile.numSearchContainerColumns);
        printWriter.println(a5.toString());
        StringBuilder sb4 = new StringBuilder();
        sb4.append(str);
        PointF pointF = invariantDeviceProfile.minCellSize[this.mTypeIndex];
        sb4.append(String.format(Locale.ENGLISH, "\t%s: PointF(%.1f, %.1f)dp", "minCellSize", Float.valueOf(pointF.x), Float.valueOf(pointF.y)));
        printWriter.println(sb4.toString());
        StringBuilder sb5 = new StringBuilder();
        sb5.append(str);
        StringBuilder b6 = C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(sb5, pxToDpStr("cellWidthPx", this.cellWidthPx), printWriter, str), pxToDpStr("cellHeightPx", this.cellHeightPx), printWriter, str), pxToDpStr("getCellSize().x", getCellSize(null).x), printWriter, str), pxToDpStr("getCellSize().y", getCellSize(null).y), printWriter, str), pxToDpStr("cellLayoutBorderSpacePx Horizontal", this.cellLayoutBorderSpacePx.x), printWriter, str), pxToDpStr("cellLayoutBorderSpacePx Vertical", this.cellLayoutBorderSpacePx.y), printWriter, str), pxToDpStr("cellLayoutPaddingPx.left", this.cellLayoutPaddingPx.left), printWriter, str), pxToDpStr("cellLayoutPaddingPx.top", this.cellLayoutPaddingPx.top), printWriter, str), pxToDpStr("cellLayoutPaddingPx.right", this.cellLayoutPaddingPx.right), printWriter, str), pxToDpStr("cellLayoutPaddingPx.bottom", this.cellLayoutPaddingPx.bottom), printWriter, str), pxToDpStr("iconSizePx", this.iconSizePx), printWriter, str), pxToDpStr("iconTextSizePx", this.iconTextSizePx), printWriter, str);
        b6.append(pxToDpStr("iconDrawablePaddingPx", this.iconDrawablePaddingPx));
        printWriter.println(b6.toString());
        StringBuilder sb6 = new StringBuilder();
        sb6.append(str);
        sb6.append("\tinv.numFolderRows: ");
        StringBuilder a6 = C0339g.a(sb6, invariantDeviceProfile.numFolderRows, printWriter, str, "\tinv.numFolderColumns: ");
        a6.append(invariantDeviceProfile.numFolderColumns);
        printWriter.println(a6.toString());
        StringBuilder sb7 = new StringBuilder();
        sb7.append(str);
        StringBuilder b7 = C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(sb7, pxToDpStr("folderCellWidthPx", this.folderCellWidthPx), printWriter, str), pxToDpStr("folderCellHeightPx", this.folderCellHeightPx), printWriter, str), pxToDpStr("folderChildIconSizePx", this.folderChildIconSizePx), printWriter, str), pxToDpStr("folderChildTextSizePx", this.folderChildTextSizePx), printWriter, str), pxToDpStr("folderChildDrawablePaddingPx", this.folderChildDrawablePaddingPx), printWriter, str), pxToDpStr("folderCellLayoutBorderSpacePx.x", this.folderCellLayoutBorderSpacePx.x), printWriter, str), pxToDpStr("folderCellLayoutBorderSpacePx.y", this.folderCellLayoutBorderSpacePx.y), printWriter, str), pxToDpStr("folderContentPaddingLeftRight", this.folderContentPaddingLeftRight), printWriter, str), pxToDpStr("folderTopPadding", this.folderContentPaddingTop), printWriter, str), pxToDpStr("folderFooterHeight", this.folderFooterHeightPx), printWriter, str);
        b7.append(pxToDpStr("bottomSheetTopPadding", this.bottomSheetTopPadding));
        printWriter.println(b7.toString());
        StringBuilder sb8 = new StringBuilder();
        sb8.append(str);
        sb8.append("\tbottomSheetOpenDuration: ");
        StringBuilder a7 = C0410q.a(C0339g.a(C0339g.a(sb8, this.bottomSheetOpenDuration, printWriter, str, "\tbottomSheetCloseDuration: "), this.bottomSheetCloseDuration, printWriter, str, "\tbottomSheetWorkspaceScale: "), this.bottomSheetWorkspaceScale, printWriter, str, "\tbottomSheetDepth: ");
        a7.append(this.bottomSheetDepth);
        printWriter.println(a7.toString());
        StringBuilder sb9 = new StringBuilder();
        sb9.append(str);
        StringBuilder b8 = C0410q.b(sb9, pxToDpStr("allAppsShiftRange", this.allAppsShiftRange), printWriter, str);
        b8.append(pxToDpStr("allAppsTopPadding", this.allAppsTopPadding));
        printWriter.println(b8.toString());
        StringBuilder sb10 = new StringBuilder();
        sb10.append(str);
        sb10.append("\tallAppsOpenDuration: ");
        StringBuilder a8 = C0339g.a(sb10, this.allAppsOpenDuration, printWriter, str, "\tallAppsCloseDuration: ");
        a8.append(this.allAppsCloseDuration);
        printWriter.println(a8.toString());
        StringBuilder sb11 = new StringBuilder();
        sb11.append(str);
        StringBuilder b9 = C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(sb11, pxToDpStr("allAppsIconSizePx", this.allAppsIconSizePx), printWriter, str), pxToDpStr("allAppsIconTextSizePx", this.allAppsIconTextSizePx), printWriter, str), pxToDpStr("allAppsIconDrawablePaddingPx", this.allAppsIconDrawablePaddingPx), printWriter, str), pxToDpStr("allAppsCellHeightPx", this.allAppsCellHeightPx), printWriter, str), pxToDpStr("allAppsCellWidthPx", this.allAppsCellWidthPx), printWriter, str), pxToDpStr("allAppsBorderSpacePxX", this.allAppsBorderSpacePx.x), printWriter, str);
        b9.append(pxToDpStr("allAppsBorderSpacePxY", this.allAppsBorderSpacePx.y));
        printWriter.println(b9.toString());
        printWriter.println(str + "\tnumShownAllAppsColumns: " + this.numShownAllAppsColumns);
        StringBuilder sb12 = new StringBuilder();
        sb12.append(str);
        StringBuilder b10 = C0410q.b(C0410q.b(sb12, pxToDpStr("allAppsLeftRightPadding", (float) this.allAppsLeftRightPadding), printWriter, str), pxToDpStr("allAppsLeftRightMargin", (float) this.allAppsLeftRightMargin), printWriter, str);
        b10.append(pxToDpStr("hotseatBarSizePx", (float) this.hotseatBarSizePx));
        printWriter.println(b10.toString());
        printWriter.println(str + "\tinv.hotseatColumnSpan: " + invariantDeviceProfile.hotseatColumnSpan[i5]);
        StringBuilder sb13 = new StringBuilder();
        sb13.append(str);
        StringBuilder b11 = C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(sb13, pxToDpStr("hotseatCellHeightPx", (float) this.hotseatCellHeightPx), printWriter, str), pxToDpStr("hotseatBarBottomSpacePx", (float) this.hotseatBarBottomSpacePx), printWriter, str), pxToDpStr("hotseatBarSidePaddingStartPx", (float) this.hotseatBarSidePaddingStartPx), printWriter, str), pxToDpStr("hotseatBarSidePaddingEndPx", (float) this.hotseatBarSidePaddingEndPx), printWriter, str), pxToDpStr("hotseatBarEndOffset", (float) this.hotseatBarEndOffset), printWriter, str), pxToDpStr("hotseatQsbSpace", (float) this.hotseatQsbSpace), printWriter, str), pxToDpStr("hotseatQsbHeight", (float) this.hotseatQsbHeight), printWriter, str);
        b11.append(pxToDpStr("springLoadedHotseatBarTopMarginPx", (float) this.springLoadedHotseatBarTopMarginPx));
        printWriter.println(b11.toString());
        Rect hotseatLayoutPadding = getHotseatLayoutPadding(context);
        StringBuilder b12 = C0410q.b(C0410q.b(C0410q.b(C1395a.a(str), pxToDpStr("getHotseatLayoutPadding(context).top", hotseatLayoutPadding.top), printWriter, str), pxToDpStr("getHotseatLayoutPadding(context).bottom", hotseatLayoutPadding.bottom), printWriter, str), pxToDpStr("getHotseatLayoutPadding(context).left", hotseatLayoutPadding.left), printWriter, str);
        b12.append(pxToDpStr("getHotseatLayoutPadding(context).right", hotseatLayoutPadding.right));
        printWriter.println(b12.toString());
        printWriter.println(str + "\tnumShownHotseatIcons: " + this.numShownHotseatIcons);
        StringBuilder sb14 = new StringBuilder();
        sb14.append(str);
        sb14.append(pxToDpStr("hotseatBorderSpace", (float) this.hotseatBorderSpace));
        printWriter.println(sb14.toString());
        printWriter.println(str + "\tisQsbInline: " + this.isQsbInline);
        StringBuilder sb15 = new StringBuilder();
        sb15.append(str);
        sb15.append(pxToDpStr("hotseatQsbWidth", (float) this.hotseatQsbWidth));
        printWriter.println(sb15.toString());
        StringBuilder sb16 = new StringBuilder();
        sb16.append(str);
        sb16.append("\tisTaskbarPresent:");
        StringBuilder c6 = C0410q.c(sb16, this.isTaskbarPresent, printWriter, str, "\tisTaskbarPresentInApps:");
        c6.append(this.isTaskbarPresentInApps);
        printWriter.println(c6.toString());
        StringBuilder sb17 = new StringBuilder();
        sb17.append(str);
        StringBuilder b13 = C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(sb17, pxToDpStr("taskbarHeight", this.taskbarHeight), printWriter, str), pxToDpStr("stashedTaskbarHeight", this.stashedTaskbarHeight), printWriter, str), pxToDpStr("taskbarBottomMargin", this.taskbarBottomMargin), printWriter, str), pxToDpStr("taskbarIconSize", this.taskbarIconSize), printWriter, str), pxToDpStr("desiredWorkspaceHorizontalMarginPx", this.desiredWorkspaceHorizontalMarginPx), printWriter, str);
        Rect rect2 = this.workspacePadding;
        StringBuilder b14 = C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(b13, pxToDpStr("workspacePadding.left", rect2.left), printWriter, str), pxToDpStr("workspacePadding.top", rect2.top), printWriter, str), pxToDpStr("workspacePadding.right", rect2.right), printWriter, str), pxToDpStr("workspacePadding.bottom", rect2.bottom), printWriter, str), pxToDpStr("iconScale", this.iconScale), printWriter, str), pxToDpStr("cellScaleToFit ", this.cellScaleToFit), printWriter, str);
        float f4 = this.extraSpace;
        StringBuilder b15 = C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(C0410q.b(b14, pxToDpStr("extraSpace", f4), printWriter, str), pxToDpStr("unscaled extraSpace", f4 / this.iconScale), printWriter, str), pxToDpStr("maxEmptySpace", this.maxEmptySpace), printWriter, str), pxToDpStr("workspaceTopPadding", this.workspaceTopPadding), printWriter, str), pxToDpStr("workspaceBottomPadding", this.workspaceBottomPadding), printWriter, str), pxToDpStr("overviewTaskMarginPx", this.overviewTaskMarginPx), printWriter, str), pxToDpStr("overviewTaskIconSizePx", this.overviewTaskIconSizePx), printWriter, str), pxToDpStr("overviewTaskIconDrawableSizePx", this.overviewTaskIconDrawableSizePx), printWriter, str), pxToDpStr("overviewTaskIconDrawableSizeGridPx", this.overviewTaskIconDrawableSizeGridPx), printWriter, str), pxToDpStr("overviewTaskThumbnailTopMarginPx", this.overviewTaskThumbnailTopMarginPx), printWriter, str), pxToDpStr("overviewActionsTopMarginPx", this.overviewActionsTopMarginPx), printWriter, str), pxToDpStr("overviewActionsHeight", this.overviewActionsHeight), printWriter, str), pxToDpStr("overviewActionsClaimedSpaceBelow", getOverviewActionsClaimedSpaceBelow()), printWriter, str), pxToDpStr("overviewActionsButtonSpacing", this.overviewActionsButtonSpacing), printWriter, str), pxToDpStr("overviewPageSpacing", this.overviewPageSpacing), printWriter, str), pxToDpStr("overviewRowSpacing", this.overviewRowSpacing), printWriter, str), pxToDpStr("overviewGridSideMargin", this.overviewGridSideMargin), printWriter, str), pxToDpStr("dropTargetBarTopMarginPx", this.dropTargetBarTopMarginPx), printWriter, str), pxToDpStr("dropTargetBarSizePx", this.dropTargetBarSizePx), printWriter, str), pxToDpStr("dropTargetBarBottomMarginPx", this.dropTargetBarBottomMarginPx), printWriter, str), pxToDpStr("getCellLayoutSpringLoadShrunkTop()", getCellLayoutSpringLoadShrunkTop()), printWriter, str), pxToDpStr("getCellLayoutSpringLoadShrunkBottom()", getCellLayoutSpringLoadShrunkBottom(context)), printWriter, str), pxToDpStr("workspaceSpringLoadedMinNextPageVisiblePx", this.workspaceSpringLoadedMinNextPageVisiblePx), printWriter, str), pxToDpStr("getWorkspaceSpringLoadScale()", getWorkspaceSpringLoadScale(context)), printWriter, str), pxToDpStr("getCellLayoutHeight()", i4 - getTotalWorkspacePadding().y), printWriter, str);
        b15.append(pxToDpStr("getCellLayoutWidth()", getCellLayoutWidth()));
        printWriter.println(b15.toString());
        if (z4) {
            StringBuilder a9 = t.j.a(str, "\tmResponsiveHeightSpec:");
            a9.append(this.mResponsiveHeightSpec.toString());
            printWriter.println(a9.toString());
            printWriter.println(str + "\tmResponsiveWidthSpec:" + this.mResponsiveWidthSpec.toString());
            printWriter.println(str + "\tmAllAppsResponsiveHeightSpec:" + this.mAllAppsResponsiveHeightSpec.toString());
            printWriter.println(str + "\tmAllAppsResponsiveWidthSpec:" + this.mAllAppsResponsiveWidthSpec.toString());
            printWriter.println(str + "\tmResponsiveFolderHeightSpec:" + this.mResponsiveFolderHeightSpec);
            printWriter.println(str + "\tmResponsiveFolderWidthSpec:" + this.mResponsiveFolderWidthSpec);
            printWriter.println(str + "\tmResponsiveHotseatSpec:" + this.mResponsiveHotseatSpec);
        }
    }

    public final Rect getAbsoluteOpenFolderBounds() {
        boolean isVerticalBarLayout = isVerticalBarLayout();
        int i4 = this.availableHeightPx;
        int i5 = this.availableWidthPx;
        int i6 = this.edgeMarginPx;
        Rect rect = this.mInsets;
        if (isVerticalBarLayout) {
            int i7 = rect.left;
            int i8 = rect.top;
            return new Rect(this.dropTargetBarSizePx + i7 + i6, i8, ((i7 + i5) - this.hotseatBarSizePx) - i6, i4 + i8);
        }
        int i9 = this.isTaskbarPresent ? this.taskbarHeight : this.hotseatBarSizePx;
        int i10 = rect.left;
        int i11 = rect.top;
        return new Rect(i10 + i6, this.dropTargetBarSizePx + i11 + i6, (i10 + i5) - i6, (((i11 + i4) - i9) - this.workspacePageIndicatorHeight) - i6);
    }

    public final int getAllAppsIconStartMargin() {
        int i4;
        int i5;
        if (isVerticalBarLayout()) {
            Rect rect = this.workspacePadding;
            i5 = rect.left;
            i4 = rect.right;
        } else {
            i4 = this.allAppsLeftRightPadding * 2;
            i5 = this.allAppsLeftRightMargin * 2;
        }
        int i6 = this.availableWidthPx - (i5 + i4);
        int i7 = this.numShownAllAppsColumns;
        return this.allAppsLeftRightPadding + ((((i6 - ((i7 - 1) * 0)) / i7) - Math.round(this.allAppsIconSizePx * 0.92f)) / 2);
    }

    public final PointF getAppWidgetScale(ItemInfo itemInfo) {
        return this.mViewScaleProvider.getScaleFromItemInfo(itemInfo);
    }

    public final float getCellLayoutSpringLoadShrunkBottom(Context context) {
        int i4 = this.hotseatBarSizePx + this.springLoadedHotseatBarTopMarginPx;
        boolean isVerticalBarLayout = isVerticalBarLayout();
        int i5 = this.heightPx;
        if (isVerticalBarLayout) {
            Rect hotseatLayoutPadding = getHotseatLayoutPadding(context);
            int i6 = hotseatLayoutPadding.bottom;
            int i7 = this.hotseatBorderSpace;
            int i8 = this.numShownHotseatIcons;
            i4 = ((((((i5 - hotseatLayoutPadding.top) - i6) - ((i8 - 1) * i7)) / i8) - this.iconSizePx) / 2) + i6;
        }
        return i5 - i4;
    }

    public final float getCellLayoutSpringLoadShrunkTop() {
        return this.mInsets.top + this.dropTargetBarTopMarginPx + this.dropTargetBarSizePx + this.dropTargetBarBottomMarginPx;
    }

    public final int getCellLayoutWidth() {
        return (this.availableWidthPx - getTotalWorkspacePadding().x) / getPanelCount();
    }

    public final Point getCellSize(Point point) {
        if (point == null) {
            point = new Point();
        }
        int cellLayoutWidth = getCellLayoutWidth();
        Rect rect = this.cellLayoutPaddingPx;
        int i4 = cellLayoutWidth - (rect.left + rect.right);
        int i5 = this.cellLayoutBorderSpacePx.x;
        InvariantDeviceProfile invariantDeviceProfile = this.inv;
        int i6 = invariantDeviceProfile.numColumns;
        point.x = (i4 - ((i6 - 1) * i5)) / i6;
        int i7 = this.availableHeightPx - getTotalWorkspacePadding().y;
        Rect rect2 = this.cellLayoutPaddingPx;
        int i8 = this.cellLayoutBorderSpacePx.y;
        int i9 = invariantDeviceProfile.numRows;
        point.y = ((i7 - (rect2.top + rect2.bottom)) - ((i9 - 1) * i8)) / i9;
        return point;
    }

    public final DisplayController.Info getDisplayInfo() {
        return this.mInfo;
    }

    public final Rect getHotseatLayoutPadding(Context context) {
        int i4;
        int i5;
        Rect rect = new Rect();
        boolean isVerticalBarLayout = isVerticalBarLayout();
        Rect rect2 = this.mInsets;
        if (isVerticalBarLayout) {
            float f4 = this.mIsResponsiveGrid ? 0.0f : (this.iconSizePx * 0.125f) / 2.0f;
            int max = Math.max((int) ((rect2.top + this.cellLayoutPaddingPx.top) - f4), 0);
            int max2 = Math.max((int) (rect2.bottom + this.cellLayoutPaddingPx.bottom + f4), 0);
            boolean isSeascape = isSeascape();
            int i6 = this.hotseatBarSidePaddingStartPx;
            int i7 = this.hotseatBarSidePaddingEndPx;
            if (isSeascape) {
                rect.set(rect2.left + i6, max, i7, max2);
            } else {
                rect.set(i7, max, rect2.right + i6, max2);
            }
        } else {
            boolean z4 = this.isTaskbarPresent;
            int i8 = this.availableWidthPx;
            if (z4) {
                int hotseatBarBottomPadding = getHotseatBarBottomPadding();
                int i9 = (this.hotseatBarSizePx - hotseatBarBottomPadding) - this.hotseatCellHeightPx;
                boolean z5 = this.isQsbInline;
                int i10 = z5 ? this.hotseatQsbWidth + this.hotseatBorderSpace : 0;
                int i11 = this.iconSizePx;
                int i12 = this.numShownHotseatIcons;
                int i13 = this.hotseatBorderSpace;
                int i14 = ((i12 - (!this.areNavButtonsInline ? 1 : 0)) * i13) + (i11 * i12) + i10;
                if (this.hotseatBarEndOffset > 0) {
                    i4 = this.inlineNavButtonsEndSpacingPx;
                    i5 = ((i8 - i14) - i4) + i13;
                } else {
                    i4 = (i8 - i14) / 2;
                    i5 = i4;
                }
                int i15 = i4 + (z5 ? this.hotseatQsbWidth + i13 : 0);
                rect.top = i9;
                rect.bottom = hotseatBarBottomPadding;
                if (Utilities.isRtl(context.getResources())) {
                    rect.left = i5;
                    rect.right = i15;
                } else {
                    rect.left = i15;
                    rect.right = i5;
                }
            } else if (this.mIsScalableGrid) {
                int i16 = (i8 - this.hotseatQsbWidth) / 2;
                rect.set(i16, 0, i16, getHotseatBarBottomPadding());
            } else {
                float f5 = this.widthPx;
                int round = Math.round(((f5 / this.inv.numColumns) - (f5 / this.numShownHotseatIcons)) / 2.0f);
                Rect rect3 = this.workspacePadding;
                Rect rect4 = this.cellLayoutPaddingPx;
                rect.set(rect3.left + round + rect4.left + rect2.left, 0, round + rect3.right + rect4.right + rect2.right, getHotseatBarBottomPadding());
            }
        }
        return rect;
    }

    public final Rect getInsets() {
        return this.mInsets;
    }

    public final DeviceProfile getMultiWindowProfile(Context context, WindowBounds windowBounds) {
        Builder builder = toBuilder(context);
        builder.setWindowBounds(windowBounds);
        builder.setMultiWindowMode(true);
        DeviceProfile build = builder.build();
        float f4 = build.getCellSize(null).x / getCellSize(null).x;
        float f5 = build.getCellSize(null).y / getCellSize(null).y;
        if (f4 != 1.0f || f5 != 1.0f) {
            final PointF pointF = new PointF(f4, f5);
            Builder builder2 = build.toBuilder(context);
            builder2.setViewScaleProvider(new ViewScaleProvider() { // from class: com.android.launcher3.s
                @Override // com.android.launcher3.DeviceProfile.ViewScaleProvider
                public final PointF getScaleFromItemInfo(ItemInfo itemInfo) {
                    return pointF;
                }
            });
            build = builder2.build();
        }
        build.hideWorkspaceLabelsIfNotEnoughSpace();
        return build;
    }

    public final int getOverviewActionsClaimedSpaceBelow() {
        return this.isTaskbarPresent ? (this.taskbarBottomMargin * 2) + this.taskbarHeight : this.mInsets.bottom;
    }

    public final int getPanelCount() {
        return this.isTwoPanels ? 2 : 1;
    }

    public final int getQsbOffsetY() {
        boolean z4 = this.isQsbInline;
        int i4 = this.hotseatQsbHeight;
        if (z4) {
            return getHotseatBarBottomPadding() - ((i4 - this.hotseatCellHeightPx) / 2);
        }
        boolean z5 = this.isTaskbarPresent;
        int i5 = this.hotseatQsbShadowHeight;
        return z5 ? (this.hotseatBarSizePx - i4) + i5 : this.hotseatBarBottomSpacePx - i5;
    }

    public final int getTaskbarOffsetY() {
        int i4 = this.iconSizePx;
        return (getHotseatBarBottomPadding() + Math.min((this.hotseatCellHeightPx - i4) / 2, this.gridVisualizationPaddingY)) - ((this.taskbarHeight - i4) / 2);
    }

    public final Point getTotalWorkspacePadding() {
        Rect rect = this.workspacePadding;
        return new Point(rect.left + rect.right, rect.top + rect.bottom);
    }

    public final float getWorkspaceSpringLoadScale(Context context) {
        float min = Math.min((getCellLayoutSpringLoadShrunkBottom(context) - getCellLayoutSpringLoadShrunkTop()) / (this.availableHeightPx - getTotalWorkspacePadding().y), 1.0f);
        int i4 = this.availableWidthPx;
        float f4 = i4 * min;
        float f5 = i4 - (this.workspaceSpringLoadedMinNextPageVisiblePx * 2);
        return f4 > f5 ? min * (f5 / f4) : min;
    }

    public final boolean isSeascape() {
        return isVerticalBarLayout() && this.mIsSeascape;
    }

    public final boolean isVerticalBarLayout() {
        return this.isLandscape && this.transposeLayoutWithOrientation;
    }

    public final void recalculateHotseatWidthAndBorderSpace() {
        int iconToIconWidthForColumns;
        if (this.mIsScalableGrid) {
            InvariantDeviceProfile invariantDeviceProfile = this.inv;
            int[] iArr = invariantDeviceProfile.hotseatColumnSpan;
            int i4 = this.mTypeIndex;
            int calculateHotseatBorderSpace = calculateHotseatBorderSpace(getIconToIconWidthForColumns(iArr[i4]), 0);
            this.hotseatBorderSpace = calculateHotseatBorderSpace;
            boolean z4 = this.isQsbInline;
            if (z4) {
                int iconToIconWidthForColumns2 = getIconToIconWidthForColumns(getPanelCount() * invariantDeviceProfile.numColumns);
                int i5 = this.iconSizePx;
                int i6 = this.numShownHotseatIcons;
                iconToIconWidthForColumns = (iconToIconWidthForColumns2 - (i5 * i6)) - (calculateHotseatBorderSpace * i6);
            } else {
                iconToIconWidthForColumns = getIconToIconWidthForColumns(invariantDeviceProfile.hotseatColumnSpan[i4]);
            }
            this.hotseatQsbWidth = iconToIconWidthForColumns;
            boolean z5 = this.areNavButtonsInline;
            if (z5) {
                int i7 = (this.availableWidthPx - this.inlineNavButtonsEndSpacingPx) - this.hotseatBarEndOffset;
                if (!z4) {
                    iconToIconWidthForColumns = 0;
                }
                int i8 = (z4 ? 1 : 0) + 1;
                int calculateHotseatBorderSpace2 = calculateHotseatBorderSpace(i7 - iconToIconWidthForColumns, i8);
                this.hotseatBorderSpace = calculateHotseatBorderSpace2;
                int i9 = this.mMinHotseatIconSpacePx;
                if (calculateHotseatBorderSpace2 >= i9) {
                    return;
                }
                this.hotseatBorderSpace = i9;
                int i10 = z4 ? this.hotseatQsbWidth + i9 : 0;
                int i11 = this.iconSizePx;
                int i12 = this.numShownHotseatIcons;
                int i13 = ((i12 - (!z5 ? 1 : 0)) * i9) + (i11 * i12) + i10;
                if (z4) {
                    int i14 = this.hotseatQsbWidth - (i13 - i7);
                    this.hotseatQsbWidth = i14;
                    int i15 = this.mMinHotseatQsbWidthPx;
                    if (i14 >= i15) {
                        return;
                    }
                    this.hotseatQsbWidth = i15;
                }
                int i16 = i7 - (z4 ? this.hotseatQsbWidth : 0);
                do {
                    this.numShownHotseatIcons--;
                    int calculateHotseatBorderSpace3 = calculateHotseatBorderSpace(i16, i8);
                    this.hotseatBorderSpace = calculateHotseatBorderSpace3;
                    if (calculateHotseatBorderSpace3 >= i9) {
                        return;
                    }
                } while (this.numShownHotseatIcons > 1);
            }
        }
    }

    public final Builder toBuilder(Context context) {
        WindowBounds windowBounds = new WindowBounds(this.widthPx, this.heightPx, this.availableWidthPx, this.availableHeightPx, this.rotationHint);
        windowBounds.bounds.offsetTo(this.windowX, this.windowY);
        windowBounds.insets.set(this.mInsets);
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(this.iconSizePx, this.mDotRendererWorkSpace);
        sparseArray.put(this.allAppsIconSizePx, this.mDotRendererAllApps);
        Builder builder = new Builder(context, this.inv, this.mInfo);
        builder.setWindowBounds(windowBounds);
        builder.setIsMultiDisplay(this.isMultiDisplay);
        builder.setMultiWindowMode(this.isMultiWindowMode);
        builder.setDotRendererCache(sparseArray);
        builder.setGestureMode(this.isGestureMode);
        return builder;
    }

    public final String toSmallString() {
        return "isTablet:" + this.isTablet + ", isMultiDisplay:" + this.isMultiDisplay + ", widthPx:" + this.widthPx + ", heightPx:" + this.heightPx + ", insets:" + this.mInsets + ", rotationHint:" + this.rotationHint;
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x031b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateIconSize(float r18, android.content.res.Resources r19) {
        /*
            Method dump skipped, instructions count: 882
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.DeviceProfile.updateIconSize(float, android.content.res.Resources):void");
    }

    public final void updateInsets(Rect rect) {
        this.mInsets.set(rect);
    }

    public final boolean updateIsSeascape(Context context) {
        if (isVerticalBarLayout()) {
            boolean z4 = ((DisplayController) DisplayController.INSTANCE.get(context)).getInfo().rotation == 3;
            if (this.mIsSeascape != z4) {
                this.mIsSeascape = z4;
                updateWorkspacePadding();
                return true;
            }
        }
        return false;
    }
}
