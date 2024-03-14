package com.android.launcher3.widget.picker;

import android.content.Context;
import android.graphics.Outline;
import android.os.Process;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.android.launcher3.Launcher;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.widget.model.WidgetsListHeaderEntry;
import com.android.launcher3.widget.picker.WidgetsFullSheet;
import com.android.systemui.shared.R;
import java.util.List;
/* loaded from: classes.dex */
public class WidgetsTwoPaneSheet extends WidgetsFullSheet {
    private int mActivePage;
    private LinearLayout mRightPane;
    private ScrollView mRightPaneScrollView;
    private LinearLayout mSuggestedWidgetsContainer;
    private WidgetsListHeader mSuggestedWidgetsHeader;
    private final ViewOutlineProvider mViewOutlineProviderRightPane;
    private WidgetsListTableViewHolderBinder mWidgetsListTableViewHolderBinder;

    /* renamed from: com.android.launcher3.widget.picker.WidgetsTwoPaneSheet$3 */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 implements HeaderChangeListener {
        public AnonymousClass3() {
            WidgetsTwoPaneSheet.this = r1;
        }
    }

    /* loaded from: classes.dex */
    public interface HeaderChangeListener {
    }

    public WidgetsTwoPaneSheet(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mActivePage = -1;
        this.mViewOutlineProviderRightPane = new ViewOutlineProvider() { // from class: com.android.launcher3.widget.picker.WidgetsTwoPaneSheet.1
            {
                WidgetsTwoPaneSheet.this = this;
            }

            @Override // android.view.ViewOutlineProvider
            public final void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight() - WidgetsTwoPaneSheet.this.getResources().getDimensionPixelSize(R.dimen.widget_list_horizontal_margin_two_pane), view.getResources().getDimensionPixelSize(R.dimen.widget_list_top_bottom_corner_radius));
            }
        };
    }

    public static /* synthetic */ void m(WidgetsTwoPaneSheet widgetsTwoPaneSheet) {
        widgetsTwoPaneSheet.mSuggestedWidgetsHeader.setExpanded(true);
        widgetsTwoPaneSheet.resetExpandedHeaders();
        widgetsTwoPaneSheet.mRightPane.removeAllViews();
        widgetsTwoPaneSheet.mRightPane.addView(widgetsTwoPaneSheet.mRecommendedWidgetsTable);
        widgetsTwoPaneSheet.mRightPaneScrollView.setScrollY(0);
    }

    @Override // com.android.launcher3.widget.picker.WidgetsFullSheet
    public final View getContentView() {
        return this.mRightPane;
    }

    @Override // com.android.launcher3.widget.picker.WidgetsFullSheet
    public final float getMaxTableHeight(float f4) {
        return Float.MAX_VALUE;
    }

    @Override // com.android.launcher3.widget.picker.WidgetsFullSheet, com.android.launcher3.workprofile.PersonalWorkSlidingTabStrip.OnActivePageChangedListener
    public final void onActivePageChanged(int i4) {
        super.onActivePageChanged(i4);
        if (this.mActivePage == i4) {
            return;
        }
        this.mActivePage = i4;
        WidgetsListHeader widgetsListHeader = this.mSuggestedWidgetsHeader;
        if (widgetsListHeader == null) {
            ((WidgetsFullSheet.AdapterHolder) this.mAdapters.get(i4)).mWidgetsListAdapter.selectFirstHeaderEntry();
            ((WidgetsFullSheet.AdapterHolder) this.mAdapters.get(i4)).mWidgetsRecyclerView.scrollToTop();
        } else if (i4 == 0 || i4 == 1) {
            widgetsListHeader.callOnClick();
        }
    }

    @Override // com.android.launcher3.widget.picker.WidgetsFullSheet, com.android.launcher3.popup.PopupDataProvider.PopupDataChangeListener
    public final void onRecommendedWidgetsBound() {
        super.onRecommendedWidgetsBound();
        if (this.mSuggestedWidgetsContainer == null && this.mHasRecommendedWidgets) {
            LayoutInflater from = LayoutInflater.from(getContext());
            LinearLayout linearLayout = (LinearLayout) this.mSearchScrollView.findViewById(R.id.suggestions_header);
            this.mSuggestedWidgetsContainer = linearLayout;
            WidgetsListHeader widgetsListHeader = (WidgetsListHeader) from.inflate(R.layout.widgets_list_row_header_two_pane, (ViewGroup) linearLayout, false);
            this.mSuggestedWidgetsHeader = widgetsListHeader;
            widgetsListHeader.setExpanded(true);
            PackageItemInfo packageItemInfo = new PackageItemInfo(Process.myUserHandle()) { // from class: com.android.launcher3.widget.picker.WidgetsTwoPaneSheet.2
                @Override // com.android.launcher3.model.data.ItemInfoWithIcon
                public final boolean usingLowResIcon() {
                    return false;
                }
            };
            packageItemInfo.title = getContext().getString(R.string.suggested_widgets_header_title);
            this.mSuggestedWidgetsHeader.applyFromItemInfoWithIcon(WidgetsListHeaderEntry.create(packageItemInfo, getContext().getString(R.string.suggested_widgets_header_title), ((Launcher) this.mActivityContext).getPopupDataProvider().getRecommendedWidgets()).withWidgetListShown());
            this.mSuggestedWidgetsHeader.setIcon(getContext().getDrawable(R.drawable.widget_suggestions_icon));
            this.mSuggestedWidgetsHeader.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.widget.picker.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WidgetsTwoPaneSheet.m(WidgetsTwoPaneSheet.this);
                }
            });
            this.mSuggestedWidgetsContainer.addView(this.mSuggestedWidgetsHeader);
            this.mSuggestedWidgetsHeader.callOnClick();
        }
    }

    @Override // com.android.launcher3.widget.picker.WidgetsFullSheet, com.android.launcher3.widget.picker.search.SearchModeListener
    public final void onSearchResults(List list) {
        super.onSearchResults(list);
        ((WidgetsFullSheet.AdapterHolder) this.mAdapters.get(2)).mWidgetsListAdapter.selectFirstHeaderEntry();
        ((WidgetsFullSheet.AdapterHolder) this.mAdapters.get(2)).mWidgetsRecyclerView.scrollToTop();
    }

    @Override // com.android.launcher3.widget.picker.WidgetsFullSheet
    public final void setViewVisibilityBasedOnSearch(boolean z4) {
        LinearLayout linearLayout;
        super.setViewVisibilityBasedOnSearch(z4);
        if (this.mSuggestedWidgetsHeader == null || (linearLayout = this.mSuggestedWidgetsContainer) == null) {
            if (z4) {
                return;
            }
            ((WidgetsFullSheet.AdapterHolder) this.mAdapters.get(this.mActivePage)).mWidgetsListAdapter.selectFirstHeaderEntry();
        } else if (z4) {
            linearLayout.setVisibility(8);
        } else {
            linearLayout.setVisibility(0);
            this.mSuggestedWidgetsHeader.callOnClick();
        }
    }

    @Override // com.android.launcher3.widget.picker.WidgetsFullSheet
    public final void setupSheet() {
        ((WidgetsFullSheet.AdapterHolder) this.mAdapters.get(0)).mWidgetsListAdapter.setHeaderChangeListener(new AnonymousClass3());
        ((WidgetsFullSheet.AdapterHolder) this.mAdapters.get(1)).mWidgetsListAdapter.setHeaderChangeListener(new AnonymousClass3());
        ((WidgetsFullSheet.AdapterHolder) this.mAdapters.get(2)).mWidgetsListAdapter.setHeaderChangeListener(new AnonymousClass3());
        LayoutInflater from = LayoutInflater.from(getContext());
        from.inflate(this.mHasWorkProfile ? R.layout.widgets_two_pane_sheet_paged_view : R.layout.widgets_two_pane_sheet_recyclerview, (ViewGroup) findViewById(R.id.recycler_view_container), true);
        setupViews();
        this.mWidgetsListTableViewHolderBinder = new WidgetsListTableViewHolderBinder(this.mActivityContext, from, this, this);
        WidgetsRecommendationTableLayout widgetsRecommendationTableLayout = (WidgetsRecommendationTableLayout) this.mContent.findViewById(R.id.recommended_widget_table);
        this.mRecommendedWidgetsTable = widgetsRecommendationTableLayout;
        widgetsRecommendationTableLayout.setWidgetCellLongClickListener(this);
        this.mRecommendedWidgetsTable.setWidgetCellOnClickListener(this);
        this.mHeaderTitle = (TextView) this.mContent.findViewById(R.id.title);
        LinearLayout linearLayout = (LinearLayout) this.mContent.findViewById(R.id.right_pane);
        this.mRightPane = linearLayout;
        linearLayout.setOutlineProvider(this.mViewOutlineProviderRightPane);
        ScrollView scrollView = (ScrollView) this.mContent.findViewById(R.id.right_pane_scroll_view);
        this.mRightPaneScrollView = scrollView;
        scrollView.setOverScrollMode(2);
        onRecommendedWidgetsBound();
        onWidgetsBound();
        setUpEducationViewsIfNeeded();
        this.mFastScroller.setVisibility(8);
    }

    @Override // com.android.launcher3.widget.picker.WidgetsFullSheet
    public final boolean shouldScroll(MotionEvent motionEvent) {
        return getPopupContainer().isEventOverView(this.mRightPaneScrollView, motionEvent) ? this.mRightPaneScrollView.canScrollVertically(-1) : super.shouldScroll(motionEvent);
    }

    @Override // com.android.launcher3.widget.picker.WidgetsFullSheet
    public final void updateRecyclerViewVisibility(WidgetsFullSheet.AdapterHolder adapterHolder) {
        this.mRightPane.setVisibility(adapterHolder.mWidgetsListAdapter.getItemCount() > 1 ? 0 : 8);
        super.updateRecyclerViewVisibility(adapterHolder);
    }

    public WidgetsTwoPaneSheet(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mActivePage = -1;
        this.mViewOutlineProviderRightPane = new ViewOutlineProvider() { // from class: com.android.launcher3.widget.picker.WidgetsTwoPaneSheet.1
            {
                WidgetsTwoPaneSheet.this = this;
            }

            @Override // android.view.ViewOutlineProvider
            public final void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight() - WidgetsTwoPaneSheet.this.getResources().getDimensionPixelSize(R.dimen.widget_list_horizontal_margin_two_pane), view.getResources().getDimensionPixelSize(R.dimen.widget_list_top_bottom_corner_radius));
            }
        };
    }
}
