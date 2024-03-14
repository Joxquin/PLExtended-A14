package com.android.launcher3.allapps.search;

import android.content.Context;
import android.graphics.Rect;
import android.text.Selection;
import android.text.SpannableStringBuilder;
import android.text.method.TextKeyListener;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.Insettable;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.allapps.SearchUiManager;
import com.android.launcher3.search.SearchCallback;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class AppsSearchContainerLayout extends ExtendedEditText implements SearchUiManager, SearchCallback, AllAppsStore.OnUpdateListener, Insettable {
    private ActivityAllAppsContainerView mAppsView;
    private final int mContentOverlap;
    private final ActivityContext mLauncher;
    private final AllAppsSearchBarController mSearchBarController;
    private final SpannableStringBuilder mSearchQueryBuilder;

    public AppsSearchContainerLayout(Context context) {
        this(context, null);
    }

    @Override // com.android.launcher3.search.SearchCallback
    public final void clearSearchResult() {
        this.mSearchQueryBuilder.clear();
        this.mSearchQueryBuilder.clearSpans();
        Selection.setSelection(this.mSearchQueryBuilder, 0);
        this.mAppsView.onClearSearchResult();
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public final ExtendedEditText getEditText() {
        return this;
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public final void initializeSearch(ActivityAllAppsContainerView activityAllAppsContainerView) {
        this.mAppsView = activityAllAppsContainerView;
        this.mSearchBarController.initialize(new DefaultAppSearchAlgorithm(getContext()), this, this.mLauncher, this);
    }

    @Override // com.android.launcher3.allapps.AllAppsStore.OnUpdateListener
    public final void onAppsUpdated() {
        this.mSearchBarController.refreshSearchResult();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mAppsView.getAppsStore().addUpdateListener(this);
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mAppsView.getAppsStore().removeUpdateListener(this);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        View view = (View) getParent();
        setTranslationX((((((view.getWidth() - view.getPaddingLeft()) - view.getPaddingRight()) - (i6 - i4)) / 2) + view.getPaddingLeft()) - i4);
        offsetTopAndBottom(this.mContentOverlap);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i4, int i5) {
        DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        int size = (View.MeasureSpec.getSize(i4) - this.mAppsView.getActiveRecyclerView().getPaddingLeft()) - this.mAppsView.getActiveRecyclerView().getPaddingRight();
        int i6 = deviceProfile.cellLayoutBorderSpacePx.x;
        int i7 = deviceProfile.numShownHotseatIcons;
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(getPaddingRight() + getPaddingLeft() + (size - (((size - ((i7 - 1) * i6)) / i7) - Math.round(deviceProfile.iconSizePx * 0.92f))), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), i5);
    }

    @Override // com.android.launcher3.search.SearchCallback
    public final void onSearchResult(String str, ArrayList arrayList) {
        if (arrayList != null) {
            this.mAppsView.setSearchResults(arrayList);
        }
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public final void preDispatchKeyEvent(KeyEvent keyEvent) {
        if (this.mSearchBarController.mInput.isFocused() || keyEvent.getAction() != 0) {
            return;
        }
        int unicodeChar = keyEvent.getUnicodeChar();
        if (((unicodeChar <= 0 || Character.isWhitespace(unicodeChar) || Character.isSpaceChar(unicodeChar)) ? false : true) && TextKeyListener.getInstance().onKeyDown(this, this.mSearchQueryBuilder, keyEvent.getKeyCode(), keyEvent) && this.mSearchQueryBuilder.length() > 0) {
            this.mSearchBarController.mInput.showKeyboard(true);
        }
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public final void resetSearch() {
        AllAppsSearchBarController allAppsSearchBarController = this.mSearchBarController;
        allAppsSearchBarController.mCallback.clearSearchResult();
        allAppsSearchBarController.mInput.reset();
        allAppsSearchBarController.mQuery = null;
        allAppsSearchBarController.mInput.removeOnFocusChangeListener(allAppsSearchBarController);
    }

    @Override // com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
        ((ViewGroup.MarginLayoutParams) getLayoutParams()).topMargin = rect.top;
        requestLayout();
    }

    public AppsSearchContainerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppsSearchContainerLayout(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mLauncher = (ActivityContext) ActivityContext.lookupContext(context);
        this.mSearchBarController = new AllAppsSearchBarController();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        this.mSearchQueryBuilder = spannableStringBuilder;
        Selection.setSelection(spannableStringBuilder, 0);
        setHint(Utilities.prefixTextWithIcon(getContext(), R.drawable.ic_allapps_search, getHint()));
        this.mContentOverlap = getResources().getDimensionPixelSize(R.dimen.all_apps_search_bar_content_overlap);
    }
}
