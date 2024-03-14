package com.android.launcher3.appprediction;

import B.c;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import com.android.launcher3.allapps.FloatingHeaderRow;
import com.android.launcher3.allapps.FloatingHeaderView;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.launcher3.util.Themes;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class AppsDividerView extends View implements FloatingHeaderRow {
    private Layout mAllAppsLabelLayout;
    private final int mAllAppsLabelTextColor;
    private final int[] mDividerSize;
    private DividerType mDividerType;
    private boolean mIsScrolledOut;
    private final TextPaint mPaint;
    private FloatingHeaderView mParent;
    private FloatingHeaderRow[] mRows;
    private boolean mShowAllAppsLabel;
    private final int mStrokeColor;
    private boolean mTabsHidden;

    /* loaded from: classes.dex */
    public enum DividerType {
        NONE,
        LINE,
        ALL_APPS_LABEL
    }

    public AppsDividerView(Context context) {
        this(context, null);
    }

    private Layout getAllAppsLabelLayout() {
        if (this.mAllAppsLabelLayout == null) {
            this.mPaint.setAntiAlias(true);
            this.mPaint.setTypeface(Typeface.create("google-sans", 0));
            this.mPaint.setTextSize(getResources().getDimensionPixelSize(R.dimen.all_apps_label_text_size));
            CharSequence text = getResources().getText(R.string.all_apps_label);
            int length = text.length();
            TextPaint textPaint = this.mPaint;
            this.mAllAppsLabelLayout = StaticLayout.Builder.obtain(text, 0, length, textPaint, Math.round(textPaint.measureText(text.toString()))).setAlignment(Layout.Alignment.ALIGN_CENTER).setMaxLines(1).setIncludePad(true).build();
        }
        return this.mAllAppsLabelLayout;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateDividerType() {
        /*
            r8 = this;
            boolean r0 = r8.mTabsHidden
            com.android.launcher3.appprediction.AppsDividerView$DividerType r1 = com.android.launcher3.appprediction.AppsDividerView.DividerType.NONE
            r2 = 1
            r3 = 0
            if (r0 != 0) goto L9
            goto L2e
        L9:
            com.android.launcher3.allapps.FloatingHeaderRow[] r0 = r8.mRows
            int r4 = r0.length
            r5 = r3
            r6 = r5
        Le:
            if (r5 >= r4) goto L20
            r7 = r0[r5]
            if (r7 != r8) goto L15
            goto L20
        L15:
            boolean r7 = r7.shouldDraw()
            if (r7 == 0) goto L1d
            int r6 = r6 + 1
        L1d:
            int r5 = r5 + 1
            goto Le
        L20:
            boolean r0 = r8.mShowAllAppsLabel
            if (r0 == 0) goto L29
            if (r6 <= 0) goto L29
            com.android.launcher3.appprediction.AppsDividerView$DividerType r0 = com.android.launcher3.appprediction.AppsDividerView.DividerType.ALL_APPS_LABEL
            goto L2f
        L29:
            if (r6 != r2) goto L2e
            com.android.launcher3.appprediction.AppsDividerView$DividerType r0 = com.android.launcher3.appprediction.AppsDividerView.DividerType.LINE
            goto L2f
        L2e:
            r0 = r1
        L2f:
            com.android.launcher3.appprediction.AppsDividerView$DividerType r4 = r8.mDividerType
            if (r4 == r0) goto La2
            r8.mDividerType = r0
            int r0 = r0.ordinal()
            if (r0 == r2) goto L68
            r2 = 2
            if (r0 == r2) goto L41
            r0 = r3
            r2 = r0
            goto L7b
        L41:
            android.text.Layout r0 = r8.getAllAppsLabelLayout()
            int r0 = r0.getHeight()
            android.content.res.Resources r2 = r8.getResources()
            r4 = 2131165320(0x7f070088, float:1.7944854E38)
            int r2 = r2.getDimensionPixelSize(r4)
            int r2 = r2 + r0
            android.content.res.Resources r0 = r8.getResources()
            r4 = 2131165318(0x7f070086, float:1.794485E38)
            int r0 = r0.getDimensionPixelSize(r4)
            android.text.TextPaint r4 = r8.mPaint
            int r5 = r8.mAllAppsLabelTextColor
            r4.setColor(r5)
            goto L7b
        L68:
            android.content.res.Resources r0 = r8.getResources()
            r2 = 2131165323(0x7f07008b, float:1.794486E38)
            int r0 = r0.getDimensionPixelSize(r2)
            android.text.TextPaint r2 = r8.mPaint
            int r4 = r8.mStrokeColor
            r2.setColor(r4)
            r2 = r3
        L7b:
            int r4 = r8.getPaddingLeft()
            int r5 = r8.getPaddingRight()
            r8.setPadding(r4, r2, r5, r0)
            com.android.launcher3.appprediction.AppsDividerView$DividerType r0 = r8.mDividerType
            if (r0 != r1) goto L8d
            r3 = 8
            goto L92
        L8d:
            boolean r0 = r8.mIsScrolledOut
            if (r0 == 0) goto L92
            r3 = 4
        L92:
            r8.setVisibility(r3)
            r8.invalidate()
            r8.requestLayout()
            com.android.launcher3.allapps.FloatingHeaderView r8 = r8.mParent
            if (r8 == 0) goto La2
            r8.onHeightUpdated()
        La2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.appprediction.AppsDividerView.updateDividerType():void");
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public final int getExpectedHeight() {
        return getPaddingBottom() + getPaddingTop();
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public final View getFocusedChild() {
        return null;
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public final Class getTypeClass() {
        return AppsDividerView.class;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public final boolean hasVisibleContent() {
        return false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int width;
        int height;
        int[] iArr;
        int i4;
        DividerType dividerType = this.mDividerType;
        if (dividerType == DividerType.LINE) {
            int width2 = (getWidth() - this.mDividerSize[0]) / 2;
            int height2 = getHeight() - (getPaddingBottom() / 2);
            float f4 = this.mDividerSize[1];
            canvas.drawRoundRect(width2, height2, width2 + iArr[0], height2 + i4, f4, f4, this.mPaint);
        } else if (dividerType == DividerType.ALL_APPS_LABEL) {
            Layout allAppsLabelLayout = getAllAppsLabelLayout();
            canvas.translate((getWidth() / 2) - (allAppsLabelLayout.getWidth() / 2), (getHeight() - getPaddingBottom()) - allAppsLabelLayout.getHeight());
            allAppsLabelLayout.draw(canvas);
            canvas.translate(-width, -height);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i4, int i5) {
        setMeasuredDimension(View.getDefaultSize(getSuggestedMinimumWidth(), i4), getPaddingTop() + getPaddingBottom());
    }

    public final void setShowAllAppsLabel(boolean z4) {
        if (z4 != this.mShowAllAppsLabel) {
            this.mShowAllAppsLabel = z4;
            updateDividerType();
        }
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public final void setVerticalScroll(int i4, boolean z4) {
        setTranslationY(i4);
        this.mIsScrolledOut = z4;
        setVisibility(this.mDividerType == DividerType.NONE ? 8 : z4 ? 4 : 0);
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public final void setup(FloatingHeaderView floatingHeaderView, FloatingHeaderRow[] floatingHeaderRowArr, boolean z4) {
        this.mParent = floatingHeaderView;
        this.mTabsHidden = z4;
        this.mRows = floatingHeaderRowArr;
        updateDividerType();
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public final boolean shouldDraw() {
        return this.mDividerType != DividerType.NONE;
    }

    public AppsDividerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppsDividerView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mPaint = new TextPaint();
        this.mDividerType = DividerType.NONE;
        this.mRows = FloatingHeaderRow.NO_ROWS;
        boolean z4 = false;
        this.mIsScrolledOut = false;
        boolean attrBoolean = Themes.getAttrBoolean(R.attr.isMainColorDark, context);
        this.mDividerSize = new int[]{getResources().getDimensionPixelSize(R.dimen.all_apps_divider_width), getResources().getDimensionPixelSize(R.dimen.all_apps_divider_height)};
        int i5 = attrBoolean ? R.color.all_apps_prediction_row_separator_dark : R.color.all_apps_prediction_row_separator;
        Object obj = c.f105a;
        this.mStrokeColor = context.getColor(i5);
        this.mAllAppsLabelTextColor = context.getColor(attrBoolean ? R.color.all_apps_label_text_dark : R.color.all_apps_label_text);
        OnboardingPrefs onboardingPrefs = ((ActivityContext) ActivityContext.lookupContext(getContext())).getOnboardingPrefs();
        this.mShowAllAppsLabel = (onboardingPrefs == null || !onboardingPrefs.hasReachedMaxCount(OnboardingPrefs.ALL_APPS_VISITED_COUNT)) ? true : true;
    }
}
